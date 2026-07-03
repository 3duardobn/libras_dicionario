// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "../cljd/core.dart" as lcoc_core;
import "package:flutter/foundation.dart" as f_foundation;
import "package:video_player/video_player.dart" as v_video_player;
import "api.dart" as lcold_api;
import "player.dart" as lcold_player;
import "strings.dart" as lcold_strings;
import "package:chewie/chewie.dart" as c_chewie;
import "package:flutter/widgets.dart" as f_widgets;
import "state.dart" as lcold_state;
import "package:youtube_player_flutter/youtube_player_flutter.dart" as y_youtube_player_flutter;
import "../cljd/flutter.dart" as lcoc_flutter;
import "package:flutter/material.dart" as f_material;

// BEGIN chewie-player
dc.dynamic chewie_player(dc.dynamic video_url$1, ){
return lcold_player.managed_chewie_player_M__caaxye$1(video_url$1, null, );
}

// END chewie-player

// BEGIN chewie-video-widget
dc.dynamic chewie_video_widget(dc.dynamic video_url$1, ){
return lcold_player.watch_chewie_video_widget_M__caaxye$1(video_url$1, null, );
}

// END chewie-video-widget

// BEGIN managed_chewie_player_M__caaxye$1
class managed_chewie_player_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final _0;

managed_chewie_player_M__caaxye$1(this._0, key$2, ):super(key: key$2, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.ResourceState(null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9179_$AUTO_$1, ){
final lcoc_flutter.ResourceState doto$7753_$AUTO_$1=(state$9179_$AUTO_$1 as lcoc_flutter.ResourceState);
doto$7753_$AUTO_$1.k=_0;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(10, const lcoc_core.Keyword(null, "chewie-controller", 615100901, ), ));
(fl$1[1]=null);
(fl$1[2]=const lcoc_core.Keyword(null, "has-error", 60956586, ));
(fl$1[3]=false);
(fl$1[4]=const lcoc_core.Keyword(null, "play-listener", 2666530220, ));
(fl$1[5]=null);
(fl$1[6]=const lcoc_core.Keyword(null, "is-loading", 3908007470, ));
(fl$1[7]=true);
(fl$1[8]=const lcoc_core.Keyword(null, "video-controller", 830451199, ));
(fl$1[9]=null);
final lcoc_core.Atom state$1=(lcoc_core.atom.$_invoke$1(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(5, 2147505184, 2147505184, fl$1, ), -1, ), ));
dc.Future<dc.dynamic> init_player$BANG_$1(dc.dynamic url_str$1, ) async {
try {
final dc.Uri uri$1=(dc.Uri.parse((url_str$1 as dc.String), ));
final dc.String ts$1=((dc.DateTime.now()).millisecondsSinceEpoch.toString());
final dc.dynamic coll7096$1=(lcoc_core.into.$_invoke$2(lcoc_core.$_EMPTY_MAP, uri$1.queryParameters, ));
late final dc.dynamic query_params$1;
if((coll7096$1 is lcoc_core.IAssociative$iface)){
query_params$1=((coll7096$1 as lcoc_core.IAssociative$iface).$_assoc$2("v", ts$1, ));
}else{
query_params$1=((lcoc_core.IAssociative.extensions(coll7096$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(coll7096$1, "v", ts$1, ));
}
late final dc.Map<dc.String, dc.dynamic>? $if_$1;
if((null != query_params$1)){
late final dc.Map<dc.String, dc.dynamic> casted$1;
if((query_params$1 is dc.Map<dc.String, dc.dynamic>)){
casted$1=(query_params$1 as dc.Map<dc.String, dc.dynamic>);
}else{
casted$1=((query_params$1 as dc.Map).cast<dc.String, dc.dynamic>());
}
$if_$1=casted$1;
}else{
$if_$1=null;
}
final dc.Uri final_uri$1=(uri$1.replace(queryParameters: $if_$1, ));
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(4, "User-Agent", ));
(fl$2[1]="Mozilla/5.0");
(fl$2[2]="Accept");
(fl$2[3]="*/*");
late final dc.Map<dc.String, dc.String> casted$2;
if((lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 134221824, 134221824, fl$2, ), -1, ) is dc.Map<dc.String, dc.String>)){
casted$2=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 134221824, 134221824, fl$2, ), -1, ) as dc.Map<dc.String, dc.String>);
}else{
casted$2=((lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 134221824, 134221824, fl$2, ), -1, ) as dc.Map).cast<dc.String, dc.String>());
}
final v_video_player.VideoPlayerController vc$1=(v_video_player.VideoPlayerController.networkUrl(final_uri$1, httpHeaders: casted$2, ));
((await (vc$1.initialize())));
((await (vc$1.setVolume(0.0, ))));
dc.dynamic play_listener$1(){
if(vc$1.value.isPlaying){
return lcold_state.claim_playback$BANG_(vc$1, (){
return (vc$1.pause());
}, );
}
return null;
}
final c_chewie.ChewieController cc$1=c_chewie.ChewieController(videoPlayerController: vc$1, autoPlay: true, looping: true, aspectRatio: vc$1.value.aspectRatio, showControls: true, errorBuilder: (dc.dynamic ctx$1, dc.dynamic err_msg$1, ){
return f_material.Center(child: f_material.Text((err_msg$1 as dc.String), style: const f_material.TextStyle(color: f_material.Colors.white, ), ), );
}, );
(vc$1.addListener(play_listener$1, ));
return (lcoc_core.swap$BANG_.$_invoke_more$10(state$1, lcoc_core.assoc, const lcoc_core.Keyword(null, "video-controller", 830451199, ), vc$1, const lcoc_core.Keyword(null, "play-listener", 2666530220, ), play_listener$1, const lcoc_core.Keyword(null, "chewie-controller", 615100901, ), cc$1, const lcoc_core.Keyword(null, "is-loading", 3908007470, ), [false, ], ));
} on dc.Exception catch (e$1) {
(lcold_api.log.$_invoke$2("Error initializing video:", e$1, ));
return (lcoc_core.swap$BANG_.$_invoke$6(state$1, lcoc_core.assoc, const lcoc_core.Keyword(null, "has-error", 60956586, ), true, const lcoc_core.Keyword(null, "is-loading", 3908007470, ), false, ));
}
}
(init_player$BANG_$1(_0, ));
doto$7753_$AUTO_$1.resource=state$1;
return doto$7753_$AUTO_$1;
}

