import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'api.dart' as api;
import 'state.dart' as st;
import 'strings.dart' as s;

/// Official YouTube IFrame player with the native YouTube UI only —
/// no extra Flutter control layer on top.
class YoutubePlayerWidget extends StatefulWidget {
  const YoutubePlayerWidget({super.key, required this.youtubeId});

  final String youtubeId;

  @override
  State<YoutubePlayerWidget> createState() => _YoutubePlayerWidgetState();
}

class _YoutubePlayerWidgetState extends State<YoutubePlayerWidget> {
  late YoutubePlayerController _controller;
  StreamSubscription<YoutubePlayerValue>? _subscription;
  YoutubeError _error = YoutubeError.none;

  @override
  void initState() {
    super.initState();
    _initController(widget.youtubeId);
  }

  void _initController(String youtubeId) {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: youtubeId,
      autoPlay: false,
      params: const YoutubePlayerParams(
        showControls: false,
        showVideoAnnotations: false,
        strictRelatedVideos: true,
        loop: true,
      ),
    );
    _subscription = _controller.stream.listen((value) {
      if (value.error != YoutubeError.none) {
        api.log(['YouTube player error for', youtubeId, ':', value.error]);
        setState(() => _error = value.error);
      }
      if (value.playerState == PlayerState.playing) {
        st.claimPlayback(_controller, _controller.pauseVideo);
      }
      if (value.playerState == PlayerState.ended) {
        _controller.seekTo(seconds: 0);
        _controller.playVideo();
      }
    });
  }

  @override
  void didUpdateWidget(covariant YoutubePlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.youtubeId != widget.youtubeId) {
      st.releasePlayback(_controller);
      _subscription?.cancel();
      _controller.close();
      _error = YoutubeError.none;
      _initController(widget.youtubeId);
    }
  }

  @override
  void dispose() {
    st.releasePlayback(_controller);
    _subscription?.cancel();
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_error != YoutubeError.none) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${s.youtubeError} ($_error)',
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () =>
                  st.appState.launchUrlString('https://www.youtube.com/watch?v=${widget.youtubeId}'),
              child: const Text(s.openInYoutube),
            ),
          ],
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      child: AspectRatio(
        aspectRatio: 14 / 9,
        child: YoutubePlayer(controller: _controller, aspectRatio: 14 / 9),
      ),
    );
  }
}

/// mp4 player with lazy init: shows a lightweight play placeholder and
/// only creates the network video controller after the user taps it, so
/// expanding a card stays instant and costs no bandwidth.
class ChewieVideoWidget extends StatefulWidget {
  const ChewieVideoWidget({super.key, required this.videoUrl});

  final String videoUrl;

  @override
  State<ChewieVideoWidget> createState() => _ChewieVideoWidgetState();
}

class _ChewieVideoWidgetState extends State<ChewieVideoWidget> {
  bool _activated = false;

  @override
  Widget build(BuildContext context) {
    if (_activated) {
      return _ChewiePlayer(videoUrl: widget.videoUrl);
    }
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Semantics(
        label: s.playVideo,
        button: true,
        child: InkWell(
          onTap: () => setState(() => _activated = true),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Icon(Icons.play_circle_filled, size: 72, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class _ChewiePlayer extends StatefulWidget {
  const _ChewiePlayer({required this.videoUrl});

  final String videoUrl;

  @override
  State<_ChewiePlayer> createState() => _ChewiePlayerState();
}

class _ChewiePlayerState extends State<_ChewiePlayer> {
  VideoPlayerController? _videoController;
  ChewieController? _chewieController;
  VoidCallback? _playListener;
  bool _isLoading = true;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  Future<void> _initPlayer() async {
    try {
      final uri = Uri.parse(widget.videoUrl);
      final ts = DateTime.now().millisecondsSinceEpoch.toString();
      final queryParams = {...uri.queryParameters, 'v': ts};
      final finalUri = uri.replace(queryParameters: queryParams);
      final vc = VideoPlayerController.networkUrl(
        finalUri,
        httpHeaders: const {'User-Agent': 'Mozilla/5.0', 'Accept': '*/*'},
      );
      await vc.initialize();
      await vc.setVolume(0.0);
      await vc.setLooping(true);
      void playListener() {
        if (vc.value.isPlaying) {
          st.claimPlayback(vc, vc.pause);
        }
      }

      vc.addListener(playListener);
      final cc = ChewieController(
        videoPlayerController: vc,
        // autoPlay here is user-initiated: this widget only mounts after
        // the play placeholder is tapped.
        autoPlay: true,
        looping: true,
        aspectRatio: vc.value.aspectRatio,
        showControls: true,
        hideControlsTimer: const Duration(milliseconds: 800),
        errorBuilder: (context, errorMessage) => Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
      if (!mounted) {
        vc.removeListener(playListener);
        vc.dispose();
        cc.dispose();
        return;
      }
      setState(() {
        _videoController = vc;
        _playListener = playListener;
        _chewieController = cc;
        _isLoading = false;
      });
    } catch (e) {
      api.log(['Error initializing video:', e]);
      if (!mounted) return;
      setState(() {
        _hasError = true;
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    final vc = _videoController;
    final cc = _chewieController;
    if (vc != null) {
      st.releasePlayback(vc);
      final listener = _playListener;
      if (listener != null) vc.removeListener(listener);
      vc.dispose();
    }
    cc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_hasError) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            s.videoError,
            style: const TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
    final vc = _videoController;
    final cc = _chewieController;
    if (!_isLoading &&
        cc != null &&
        vc != null &&
        vc.value.isInitialized) {
      return AspectRatio(
        aspectRatio: vc.value.aspectRatio,
        child: Chewie(controller: cc),
      );
    }
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Center(child: CircularProgressIndicator()),
    );
  }
}