dc.dynamic $_dispose_state$1(dc.dynamic state$9179_$AUTO_$2, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$3=(state$9179_$AUTO_$2 as lcoc_flutter.ResourceState);
state$9179_$AUTO_$3.k=null;
((dc.dynamic state_atom$1, ){
final dc.dynamic state$2=lcoc_core.deref(state_atom$1, );
final v_video_player.VideoPlayerController temp$6864_$AUTO_$1=((const lcoc_core.Keyword(null, "video-controller", 830451199, ).$_invoke$1(state$2, )) as v_video_player.VideoPlayerController);
(lcold_state.release_playback$BANG_(temp$6864_$AUTO_$1, ));
final dc.dynamic temp$6864_$AUTO_$2=(const lcoc_core.Keyword(null, "play-listener", 2666530220, ).$_invoke$1(state$2, ));
if(((false != temp$6864_$AUTO_$2) && (null != temp$6864_$AUTO_$2))){
late final void Function() wrapper_f$1;
if((temp$6864_$AUTO_$2 is void Function())){
wrapper_f$1=temp$6864_$AUTO_$2;
}else{
wrapper_f$1=(){
if((temp$6864_$AUTO_$2 is dc.Function)){
return (temp$6864_$AUTO_$2 as dc.Function)();
}
if((temp$6864_$AUTO_$2 is lcoc_core.IFn$iface)){
return ((temp$6864_$AUTO_$2 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(temp$6864_$AUTO_$2, ).$_invoke$0(temp$6864_$AUTO_$2, ));
};
}
(temp$6864_$AUTO_$1.removeListener(wrapper_f$1, ));
}else{
}
(temp$6864_$AUTO_$1.dispose());
final c_chewie.ChewieController temp$6864_$AUTO_$3=((const lcoc_core.Keyword(null, "chewie-controller", 615100901, ).$_invoke$1(state$2, )) as c_chewie.ChewieController);
return (temp$6864_$AUTO_$3.dispose());
}((state$9179_$AUTO_$3.resource as lcoc_core.Atom), ));
state$9179_$AUTO_$3.resource=null;
return state$9179_$AUTO_$3;
}

dc.dynamic $_build$2(dc.dynamic state$9179_$AUTO_$4, dc.dynamic ctx$9180_$AUTO_$1, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$5=(state$9179_$AUTO_$4 as lcoc_flutter.ResourceState);
final f_widgets.BuildContext ctx$9180_$AUTO_$2=(ctx$9180_$AUTO_$1 as f_widgets.BuildContext);
final lcoc_core.Atom state_atom$2=(state$9179_$AUTO_$5.resource as lcoc_core.Atom);
return lcold_player.watch_chewie_player_M__caaxye$1(ctx$9180_$AUTO_$2, state$9179_$AUTO_$5, state_atom$2, this, _0, null, );
}

dc.dynamic $_update_state$1(dc.dynamic state$9179_$AUTO_$6, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$7=(state$9179_$AUTO_$6 as lcoc_flutter.ResourceState);
if((lcoc_core.$EQ_.$_invoke$2(_0, state$9179_$AUTO_$7.k, ))){
return null;
}
((dc.dynamic state_atom$3, ){
final dc.dynamic state$10=lcoc_core.deref(state_atom$3, );
final v_video_player.VideoPlayerController temp$6864_$AUTO_$4=((const lcoc_core.Keyword(null, "video-controller", 830451199, ).$_invoke$1(state$10, )) as v_video_player.VideoPlayerController);
(lcold_state.release_playback$BANG_(temp$6864_$AUTO_$4, ));
final dc.dynamic temp$6864_$AUTO_$5=(const lcoc_core.Keyword(null, "play-listener", 2666530220, ).$_invoke$1(state$10, ));
if(((false != temp$6864_$AUTO_$5) && (null != temp$6864_$AUTO_$5))){
late final void Function() wrapper_f$2;
if((temp$6864_$AUTO_$5 is void Function())){
wrapper_f$2=temp$6864_$AUTO_$5;
}else{
wrapper_f$2=(){
if((temp$6864_$AUTO_$5 is dc.Function)){
return (temp$6864_$AUTO_$5 as dc.Function)();
}
if((temp$6864_$AUTO_$5 is lcoc_core.IFn$iface)){
return ((temp$6864_$AUTO_$5 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(temp$6864_$AUTO_$5, ).$_invoke$0(temp$6864_$AUTO_$5, ));
};
}
(temp$6864_$AUTO_$4.removeListener(wrapper_f$2, ));
}else{
}
(temp$6864_$AUTO_$4.dispose());
final c_chewie.ChewieController temp$6864_$AUTO_$6=((const lcoc_core.Keyword(null, "chewie-controller", 615100901, ).$_invoke$1(state$10, )) as c_chewie.ChewieController);
return (temp$6864_$AUTO_$6.dispose());
}((state$9179_$AUTO_$7.resource as lcoc_core.Atom), ));
final dc.List<dc.dynamic> fl$13=(dc.List<dc.dynamic>.filled(10, const lcoc_core.Keyword(null, "chewie-controller", 615100901, ), ));
(fl$13[1]=null);
(fl$13[2]=const lcoc_core.Keyword(null, "has-error", 60956586, ));
(fl$13[3]=false);
(fl$13[4]=const lcoc_core.Keyword(null, "play-listener", 2666530220, ));
(fl$13[5]=null);
(fl$13[6]=const lcoc_core.Keyword(null, "is-loading", 3908007470, ));
(fl$13[7]=true);
(fl$13[8]=const lcoc_core.Keyword(null, "video-controller", 830451199, ));
(fl$13[9]=null);
final lcoc_core.Atom state$12=(lcoc_core.atom.$_invoke$1(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(5, 2147505184, 2147505184, fl$13, ), -1, ), ));
dc.Future<dc.dynamic> init_player$BANG_$5(dc.dynamic url_str$5, ) async {
try {
final dc.Uri uri$5=(dc.Uri.parse((url_str$5 as dc.String), ));
final dc.String ts$5=((dc.DateTime.now()).millisecondsSinceEpoch.toString());
final dc.dynamic coll7096$5=(lcoc_core.into.$_invoke$2(lcoc_core.$_EMPTY_MAP, uri$5.queryParameters, ));
late final dc.dynamic query_params$5;
if((coll7096$5 is lcoc_core.IAssociative$iface)){
query_params$5=((coll7096$5 as lcoc_core.IAssociative$iface).$_assoc$2("v", ts$5, ));
}else{
query_params$5=((lcoc_core.IAssociative.extensions(coll7096$5, ) as lcoc_core.IAssociative$ext).$_assoc$2(coll7096$5, "v", ts$5, ));
}
late final dc.Map<dc.String, dc.dynamic>? $if_$7;
if((null != query_params$5)){
late final dc.Map<dc.String, dc.dynamic> casted$9;
if((query_params$5 is dc.Map<dc.String, dc.dynamic>)){
casted$9=(query_params$5 as dc.Map<dc.String, dc.dynamic>);
}else{
casted$9=((query_params$5 as dc.Map).cast<dc.String, dc.dynamic>());
}
$if_$7=casted$9;
}else{
$if_$7=null;
}
final dc.Uri final_uri$5=(uri$5.replace(queryParameters: $if_$7, ));
final dc.List<dc.dynamic> fl$14=(dc.List<dc.dynamic>.filled(4, "User-Agent", ));
(fl$14[1]="Mozilla/5.0");
(fl$14[2]="Accept");
(fl$14[3]="*/*");
late final dc.Map<dc.String, dc.String> casted$10;
if((lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 134221824, 134221824, fl$14, ), -1, ) is dc.Map<dc.String, dc.String>)){
casted$10=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 134221824, 134221824, fl$14, ), -1, ) as dc.Map<dc.String, dc.String>);
}else{
casted$10=((lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 134221824, 134221824, fl$14, ), -1, ) as dc.Map).cast<dc.String, dc.String>());
}
final v_video_player.VideoPlayerController vc$7=(v_video_player.VideoPlayerController.networkUrl(final_uri$5, httpHeaders: casted$10, ));
((await (vc$7.initialize())));
((await (vc$7.setVolume(0.0, ))));
dc.dynamic play_listener$5(){
if(vc$7.value.isPlaying){
return lcold_state.claim_playback$BANG_(vc$7, (){
return (vc$7.pause());
}, );
}
return null;
}
final c_chewie.ChewieController cc$7=c_chewie.ChewieController(videoPlayerController: vc$7, autoPlay: true, looping: true, aspectRatio: vc$7.value.aspectRatio, showControls: true, errorBuilder: (dc.dynamic ctx$5, dc.dynamic err_msg$5, ){
return f_material.Center(child: f_material.Text((err_msg$5 as dc.String), style: const f_material.TextStyle(color: f_material.Colors.white, ), ), );
}, );
(vc$7.addListener(play_listener$5, ));
return (lcoc_core.swap$BANG_.$_invoke_more$10(state$12, lcoc_core.assoc, const lcoc_core.Keyword(null, "video-controller", 830451199, ), vc$7, const lcoc_core.Keyword(null, "play-listener", 2666530220, ), play_listener$5, const lcoc_core.Keyword(null, "chewie-controller", 615100901, ), cc$7, const lcoc_core.Keyword(null, "is-loading", 3908007470, ), [false, ], ));
} on dc.Exception catch (e$5) {
(lcold_api.log.$_invoke$2("Error initializing video:", e$5, ));
return (lcoc_core.swap$BANG_.$_invoke$6(state$12, lcoc_core.assoc, const lcoc_core.Keyword(null, "has-error", 60956586, ), true, const lcoc_core.Keyword(null, "is-loading", 3908007470, ), false, ));
}
}
(init_player$BANG_$5(_0, ));
state$9179_$AUTO_$7.resource=state$12;
state$9179_$AUTO_$7.k=_0;
return state$9179_$AUTO_$7;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END managed_chewie_player_M__caaxye$1

// BEGIN managed_youtube_player_widget_M__caaxye$1
class managed_youtube_player_widget_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final _0;

managed_youtube_player_widget_M__caaxye$1(this._0, key$2, ):super(key: key$2, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.ResourceState(null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9179_$AUTO_$1, ){
final lcoc_flutter.ResourceState doto$7753_$AUTO_$1=(state$9179_$AUTO_$1 as lcoc_flutter.ResourceState);
doto$7753_$AUTO_$1.k=_0;
final lcoc_core.Atom replaying$QMARK_$1=(lcoc_core.atom.$_invoke$1(false, ));
final lcoc_core.Atom error$QMARK_$1=(lcoc_core.atom.$_invoke$1(false, ));
final y_youtube_player_flutter.YoutubePlayerController controller$1=y_youtube_player_flutter.YoutubePlayerController(initialVideoId: (_0 as dc.String), flags: const y_youtube_player_flutter.YoutubePlayerFlags(autoPlay: false, mute: false, loop: false, hideControls: false, hideThumbnail: true, controlsVisibleAtStart: true, disableDragSeek: true, ), );
dc.Future<dc.dynamic>? listener$1(){
final y_youtube_player_flutter.YoutubePlayerValue value$1=controller$1.value;
if((lcoc_core.not$EQ_.$_invoke$2(value$1.errorCode, 0, ))){
(lcoc_core.reset$BANG_(error$QMARK_$1, true, ));
}else{
}
if((lcoc_core.$EQ_.$_invoke$2(value$1.playerState, y_youtube_player_flutter.PlayerState.playing, ))){
(lcold_state.claim_playback$BANG_(controller$1, (){
return (controller$1.pause());
}, ));
}else{
}
if(value$1.isReady){
final dc.Duration position$1=value$1.position;
final dc.Duration duration$1=value$1.metaData.duration;
final dc.bool and$6836_$AUTO_$1=(duration$1.inMilliseconds > 0);
late final dc.bool $if_$1;
if(and$6836_$AUTO_$1){
final dc.bool and$6836_$AUTO_$2=(position$1.inMilliseconds >= (duration$1.inMilliseconds - 300));
if(and$6836_$AUTO_$2){
final dc.dynamic test$1=lcoc_core.deref(replaying$QMARK_$1, );
if(((false != test$1) && (null != test$1))){
$if_$1=false;
}else{
$if_$1=true;
}
}else{
$if_$1=and$6836_$AUTO_$2;
}
}else{
$if_$1=and$6836_$AUTO_$1;
}
if($if_$1){
(lcoc_core.reset$BANG_(replaying$QMARK_$1, true, ));
(controller$1.seekTo(const dc.Duration(seconds: 0, ), ));
return (dc.Future.delayed(const dc.Duration(milliseconds: 600, ), (){
return lcoc_core.reset$BANG_(replaying$QMARK_$1, false, );
}, ));
}
final dc.bool and$6836_$AUTO_$3=(lcoc_core.$EQ_.$_invoke$2(value$1.playerState, y_youtube_player_flutter.PlayerState.ended, ));
late final dc.bool $if_$2;
if(and$6836_$AUTO_$3){
final dc.dynamic test$2=lcoc_core.deref(replaying$QMARK_$1, );
if(((false != test$2) && (null != test$2))){
$if_$2=false;
}else{
$if_$2=true;
}
}else{
$if_$2=and$6836_$AUTO_$3;
}
if($if_$2){
(lcoc_core.reset$BANG_(replaying$QMARK_$1, true, ));
(controller$1.seekTo(const dc.Duration(seconds: 0, ), ));
(controller$1.play());
return (dc.Future.delayed(const dc.Duration(milliseconds: 600, ), (){
return lcoc_core.reset$BANG_(replaying$QMARK_$1, false, );
}, ));
}
return null;
}
return null;
}
(controller$1.addListener(listener$1, ));
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "error?", 4039413826, ), ));
(fl$1[1]=error$QMARK_$1);
(fl$1[2]=const lcoc_core.Keyword(null, "listener", 3068231526, ));
(fl$1[3]=listener$1);
(fl$1[4]=const lcoc_core.Keyword(null, "controller", 1089430550, ));
(fl$1[5]=controller$1);
doto$7753_$AUTO_$1.resource=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 4194372, 4194372, fl$1, ), -1, );
return doto$7753_$AUTO_$1;
}

dc.dynamic $_dispose_state$1(dc.dynamic state$9179_$AUTO_$2, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$3=(state$9179_$AUTO_$2 as lcoc_flutter.ResourceState);
state$9179_$AUTO_$3.k=null;
((dc.dynamic state$1, ){
final dc.dynamic c$1=(const lcoc_core.Keyword(null, "controller", 1089430550, ).$_invoke$1(state$1, ));
final dc.dynamic l$1=(const lcoc_core.Keyword(null, "listener", 3068231526, ).$_invoke$1(state$1, ));
(lcold_state.release_playback$BANG_(c$1, ));
late final void Function() wrapper_f$1;
if((l$1 is void Function())){
wrapper_f$1=l$1;
}else{
wrapper_f$1=(){
if((l$1 is dc.Function)){
return (l$1 as dc.Function)();
}
if((l$1 is lcoc_core.IFn$iface)){
return ((l$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(l$1, ).$_invoke$0(l$1, ));
};
}
((c$1 as y_youtube_player_flutter.YoutubePlayerController).removeListener(wrapper_f$1, ));
return ((c$1 as y_youtube_player_flutter.YoutubePlayerController).dispose());
}((state$9179_$AUTO_$3.resource as lcoc_core.PersistentHashMap), ));
state$9179_$AUTO_$3.resource=null;
return state$9179_$AUTO_$3;
}

dc.dynamic $_build$2(dc.dynamic state$9179_$AUTO_$4, dc.dynamic ctx$9180_$AUTO_$1, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$5=(state$9179_$AUTO_$4 as lcoc_flutter.ResourceState);
final f_widgets.BuildContext ctx$9180_$AUTO_$2=(ctx$9180_$AUTO_$1 as f_widgets.BuildContext);
final lcoc_core.PersistentHashMap player_state$1=(state$9179_$AUTO_$5.resource as lcoc_core.PersistentHashMap);
return lcold_player.watch_youtube_player_widget_M__caaxye$1(ctx$9180_$AUTO_$2, player_state$1, state$9179_$AUTO_$5, this, _0, null, );
}

dc.dynamic $_update_state$1(dc.dynamic state$9179_$AUTO_$6, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$7=(state$9179_$AUTO_$6 as lcoc_flutter.ResourceState);
if((lcoc_core.$EQ_.$_invoke$2(_0, state$9179_$AUTO_$7.k, ))){
return null;
}
((dc.dynamic state$2, ){
final dc.dynamic c$2=(const lcoc_core.Keyword(null, "controller", 1089430550, ).$_invoke$1(state$2, ));
final dc.dynamic l$2=(const lcoc_core.Keyword(null, "listener", 3068231526, ).$_invoke$1(state$2, ));
(lcold_state.release_playback$BANG_(c$2, ));
late final void Function() wrapper_f$2;
if((l$2 is void Function())){
wrapper_f$2=l$2;
}else{
wrapper_f$2=(){
if((l$2 is dc.Function)){
return (l$2 as dc.Function)();
}
if((l$2 is lcoc_core.IFn$iface)){
return ((l$2 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(l$2, ).$_invoke$0(l$2, ));
};
}
((c$2 as y_youtube_player_flutter.YoutubePlayerController).removeListener(wrapper_f$2, ));
return ((c$2 as y_youtube_player_flutter.YoutubePlayerController).dispose());
}((state$9179_$AUTO_$7.resource as lcoc_core.PersistentHashMap), ));
final lcoc_core.Atom replaying$QMARK_$5=(lcoc_core.atom.$_invoke$1(false, ));
final lcoc_core.Atom error$QMARK_$5=(lcoc_core.atom.$_invoke$1(false, ));
final y_youtube_player_flutter.YoutubePlayerController controller$5=y_youtube_player_flutter.YoutubePlayerController(initialVideoId: (_0 as dc.String), flags: const y_youtube_player_flutter.YoutubePlayerFlags(autoPlay: false, mute: false, loop: false, hideControls: false, hideThumbnail: true, controlsVisibleAtStart: true, disableDragSeek: true, ), );
dc.Future<dc.dynamic>? listener$5(){
final y_youtube_player_flutter.YoutubePlayerValue value$5=controller$5.value;
if((lcoc_core.not$EQ_.$_invoke$2(value$5.errorCode, 0, ))){
(lcoc_core.reset$BANG_(error$QMARK_$5, true, ));
}else{
}
if((lcoc_core.$EQ_.$_invoke$2(value$5.playerState, y_youtube_player_flutter.PlayerState.playing, ))){
(lcold_state.claim_playback$BANG_(controller$5, (){
return (controller$5.pause());
}, ));
}else{
}
if(value$5.isReady){
final dc.Duration position$5=value$5.position;
final dc.Duration duration$5=value$5.metaData.duration;
final dc.bool and$6836_$AUTO_$13=(duration$5.inMilliseconds > 0);
late final dc.bool $if_$9;
if(and$6836_$AUTO_$13){
final dc.bool and$6836_$AUTO_$14=(position$5.inMilliseconds >= (duration$5.inMilliseconds - 300));
if(and$6836_$AUTO_$14){
final dc.dynamic test$10=lcoc_core.deref(replaying$QMARK_$5, );
if(((false != test$10) && (null != test$10))){
$if_$9=false;
}else{
$if_$9=true;
}
}else{
$if_$9=and$6836_$AUTO_$14;
}
}else{
$if_$9=and$6836_$AUTO_$13;
}
if($if_$9){
(lcoc_core.reset$BANG_(replaying$QMARK_$5, true, ));
(controller$5.seekTo(const dc.Duration(seconds: 0, ), ));
return (dc.Future.delayed(const dc.Duration(milliseconds: 600, ), (){
return lcoc_core.reset$BANG_(replaying$QMARK_$5, false, );
}, ));
}
final dc.bool and$6836_$AUTO_$15=(lcoc_core.$EQ_.$_invoke$2(value$5.playerState, y_youtube_player_flutter.PlayerState.ended, ));
late final dc.bool $if_$10;
if(and$6836_$AUTO_$15){
final dc.dynamic test$11=lcoc_core.deref(replaying$QMARK_$5, );
if(((false != test$11) && (null != test$11))){
$if_$10=false;
}else{
$if_$10=true;
}
}else{
$if_$10=and$6836_$AUTO_$15;
}
if($if_$10){
(lcoc_core.reset$BANG_(replaying$QMARK_$5, true, ));
(controller$5.seekTo(const dc.Duration(seconds: 0, ), ));
(controller$5.play());
return (dc.Future.delayed(const dc.Duration(milliseconds: 600, ), (){
return lcoc_core.reset$BANG_(replaying$QMARK_$5, false, );
}, ));
}
return null;
}
return null;
}
(controller$5.addListener(listener$5, ));
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "error?", 4039413826, ), ));
(fl$10[1]=error$QMARK_$5);
(fl$10[2]=const lcoc_core.Keyword(null, "listener", 3068231526, ));
(fl$10[3]=listener$5);
(fl$10[4]=const lcoc_core.Keyword(null, "controller", 1089430550, ));
(fl$10[5]=controller$5);
state$9179_$AUTO_$7.resource=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 4194372, 4194372, fl$10, ), -1, );
state$9179_$AUTO_$7.k=_0;
return state$9179_$AUTO_$7;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END managed_youtube_player_widget_M__caaxye$1

// BEGIN watch_chewie_player_M__caaxye$1
class watch_chewie_player_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final f_widgets.BuildContext _0;
final lcoc_flutter.ResourceState _1;
final lcoc_core.Atom _2;
final lcold_player.managed_chewie_player_M__caaxye$1 _3;
final _4;

watch_chewie_player_M__caaxye$1(this._0, this._1, this._2, this._3, this._4, key$1, ):super(key: key$1, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.WatchState(null, null, null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9129_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$1=(state$9129_$AUTO_$1 as lcoc_flutter.WatchState);
state$9123_$AUTO_$1.k=_2;
state$9123_$AUTO_$1.subscribable=_2;
dc.dynamic update$9126_$AUTO_$1(dc.dynamic state$7, ){
if((lcoc_core.$EQ_.$_invoke$2(state$7, state$9123_$AUTO_$1.latest, ))){
return null;
}
return (state$9123_$AUTO_$1.$_invoke$1(state$7, ));
}
late final dc.dynamic sub$9127_$AUTO_$1;
if((_2 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$1=((_2 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$1, ));
}else{
sub$9127_$AUTO_$1=((lcoc_flutter.Subscribable.extensions(_2, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(_2, update$9126_$AUTO_$1, ));
}
late final dc.dynamic or$6718_$AUTO_$1;
if((_2 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$1=((_2 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$1, update$9126_$AUTO_$1, ));
}else{
or$6718_$AUTO_$1=((lcoc_flutter.Subscribable.extensions(_2, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(_2, sub$9127_$AUTO_$1, update$9126_$AUTO_$1, ));
}
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
}else{
(update$9126_$AUTO_$1(null, ));
}
state$9123_$AUTO_$1.subscription=sub$9127_$AUTO_$1;
return state$9123_$AUTO_$1;
}

dc.dynamic $_dispose_state$1(dc.dynamic state$9129_$AUTO_$2, ){
final lcoc_flutter.WatchState state$9129_$AUTO_$3=(state$9129_$AUTO_$2 as lcoc_flutter.WatchState);
state$9129_$AUTO_$3.k=null;
state$9129_$AUTO_$3.latest=null;
final dc.dynamic doto$7753_$AUTO_$7=state$9129_$AUTO_$3.subscribable;
final dc.dynamic sub9052$1=state$9129_$AUTO_$3.subscription;
if((doto$7753_$AUTO_$7 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$7 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$1, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$7, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$7, sub9052$1, ));
}
state$9129_$AUTO_$3.subscribable=null;
state$9129_$AUTO_$3.subscription=null;
return state$9129_$AUTO_$3;
}

dc.dynamic $_build$2(dc.dynamic state$9129_$AUTO_$4, dc.dynamic ctx$9130_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$2=(state$9129_$AUTO_$4 as lcoc_flutter.WatchState);
final dc.dynamic state$8=state$9123_$AUTO_$2.latest;
final f_widgets.BuildContext context$9100_$AUTO_$2=(ctx$9130_$AUTO_$1 as f_widgets.BuildContext);
late final dc.dynamic map$9751_$2;
if(((lcoc_core.ISeq.satisfies(state$8, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(state$8, );
if(((false != test$1) && (null != test$1))){
map$9751_$2=lcoc_core.seq_to_map_for_destructuring(state$8, );
}else{
late final dc.dynamic $if_$4;
if((state$8 is lcoc_core.ISeqable$iface)){
$if_$4=((state$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(state$8, ) as lcoc_core.ISeqable$ext).$_seq$0(state$8, ));
}
if(((false != $if_$4) && (null != $if_$4))){
map$9751_$2=lcoc_core.first(state$8, );
}else{
map$9751_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9751_$2=state$8;
}
late final dc.dynamic video_controller$1;
if((map$9751_$2 is lcoc_core.ILookup$iface)){
video_controller$1=((map$9751_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "video-controller", 830451199, ), ));
}else{
video_controller$1=((lcoc_core.ILookup.extensions(map$9751_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9751_$2, const lcoc_core.Keyword(null, "video-controller", 830451199, ), ));
}
late final dc.dynamic chewie_controller$1;
if((map$9751_$2 is lcoc_core.ILookup$iface)){
chewie_controller$1=((map$9751_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "chewie-controller", 615100901, ), ));
}else{
chewie_controller$1=((lcoc_core.ILookup.extensions(map$9751_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9751_$2, const lcoc_core.Keyword(null, "chewie-controller", 615100901, ), ));
}
late final dc.dynamic is_loading$1;
if((map$9751_$2 is lcoc_core.ILookup$iface)){
is_loading$1=((map$9751_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "is-loading", 3908007470, ), ));
}else{
is_loading$1=((lcoc_core.ILookup.extensions(map$9751_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9751_$2, const lcoc_core.Keyword(null, "is-loading", 3908007470, ), ));
}
late final dc.dynamic has_error$1;
if((map$9751_$2 is lcoc_core.ILookup$iface)){
has_error$1=((map$9751_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "has-error", 60956586, ), ));
}else{
has_error$1=((lcoc_core.ILookup.extensions(map$9751_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9751_$2, const lcoc_core.Keyword(null, "has-error", 60956586, ), ));
}
late final f_material.SingleChildRenderObjectWidget child$9287_$AUTO_$1;
if(((false != has_error$1) && (null != has_error$1))){
child$9287_$AUTO_$1=f_material.Padding(padding: (const f_material.EdgeInsets.all(16.0, )), child: f_material.Center(child: f_material.Text((lcold_strings.video_error$v1 as dc.String), style: const f_material.TextStyle(color: f_material.Colors.red, ), textAlign: f_material.TextAlign.center, ), ), );
}else{
late final dc.bool and$6836_$AUTO_$1;
if(((false != is_loading$1) && (null != is_loading$1))){
and$6836_$AUTO_$1=false;
}else{
and$6836_$AUTO_$1=true;
}
late final dc.dynamic $if_$5;
if(and$6836_$AUTO_$1){
if(((false != chewie_controller$1) && (null != chewie_controller$1))){
if(((false != video_controller$1) && (null != video_controller$1))){
$if_$5=(video_controller$1 as v_video_player.VideoPlayerController).value.isInitialized;
}else{
$if_$5=video_controller$1;
}
}else{
$if_$5=chewie_controller$1;
}
}else{
$if_$5=and$6836_$AUTO_$1;
}
if(((false != $if_$5) && (null != $if_$5))){
child$9287_$AUTO_$1=f_material.AspectRatio(aspectRatio: (video_controller$1 as v_video_player.VideoPlayerController).value.aspectRatio, child: c_chewie.Chewie(controller: (chewie_controller$1 as c_chewie.ChewieController), ), );
}else{
child$9287_$AUTO_$1=const f_material.Padding(padding: (const f_material.EdgeInsets.all(16.0, )), child: const f_material.Center(child: const f_material.CircularProgressIndicator(), ), );
}
}
if(f_foundation.kDebugMode){
final dc.dynamic test$2=(lcoc_flutter.get_of.$_invoke$2(context$9100_$AUTO_$2, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$2) && (null != test$2))){
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$9[1]=131);
(fl$9[2]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$9[3]=4);
(fl$9[4]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$9[5]=(lcoc_core.symbol.$_invoke$2(null, "libras-dictionary.player", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8413184, 8413184, fl$9, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), ctx$9130_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "state-atom", )), _2, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), state$9129_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), state$9123_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), context$9100_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "___9178__auto__", )), _3, (lcoc_core.symbol.$_invoke$2(null, "is-loading", )), is_loading$1, (lcoc_core.symbol.$_invoke$2(null, "chewie-controller", )), chewie_controller$1, (lcoc_core.symbol.$_invoke$2(null, "video-url", )), _4, (lcoc_core.symbol.$_invoke$2(null, "state", )), state$8, (lcoc_core.symbol.$_invoke$2(null, "has-error", )), has_error$1, (lcoc_core.symbol.$_invoke$2(null, "ctx__9180__auto__", )), _0, (lcoc_core.symbol.$_invoke$2(null, "video-controller", )), video_controller$1, (lcoc_core.symbol.$_invoke$2(null, "state__9179__auto__", )), _1, (lcoc_core.symbol.$_invoke$2(null, "map__9751", )), map$9751_$2, ], ));
}, child$9287_$AUTO_$1, );
}
return child$9287_$AUTO_$1;
}
return child$9287_$AUTO_$1;
}

dc.dynamic $_update_state$1(dc.dynamic state$9129_$AUTO_$5, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$3=(state$9129_$AUTO_$5 as lcoc_flutter.WatchState);
if((lcoc_core.$EQ_.$_invoke$2(_2, state$9123_$AUTO_$3.k, ))){
return null;
}
final dc.dynamic doto$7753_$AUTO_$8=state$9123_$AUTO_$3.subscribable;
final dc.dynamic sub9052$2=state$9123_$AUTO_$3.subscription;
if((doto$7753_$AUTO_$8 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$8 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$2, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$8, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$8, sub9052$2, ));
}
state$9123_$AUTO_$3.k=_2;
state$9123_$AUTO_$3.subscribable=_2;
dc.dynamic update$9126_$AUTO_$2(dc.dynamic state$9, ){
if((lcoc_core.$EQ_.$_invoke$2(state$9, state$9123_$AUTO_$3.latest, ))){
return null;
}
return (state$9123_$AUTO_$3.$_invoke$1(state$9, ));
}
late final dc.dynamic sub$9127_$AUTO_$2;
if((_2 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$2=((_2 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$2, ));
}else{
sub$9127_$AUTO_$2=((lcoc_flutter.Subscribable.extensions(_2, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(_2, update$9126_$AUTO_$2, ));
}
late final dc.dynamic or$6718_$AUTO_$2;
if((_2 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$2=((_2 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$2, update$9126_$AUTO_$2, ));
}else{
or$6718_$AUTO_$2=((lcoc_flutter.Subscribable.extensions(_2, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(_2, sub$9127_$AUTO_$2, update$9126_$AUTO_$2, ));
}
if(((false != or$6718_$AUTO_$2) && (null != or$6718_$AUTO_$2))){
}else{
(update$9126_$AUTO_$2(null, ));
}
state$9123_$AUTO_$3.subscription=sub$9127_$AUTO_$2;
return state$9123_$AUTO_$3;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END watch_chewie_player_M__caaxye$1

// BEGIN watch_chewie_video_widget_M__caaxye$1
class watch_chewie_video_widget_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final _0;

watch_chewie_video_widget_M__caaxye$1(this._0, key$1, ):super(key: key$1, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.WatchState(null, null, null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9129_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$1=(state$9129_$AUTO_$1 as lcoc_flutter.WatchState);
final lcoc_core.Atom subscribable$9124_$AUTO_$1=(lcoc_core.atom.$_invoke$1(false, ));
state$9123_$AUTO_$1.k=null;
state$9123_$AUTO_$1.subscribable=subscribable$9124_$AUTO_$1;
dc.dynamic update$9126_$AUTO_$1(dc.dynamic activated$3, ){
if((lcoc_core.$EQ_.$_invoke$2(activated$3, state$9123_$AUTO_$1.latest, ))){
return null;
}
return (state$9123_$AUTO_$1.$_invoke$1(activated$3, ));
}
late final dc.dynamic sub$9127_$AUTO_$1;
if((subscribable$9124_$AUTO_$1 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$1=((subscribable$9124_$AUTO_$1 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$1, ));
}else{
sub$9127_$AUTO_$1=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$1, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(subscribable$9124_$AUTO_$1, update$9126_$AUTO_$1, ));
}
late final dc.dynamic or$6718_$AUTO_$1;
if((subscribable$9124_$AUTO_$1 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$1=((subscribable$9124_$AUTO_$1 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$1, update$9126_$AUTO_$1, ));
}else{
or$6718_$AUTO_$1=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$1, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(subscribable$9124_$AUTO_$1, sub$9127_$AUTO_$1, update$9126_$AUTO_$1, ));
}
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
}else{
(update$9126_$AUTO_$1(null, ));
}
state$9123_$AUTO_$1.subscription=sub$9127_$AUTO_$1;
return state$9123_$AUTO_$1;
}

dc.dynamic $_dispose_state$1(dc.dynamic state$9129_$AUTO_$2, ){
final lcoc_flutter.WatchState state$9129_$AUTO_$3=(state$9129_$AUTO_$2 as lcoc_flutter.WatchState);
state$9129_$AUTO_$3.k=null;
state$9129_$AUTO_$3.latest=null;
final dc.dynamic doto$7753_$AUTO_$5=state$9129_$AUTO_$3.subscribable;
final dc.dynamic sub9052$1=state$9129_$AUTO_$3.subscription;
if((doto$7753_$AUTO_$5 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$5 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$1, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$5, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$5, sub9052$1, ));
}
state$9129_$AUTO_$3.subscribable=null;
state$9129_$AUTO_$3.subscription=null;
return state$9129_$AUTO_$3;
}

dc.dynamic $_build$2(dc.dynamic state$9129_$AUTO_$4, dc.dynamic ctx$9130_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$2=(state$9129_$AUTO_$4 as lcoc_flutter.WatchState);
final dc.dynamic activated$4=state$9123_$AUTO_$2.latest;
final f_widgets.BuildContext context$9100_$AUTO_$1=(ctx$9130_$AUTO_$1 as f_widgets.BuildContext);
final lcoc_core.Atom activated$QMARK_$1=(state$9123_$AUTO_$2.subscribable as lcoc_core.Atom);
late final dc.dynamic child$9287_$AUTO_$1;
if(((false != activated$4) && (null != activated$4))){
child$9287_$AUTO_$1=lcold_player.chewie_player(_0, );
}else{
final dc.double aspectRatio$1=(16 / 9);
late final dc.String? $if_$1;
if((null != lcold_strings.play_video$v1)){
$if_$1=(lcold_strings.play_video$v1 as dc.String);
}else{
$if_$1=null;
}
child$9287_$AUTO_$1=f_material.AspectRatio(aspectRatio: aspectRatio$1, child: f_material.Semantics(label: $if_$1, button: true, child: f_material.InkWell(onTap: (){
(lcoc_core.reset$BANG_(activated$QMARK_$1, true, ));
return null;
}, child: f_material.Container(decoration: f_material.BoxDecoration(color: (f_material.Colors.black.withOpacity(0.75, )), borderRadius: (f_material.BorderRadius.circular(8.0, )), ), child: const f_material.Center(child: const f_material.Icon(f_material.Icons.play_circle_filled, size: 64.0, color: f_material.Colors.white, ), ), ), ), ), );
}
if(f_foundation.kDebugMode){
final dc.dynamic test$1=(lcoc_flutter.get_of.$_invoke$2(context$9100_$AUTO_$1, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$1) && (null != test$1))){
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$3[1]=157);
(fl$3[2]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$3[3]=4);
(fl$3[4]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$3[5]=(lcoc_core.symbol.$_invoke$2(null, "libras-dictionary.player", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8413184, 8413184, fl$3, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), ctx$9130_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "activated?", )), activated$QMARK_$1, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), state$9129_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), state$9123_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), context$9100_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "video-url", )), _0, (lcoc_core.symbol.$_invoke$2(null, "activated", )), activated$4, ], ));
}, child$9287_$AUTO_$1, );
}
return child$9287_$AUTO_$1;
}
return child$9287_$AUTO_$1;
}

dc.dynamic $_update_state$1(dc.dynamic state$9129_$AUTO_$5, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$3=(state$9129_$AUTO_$5 as lcoc_flutter.WatchState);
if((lcoc_core.$EQ_.$_invoke$2(null, state$9123_$AUTO_$3.k, ))){
return null;
}
final dc.dynamic doto$7753_$AUTO_$6=state$9123_$AUTO_$3.subscribable;
final dc.dynamic sub9052$2=state$9123_$AUTO_$3.subscription;
if((doto$7753_$AUTO_$6 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$6 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$2, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$6, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$6, sub9052$2, ));
}
final lcoc_core.Atom subscribable$9124_$AUTO_$2=(lcoc_core.atom.$_invoke$1(false, ));
state$9123_$AUTO_$3.k=null;
state$9123_$AUTO_$3.subscribable=subscribable$9124_$AUTO_$2;
dc.dynamic update$9126_$AUTO_$2(dc.dynamic activated$5, ){
if((lcoc_core.$EQ_.$_invoke$2(activated$5, state$9123_$AUTO_$3.latest, ))){
return null;
}
return (state$9123_$AUTO_$3.$_invoke$1(activated$5, ));
}
late final dc.dynamic sub$9127_$AUTO_$2;
if((subscribable$9124_$AUTO_$2 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$2=((subscribable$9124_$AUTO_$2 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$2, ));
}else{
sub$9127_$AUTO_$2=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$2, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(subscribable$9124_$AUTO_$2, update$9126_$AUTO_$2, ));
}
late final dc.dynamic or$6718_$AUTO_$2;
if((subscribable$9124_$AUTO_$2 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$2=((subscribable$9124_$AUTO_$2 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$2, update$9126_$AUTO_$2, ));
}else{
or$6718_$AUTO_$2=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$2, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(subscribable$9124_$AUTO_$2, sub$9127_$AUTO_$2, update$9126_$AUTO_$2, ));
}
if(((false != or$6718_$AUTO_$2) && (null != or$6718_$AUTO_$2))){
}else{
(update$9126_$AUTO_$2(null, ));
}
state$9123_$AUTO_$3.subscription=sub$9127_$AUTO_$2;
return state$9123_$AUTO_$3;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END watch_chewie_video_widget_M__caaxye$1

// BEGIN watch_youtube_player_widget_M__caaxye$1
class watch_youtube_player_widget_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final f_widgets.BuildContext _0;
final lcoc_core.PersistentHashMap _1;
final lcoc_flutter.ResourceState _2;
final lcold_player.managed_youtube_player_widget_M__caaxye$1 _3;
final _4;

watch_youtube_player_widget_M__caaxye$1(this._0, this._1, this._2, this._3, this._4, key$1, ):super(key: key$1, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.WatchState(null, null, null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9129_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$1=(state$9129_$AUTO_$1 as lcoc_flutter.WatchState);
final dc.dynamic subscribable$9124_$AUTO_$1=(const lcoc_core.Keyword(null, "error?", 4039413826, ).$_invoke$1(_1, ));
state$9123_$AUTO_$1.k=_1;
state$9123_$AUTO_$1.subscribable=subscribable$9124_$AUTO_$1;
dc.dynamic update$9126_$AUTO_$1(dc.dynamic has_error$3, ){
if((lcoc_core.$EQ_.$_invoke$2(has_error$3, state$9123_$AUTO_$1.latest, ))){
return null;
}
return (state$9123_$AUTO_$1.$_invoke$1(has_error$3, ));
}
late final dc.dynamic sub$9127_$AUTO_$1;
if((subscribable$9124_$AUTO_$1 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$1=((subscribable$9124_$AUTO_$1 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$1, ));
}else{
sub$9127_$AUTO_$1=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$1, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(subscribable$9124_$AUTO_$1, update$9126_$AUTO_$1, ));
}
late final dc.dynamic or$6718_$AUTO_$1;
if((subscribable$9124_$AUTO_$1 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$1=((subscribable$9124_$AUTO_$1 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$1, update$9126_$AUTO_$1, ));
}else{
or$6718_$AUTO_$1=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$1, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(subscribable$9124_$AUTO_$1, sub$9127_$AUTO_$1, update$9126_$AUTO_$1, ));
}
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
}else{
(update$9126_$AUTO_$1(null, ));
}
state$9123_$AUTO_$1.subscription=sub$9127_$AUTO_$1;
return state$9123_$AUTO_$1;
}

dc.dynamic $_dispose_state$1(dc.dynamic state$9129_$AUTO_$2, ){
final lcoc_flutter.WatchState state$9129_$AUTO_$3=(state$9129_$AUTO_$2 as lcoc_flutter.WatchState);
state$9129_$AUTO_$3.k=null;
state$9129_$AUTO_$3.latest=null;
final dc.dynamic doto$7753_$AUTO_$7=state$9129_$AUTO_$3.subscribable;
final dc.dynamic sub9052$1=state$9129_$AUTO_$3.subscription;
if((doto$7753_$AUTO_$7 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$7 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$1, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$7, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$7, sub9052$1, ));
}
state$9129_$AUTO_$3.subscribable=null;
state$9129_$AUTO_$3.subscription=null;
return state$9129_$AUTO_$3;
}

dc.dynamic $_build$2(dc.dynamic state$9129_$AUTO_$4, dc.dynamic ctx$9130_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$2=(state$9129_$AUTO_$4 as lcoc_flutter.WatchState);
final dc.dynamic has_error$4=state$9123_$AUTO_$2.latest;
final f_widgets.BuildContext context$9100_$AUTO_$2=(ctx$9130_$AUTO_$1 as f_widgets.BuildContext);
late final f_material.Widget child$9287_$AUTO_$1;
if(((false != has_error$4) && (null != has_error$4))){
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(2, f_material.Text((lcold_strings.youtube_error$v1 as dc.String), style: const f_material.TextStyle(color: f_material.Colors.red, ), textAlign: f_material.TextAlign.center, ), ));
(fl$6[1]=f_material.TextButton(onPressed: (){
(lcold_state.launch_url$BANG_((lcoc_core.str.$_invoke$2("https://www.youtube.com/watch?v=", _4, )), ));
return null;
}, child: f_material.Text((lcold_strings.open_in_youtube$v1 as dc.String), ), ));
late final dc.List<f_material.Widget> casted$1;
if((lcoc_core.PersistentVector(null, 2, 5, arg$3, fl$6, -1, ) is dc.List<f_material.Widget>)){
casted$1=(lcoc_core.PersistentVector(null, 2, 5, arg$3, fl$6, -1, ) as dc.List<f_material.Widget>);
}else{
casted$1=((lcoc_core.PersistentVector(null, 2, 5, arg$3, fl$6, -1, ) as dc.List).cast<f_material.Widget>());
}
child$9287_$AUTO_$1=f_material.Padding(padding: (const f_material.EdgeInsets.all(16.0, )), child: f_material.Column(mainAxisSize: f_material.MainAxisSize.min, children: casted$1, ), );
}else{
child$9287_$AUTO_$1=y_youtube_player_flutter.YoutubePlayer(controller: ((const lcoc_core.Keyword(null, "controller", 1089430550, ).$_invoke$1(_1, )) as y_youtube_player_flutter.YoutubePlayerController), showVideoProgressIndicator: true, );
}
if(f_foundation.kDebugMode){
final dc.dynamic test$7=(lcoc_flutter.get_of.$_invoke$2(context$9100_$AUTO_$2, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$7) && (null != test$7))){
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$7[1]=63);
(fl$7[2]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$7[3]=4);
(fl$7[4]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$7[5]=(lcoc_core.symbol.$_invoke$2(null, "libras-dictionary.player", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8413184, 8413184, fl$7, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "youtube-id", )), _4, (lcoc_core.symbol.$_invoke$2(null, "player-state", )), _1, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), ctx$9130_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), state$9129_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), state$9123_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), context$9100_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "___9178__auto__", )), _3, (lcoc_core.symbol.$_invoke$2(null, "has-error", )), has_error$4, (lcoc_core.symbol.$_invoke$2(null, "ctx__9180__auto__", )), _0, (lcoc_core.symbol.$_invoke$2(null, "state__9179__auto__", )), _2, ], ));
}, child$9287_$AUTO_$1, );
}
return child$9287_$AUTO_$1;
}
return child$9287_$AUTO_$1;
}

dc.dynamic $_update_state$1(dc.dynamic state$9129_$AUTO_$5, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$3=(state$9129_$AUTO_$5 as lcoc_flutter.WatchState);
if((lcoc_core.$EQ_.$_invoke$2(_1, state$9123_$AUTO_$3.k, ))){
return null;
}
final dc.dynamic doto$7753_$AUTO_$8=state$9123_$AUTO_$3.subscribable;
final dc.dynamic sub9052$2=state$9123_$AUTO_$3.subscription;
if((doto$7753_$AUTO_$8 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$8 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$2, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$8, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$8, sub9052$2, ));
}
final dc.dynamic subscribable$9124_$AUTO_$2=(const lcoc_core.Keyword(null, "error?", 4039413826, ).$_invoke$1(_1, ));
state$9123_$AUTO_$3.k=_1;
state$9123_$AUTO_$3.subscribable=subscribable$9124_$AUTO_$2;
dc.dynamic update$9126_$AUTO_$2(dc.dynamic has_error$5, ){
if((lcoc_core.$EQ_.$_invoke$2(has_error$5, state$9123_$AUTO_$3.latest, ))){
return null;
}
return (state$9123_$AUTO_$3.$_invoke$1(has_error$5, ));
}
late final dc.dynamic sub$9127_$AUTO_$2;
if((subscribable$9124_$AUTO_$2 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$2=((subscribable$9124_$AUTO_$2 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$2, ));
}else{
sub$9127_$AUTO_$2=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$2, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(subscribable$9124_$AUTO_$2, update$9126_$AUTO_$2, ));
}
late final dc.dynamic or$6718_$AUTO_$2;
if((subscribable$9124_$AUTO_$2 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$2=((subscribable$9124_$AUTO_$2 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$2, update$9126_$AUTO_$2, ));
}else{
or$6718_$AUTO_$2=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$2, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(subscribable$9124_$AUTO_$2, sub$9127_$AUTO_$2, update$9126_$AUTO_$2, ));
}
if(((false != or$6718_$AUTO_$2) && (null != or$6718_$AUTO_$2))){
}else{
(update$9126_$AUTO_$2(null, ));
}
state$9123_$AUTO_$3.subscription=sub$9127_$AUTO_$2;
return state$9123_$AUTO_$3;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END watch_youtube_player_widget_M__caaxye$1

// BEGIN youtube-player-widget
dc.dynamic youtube_player_widget(dc.dynamic youtube_id$1, ){
return lcold_player.managed_youtube_player_widget_M__caaxye$1(youtube_id$1, null, );
}

// END youtube-player-widget
