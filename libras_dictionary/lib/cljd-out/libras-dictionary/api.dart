// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "package:diacritic/diacritic.dart" as d_diacritic;
import "dart:convert" as d_convert;
import "dart:core" as dc;
import "../cljd/core.dart" as lcoc_core;
import "package:flutter/foundation.dart" as f_foundation;
import "models.dart" as lcold_models;
import "dart:io" as d_io;
import "package:path_provider/path_provider.dart" as p_path_provider;
import "package:http/http.dart" as h_http;
import "api.dart" as lcold_api;
import "dart:async" as da;

// BEGIN extract-video-and-youtube-id
dc.dynamic extract_video_and_youtube_id(dc.dynamic content$1, ){
final dc.RegExp video_exp$1=dc.RegExp("<video[^>]+src\\s*=\\s*[\"']([^\"']+)[\"']", );
final dc.RegExp yt_embed_exp$1=dc.RegExp("src\\s*=\\s*[\"']https:\\/\\/www\\.youtube\\.com\\/embed\\/([^\"'?]+)", );
final dc.RegExp yt_watch_exp$1=dc.RegExp("https:\\/\\/www\\.youtube\\.com\\/watch\\?v=([^\"&\\s]+)", );
final dc.RegExp yt_short_exp$1=dc.RegExp("https:\\/\\/youtu\\.be\\/([^\"&\\s<]+)", );
final dc.RegExp pb_video_exp$1=dc.RegExp("src\\s*=\\s*[\"'](http[^\"']+?\\.mp4)[\"']", );
final dc.RegExp pb_yt_exp$1=dc.RegExp("src\\s*=\\s*[\"'](https:\\/\\/www\\.youtube\\.com\\/watch\\?v=[^\"&]+)[\"']", );
final dc.RegExpMatch? temp$6859_$AUTO_$1=(video_exp$1.firstMatch((content$1 as dc.String), ));
if((null != temp$6859_$AUTO_$1)){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$1[1]=null);
(fl$1[2]=const lcoc_core.Keyword(null, "video-url", 3045839472, ));
(fl$1[3]=((temp$6859_$AUTO_$1 as dc.RegExpMatch).group(1, )));
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 65544, 65544, fl$1, ), -1, );
}
final dc.RegExpMatch? temp$6859_$AUTO_$2=(yt_embed_exp$1.firstMatch((content$1 as dc.String), ));
if((null != temp$6859_$AUTO_$2)){
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$2[1]=((temp$6859_$AUTO_$2 as dc.RegExpMatch).group(1, )));
(fl$2[2]=const lcoc_core.Keyword(null, "video-url", 3045839472, ));
(fl$2[3]=null);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 65544, 65544, fl$2, ), -1, );
}
final dc.RegExpMatch? temp$6859_$AUTO_$3=(yt_watch_exp$1.firstMatch((content$1 as dc.String), ));
if((null != temp$6859_$AUTO_$3)){
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$3[1]=((temp$6859_$AUTO_$3 as dc.RegExpMatch).group(1, )));
(fl$3[2]=const lcoc_core.Keyword(null, "video-url", 3045839472, ));
(fl$3[3]=null);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 65544, 65544, fl$3, ), -1, );
}
final dc.RegExpMatch? temp$6859_$AUTO_$4=(yt_short_exp$1.firstMatch((content$1 as dc.String), ));
if((null != temp$6859_$AUTO_$4)){
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$4[1]=((temp$6859_$AUTO_$4 as dc.RegExpMatch).group(1, )));
(fl$4[2]=const lcoc_core.Keyword(null, "video-url", 3045839472, ));
(fl$4[3]=null);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 65544, 65544, fl$4, ), -1, );
}
final dc.RegExpMatch? temp$6859_$AUTO_$5=(pb_video_exp$1.firstMatch((content$1 as dc.String), ));
if((null != temp$6859_$AUTO_$5)){
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$5[1]=null);
(fl$5[2]=const lcoc_core.Keyword(null, "video-url", 3045839472, ));
(fl$5[3]=((temp$6859_$AUTO_$5 as dc.RegExpMatch).group(1, )));
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 65544, 65544, fl$5, ), -1, );
}
final dc.RegExpMatch? temp$6859_$AUTO_$6=(pb_yt_exp$1.firstMatch((content$1 as dc.String), ));
if((null != temp$6859_$AUTO_$6)){
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
final dc.String? some_$GT_$GT_$7779_$AUTO_$1=((temp$6859_$AUTO_$6 as dc.RegExpMatch).group(1, ));
late final dc.RegExpMatch? some_$GT_$GT_$7779_$AUTO_$2;
if((null == some_$GT_$GT_$7779_$AUTO_$1)){
some_$GT_$GT_$7779_$AUTO_$2=null;
}else{
some_$GT_$GT_$7779_$AUTO_$2=(dc.RegExp("watch\\?v=([^\"&\\s]+)", ).firstMatch((some_$GT_$GT_$7779_$AUTO_$1 as dc.String), ));
}
late final dc.RegExpMatch? Function(dc.dynamic, )? $if_$1;
if((null == some_$GT_$GT_$7779_$AUTO_$2)){
$if_$1=null;
}else{
$if_$1=(dc.dynamic m$1, ){
((m$1 as dc.RegExpMatch).group(1, ));
return some_$GT_$GT_$7779_$AUTO_$2;
};
}
(fl$6[1]=$if_$1);
(fl$6[2]=const lcoc_core.Keyword(null, "video-url", 3045839472, ));
(fl$6[3]=null);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 65544, 65544, fl$6, ), -1, );
}
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$7[1]=null);
(fl$7[2]=const lcoc_core.Keyword(null, "video-url", 3045839472, ));
(fl$7[3]=null);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 65544, 65544, fl$7, ), -1, );
}

// END extract-video-and-youtube-id

// BEGIN fetch-ines
dc.dynamic fetch_ines(dc.dynamic query$1, ) async {
final dc.dynamic data$1=(await lcold_api.load_ines_data());
final dc.RegExp regex$1=(lcold_api.word_bound_regex(query$1, ) as dc.RegExp);
return (lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.comp.$_invoke$2((lcoc_core.filter.$_invoke$1((dc.dynamic item$1, ){
late final dc.dynamic palavra$1;
if((item$1 is lcoc_core.ILookup$iface)){
palavra$1=((item$1 as lcoc_core.ILookup$iface).$_lookup$2("palavra", "", ));
}else{
palavra$1=((lcoc_core.ILookup.extensions(item$1, ) as lcoc_core.ILookup$ext).$_lookup$2(item$1, "palavra", "", ));
}
return (regex$1.hasMatch((lcold_api.normalize(palavra$1, ) as dc.String), ));
}, )), (lcoc_core.map.$_invoke$1((dc.dynamic item$2, ){
late final dc.String palavra$2;
if((item$2 is lcoc_core.ILookup$iface)){
palavra$2=(((item$2 as lcoc_core.ILookup$iface).$_lookup$1("palavra", )) as dc.String);
}else{
palavra$2=(((lcoc_core.ILookup.extensions(item$2, ) as lcoc_core.ILookup$ext).$_lookup$1(item$2, "palavra", )) as dc.String);
}
late final dc.String video$1;
if((item$2 is lcoc_core.ILookup$iface)){
video$1=(((item$2 as lcoc_core.ILookup$iface).$_lookup$1("video", )) as dc.String);
}else{
video$1=(((lcoc_core.ILookup.extensions(item$2, ) as lcoc_core.ILookup$ext).$_lookup$1(item$2, "video", )) as dc.String);
}
late final dc.String image$1;
if((item$2 is lcoc_core.ILookup$iface)){
image$1=(((item$2 as lcoc_core.ILookup$iface).$_lookup$1("image", )) as dc.String);
}else{
image$1=(((lcoc_core.ILookup.extensions(item$2, ) as lcoc_core.ILookup$ext).$_lookup$1(item$2, "image", )) as dc.String);
}
late final dc.dynamic $if_$7;
if((item$2 is lcoc_core.ILookup$iface)){
$if_$7=((item$2 as lcoc_core.ILookup$iface).$_lookup$1("descricao", ));
}else{
$if_$7=((lcoc_core.ILookup.extensions(item$2, ) as lcoc_core.ILookup$ext).$_lookup$1(item$2, "descricao", ));
}
late final dc.dynamic $if_$6;
if((item$2 is lcoc_core.ILookup$iface)){
$if_$6=((item$2 as lcoc_core.ILookup$iface).$_lookup$1("exemplo", ));
}else{
$if_$6=((lcoc_core.ILookup.extensions(item$2, ) as lcoc_core.ILookup$ext).$_lookup$1(item$2, "exemplo", ));
}
late final dc.dynamic $if_$5;
if((item$2 is lcoc_core.ILookup$iface)){
$if_$5=((item$2 as lcoc_core.ILookup$iface).$_lookup$1("libras", ));
}else{
$if_$5=((lcoc_core.ILookup.extensions(item$2, ) as lcoc_core.ILookup$ext).$_lookup$1(item$2, "libras", ));
}
late final dc.bool $if_$1;
if(video$1.isEmpty){
$if_$1=false;
}else{
$if_$1=true;
}
late final dc.String? $if_$4;
if($if_$1){
$if_$4=(lcoc_core.str.$_invoke$2("https://dicionario.ines.gov.br/public/media/palavras/videos/", video$1, ));
}else{
$if_$4=null;
}
late final dc.bool $if_$2;
if(image$1.isEmpty){
$if_$2=false;
}else{
$if_$2=true;
}
late final dc.String? $if_$3;
if($if_$2){
$if_$3=(lcoc_core.str.$_invoke$2("https://dicionario.ines.gov.br/public/media/palavras/images/", image$1, ));
}else{
$if_$3=null;
}
final dc.String $1=(dc.Uri.encodeComponent(palavra$2, ));
final dc.String $2=(lcoc_core.str.$_invoke$2("https://dicionario.ines.gov.br/pt/search?word=", $1, ));
return (lcold_models.make_dict_item.$_invoke_more$10(const lcoc_core.Keyword(null, "title", 3035382670, ), palavra$2, const lcoc_core.Keyword(null, "description", 1880444823, ), $if_$7, const lcoc_core.Keyword(null, "exemplo", 261906216, ), $if_$6, const lcoc_core.Keyword(null, "libras", 154282157, ), $if_$5, const lcoc_core.Keyword(null, "video-url", 3045839472, ), [$if_$4, const lcoc_core.Keyword(null, "image-url", 2752788238, ), $if_$3, const lcoc_core.Keyword(null, "link", 1569434702, ), $2, const lcoc_core.Keyword(null, "source", 10120462, ), "INES", ], ));
}, )), )), data$1, ));
}

// END fetch-ines

// BEGIN fetch-libras-academica-uff
dc.dynamic fetch_libras_academica_uff(dc.dynamic query$1, ){
return lcold_api.fetch_wordpress("https://librasacademica.uff.br/wp-json/wp/v2/posts?search=", query$1, (dc.dynamic item$1, ){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, "content", ));
(fl$1[1]="rendered");
final dc.dynamic content$1=(lcoc_core.get_in.$_invoke$3(item$1, lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, ), "", ));
final dc.dynamic extraction$1=lcold_api.extract_video_and_youtube_id(content$1, );
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, "title", ));
(fl$2[1]="rendered");
final dc.dynamic $2=(lcoc_core.get_in.$_invoke$2(item$1, lcoc_core.PersistentVector(null, 2, 5, arg$2, fl$2, -1, ), ));
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(2, "excerpt", ));
(fl$3[1]="rendered");
final dc.dynamic $1=(lcoc_core.get_in.$_invoke$2(item$1, lcoc_core.PersistentVector(null, 2, 5, arg$3, fl$3, -1, ), ));
final dc.dynamic arg$5=(const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(extraction$1, ));
final dc.dynamic arg$4=(const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(extraction$1, ));
late final dc.dynamic $if_$1;
if((item$1 is lcoc_core.ILookup$iface)){
$if_$1=((item$1 as lcoc_core.ILookup$iface).$_lookup$1("link", ));
}else{
$if_$1=((lcoc_core.ILookup.extensions(item$1, ) as lcoc_core.ILookup$ext).$_lookup$1(item$1, "link", ));
}
return (lcold_models.make_dict_item.$_invoke_more$10(const lcoc_core.Keyword(null, "title", 3035382670, ), $2, const lcoc_core.Keyword(null, "description", 1880444823, ), $1, const lcoc_core.Keyword(null, "video-url", 3045839472, ), arg$5, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), arg$4, const lcoc_core.Keyword(null, "link", 1569434702, ), [$if_$1, const lcoc_core.Keyword(null, "source", 10120462, ), "LibrasAcademicaUFF", ], ));
}, );
}

// END fetch-libras-academica-uff

// BEGIN fetch-rede-surdos
dc.dynamic fetch_rede_surdos(dc.dynamic query$1, ){
return lcold_api.fetch_wordpress("https://redesurdosce.ufc.br/wp-json/wp/v2/posts?search=", query$1, (dc.dynamic item$1, ){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, "content", ));
(fl$1[1]="rendered");
final dc.dynamic content$1=(lcoc_core.get_in.$_invoke$3(item$1, lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, ), "", ));
final dc.dynamic extraction$1=lcold_api.extract_video_and_youtube_id(content$1, );
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, "title", ));
(fl$2[1]="rendered");
final dc.dynamic $1=(lcoc_core.get_in.$_invoke$2(item$1, lcoc_core.PersistentVector(null, 2, 5, arg$2, fl$2, -1, ), ));
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(2, "excerpt", ));
(fl$3[1]="rendered");
final dc.String excerpt$1=((lcoc_core.get_in.$_invoke$3(item$1, lcoc_core.PersistentVector(null, 2, 5, arg$3, fl$3, -1, ), "", )) as dc.String);
late final dc.dynamic $if_$2;
if(excerpt$1.isEmpty){
$if_$2=content$1;
}else{
$if_$2=excerpt$1;
}
final dc.dynamic arg$5=(const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(extraction$1, ));
final dc.dynamic arg$4=(const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(extraction$1, ));
late final dc.dynamic $if_$1;
if((item$1 is lcoc_core.ILookup$iface)){
$if_$1=((item$1 as lcoc_core.ILookup$iface).$_lookup$1("link", ));
}else{
$if_$1=((lcoc_core.ILookup.extensions(item$1, ) as lcoc_core.ILookup$ext).$_lookup$1(item$1, "link", ));
}
return (lcold_models.make_dict_item.$_invoke_more$10(const lcoc_core.Keyword(null, "title", 3035382670, ), $1, const lcoc_core.Keyword(null, "description", 1880444823, ), $if_$2, const lcoc_core.Keyword(null, "video-url", 3045839472, ), arg$5, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), arg$4, const lcoc_core.Keyword(null, "link", 1569434702, ), [$if_$1, const lcoc_core.Keyword(null, "source", 10120462, ), "RedeSurdos", ], ));
}, );
}

// END fetch-rede-surdos

// BEGIN fetch-spread-the-sign
dc.dynamic fetch_spread_the_sign(dc.dynamic query$1, ) async {
final dc.String url_str$1=(lcoc_core.str.$_invoke$2("https://www.spreadthesign.com/pt.br/search/?q=", (dc.Uri.encodeQueryComponent((query$1 as dc.String), )), ));
final dc.dynamic body$1=(await (lcold_api.fetch_url.$_invoke$3(url_str$1, const lcoc_core.Keyword(null, "headers", 3818060152, ), lcold_api.sts_headers$v1, )));
final dc.RegExp regex$1=(lcold_api.word_bound_regex(query$1, ) as dc.RegExp);
final dc.RegExp video_exp$1=dc.RegExp("<video[^>]*src\\s*=\\s*[\"'](https:\\/\\/media\\.spreadthesign\\.com\\/video\\/mp4\\/[^\"']+)[\"']", );
final dc.RegExpMatch? video_match$1=(video_exp$1.firstMatch((body$1 as dc.String), ));
final lcoc_core.Atom results$1=(lcoc_core.atom.$_invoke$1(lcoc_core.$_EMPTY_VECTOR, ));
if((null != video_match$1)){
final dc.String? video_url$1=((video_match$1 as dc.RegExpMatch).group(1, ));
final dc.RegExp title_exp$1=dc.RegExp("<span class=\"flag-icon flag-icon-br bordered\"><\\/span>\\s*([^<\n]+)", );
final dc.RegExpMatch? title_match$1=(title_exp$1.firstMatch((body$1 as dc.String), ));
if((null != title_match$1)){
final dc.String title$1=(((title_match$1 as dc.RegExpMatch).group(1, ) as dc.String).trim());
if((regex$1.hasMatch((lcold_api.normalize(title$1, ) as dc.String), ))){
(lcoc_core.swap$BANG_.$_invoke$3(results$1, lcoc_core.conj, (lcold_models.make_dict_item.$_invoke$8(const lcoc_core.Keyword(null, "title", 3035382670, ), title$1, const lcoc_core.Keyword(null, "video-url", 3045839472, ), video_url$1, const lcoc_core.Keyword(null, "link", 1569434702, ), url_str$1, const lcoc_core.Keyword(null, "source", 10120462, ), "SpreadTheSign", )), ));
}else{
}
}else{
}
}else{
}
final dc.RegExp result_exp$1=dc.RegExp("<div class=\"search-result-title\">\\s*<a href=\"(\\/pt\\.br\\/word\\/[^\"]+)\"[^>]*>\\s*([^<\n]+)", );
final dc.Iterable<dc.RegExpMatch> matches$1=(result_exp$1.allMatches((body$1 as dc.String), ));
final lcoc_core.Atom detail_futures$1=(lcoc_core.atom.$_invoke$1(lcoc_core.$_EMPTY_VECTOR, ));
final dc.Iterator it$7838_$AUTO_$1=(lcoc_core.iterator.$_invoke$1(matches$1, ));
do {
if((it$7838_$AUTO_$1.moveNext())){
final dc.RegExpMatch match$1=(it$7838_$AUTO_$1.current as dc.RegExpMatch);
final dc.String? link$1=(match$1.group(1, ));
final dc.String? some_$GT_$7772_$AUTO_$1=(match$1.group(2, ));
late final dc.String? title$2;
if((null == some_$GT_$7772_$AUTO_$1)){
title$2=null;
}else{
title$2=((some_$GT_$7772_$AUTO_$1 as dc.String).trim());
}
late final dc.Object? $if_$1;
if((null != link$1)){
if((null != title$2)){
$if_$1=(regex$1.hasMatch((lcold_api.normalize(title$2, ) as dc.String), ));
}else{
$if_$1=title$2;
}
}else{
$if_$1=link$1;
}
if(((false != $if_$1) && (null != $if_$1))){
(lcoc_core.swap$BANG_.$_invoke$3(detail_futures$1, lcoc_core.conj, lcold_api.fetch_spread_the_sign_detail((lcoc_core.str.$_invoke$2("https://www.spreadthesign.com", link$1, )), title$2, ), ));
}else{
}
continue;
}else{
}
break;
} while(true);
final dc.dynamic castable$1=lcoc_core.deref(detail_futures$1, );
late final dc.Iterable<dc.Future<dc.dynamic>> casted$1;
if((null == castable$1)){
casted$1=(dc.Iterable<dc.Future<dc.dynamic>>.empty());
}else if((castable$1 is dc.Iterable<dc.Future<dc.dynamic>>)){
casted$1=(castable$1 as dc.Iterable<dc.Future<dc.dynamic>>);
}else{
casted$1=((castable$1 as dc.Iterable).cast<dc.Future<dc.dynamic>>());
}
final dc.Future<dc.List<dc.dynamic>> $1=(dc.Future.wait(casted$1, ));
final dc.List<dc.dynamic> details$1=(await $1);
final dc.Iterator it$7838_$AUTO_$2=(lcoc_core.iterator.$_invoke$1((lcoc_core.filter.$_invoke$2(lcoc_core.some$QMARK_, details$1, )), ));
do {
if((it$7838_$AUTO_$2.moveNext())){
final dc.dynamic item$1=it$7838_$AUTO_$2.current;
final dc.dynamic test$1=lcoc_core.some((dc.dynamic r$1, ){
return (lcoc_core.$EQ_.$_invoke$2((const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(r$1, )), (const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(item$1, )), ));
}, lcoc_core.deref(results$1, ), );
if(((false != test$1) && (null != test$1))){
}else{
(lcoc_core.swap$BANG_.$_invoke$3(results$1, lcoc_core.conj, item$1, ));
}
continue;
}else{
}
break;
} while(true);
return lcoc_core.deref(results$1, );
}

// END fetch-spread-the-sign

// BEGIN fetch-spread-the-sign-detail
dc.dynamic fetch_spread_the_sign_detail(dc.dynamic url_str$1, dc.dynamic title$1, ) async {
try {
final dc.dynamic body$1=(await (lcold_api.fetch_url.$_invoke$3(url_str$1, const lcoc_core.Keyword(null, "headers", 3818060152, ), lcold_api.sts_headers$v1, )));
final dc.RegExp video_exp$1=dc.RegExp("<video[^>]*src\\s*=\\s*[\"'](https:\\/\\/media\\.spreadthesign\\.com\\/video\\/mp4\\/[^\"']+)[\"']", );
final dc.RegExpMatch? video_match$1=(video_exp$1.firstMatch((body$1 as dc.String), ));
if((null != video_match$1)){
return (lcold_models.make_dict_item.$_invoke$8(const lcoc_core.Keyword(null, "title", 3035382670, ), title$1, const lcoc_core.Keyword(null, "video-url", 3045839472, ), ((video_match$1 as dc.RegExpMatch).group(1, )), const lcoc_core.Keyword(null, "link", 1569434702, ), url_str$1, const lcoc_core.Keyword(null, "source", 10120462, ), "SpreadTheSign", ));
}
return null;
} on dc.Object catch (e$1) {
(lcold_api.log.$_invoke$2("Error fetching SpreadTheSign detail:", e$1, ));
return null;
}
}

// END fetch-spread-the-sign-detail

// BEGIN fetch-ufv
dc.dynamic fetch_ufv(dc.dynamic query$1, ) async {
final dc.dynamic body$1=(await (lcold_api.fetch_url.$_invoke$1((lcoc_core.str.$_invoke$2("https://sistemas.cead.ufv.br/capes/dicionario/?s=", (dc.Uri.encodeQueryComponent((query$1 as dc.String), )), )), )));
final dc.RegExp regex$1=(lcold_api.word_bound_regex(query$1, ) as dc.RegExp);
final dc.RegExp item_exp$1=dc.RegExp("<a href=\"([^\"]+)\">(?:\\s*)<h4>([^<]+)</h4>", );
final dc.Iterable<dc.RegExpMatch> matches$1=(item_exp$1.allMatches((body$1 as dc.String), ));
final lcoc_core.Atom detail_futures$1=(lcoc_core.atom.$_invoke$1(lcoc_core.$_EMPTY_VECTOR, ));
final dc.Iterator it$7838_$AUTO_$1=(lcoc_core.iterator.$_invoke$1(matches$1, ));
do {
if((it$7838_$AUTO_$1.moveNext())){
final dc.RegExpMatch match$1=(it$7838_$AUTO_$1.current as dc.RegExpMatch);
final dc.String? link$1=(match$1.group(1, ));
final dc.String? some_$GT_$7772_$AUTO_$1=(match$1.group(2, ));
late final dc.String? title$1;
if((null == some_$GT_$7772_$AUTO_$1)){
title$1=null;
}else{
title$1=((some_$GT_$7772_$AUTO_$1 as dc.String).trim());
}
late final dc.Object? $if_$1;
if((null != link$1)){
if((null != title$1)){
$if_$1=(regex$1.hasMatch((lcold_api.normalize(title$1, ) as dc.String), ));
}else{
$if_$1=title$1;
}
}else{
$if_$1=link$1;
}
if(((false != $if_$1) && (null != $if_$1))){
(lcoc_core.swap$BANG_.$_invoke$3(detail_futures$1, lcoc_core.conj, lcold_api.fetch_ufv_detail(link$1, title$1, ), ));
}else{
}
continue;
}else{
}
break;
} while(true);
final dc.dynamic castable$1=lcoc_core.deref(detail_futures$1, );
late final dc.Iterable<dc.Future<dc.dynamic>> casted$1;
if((null == castable$1)){
casted$1=(dc.Iterable<dc.Future<dc.dynamic>>.empty());
}else if((castable$1 is dc.Iterable<dc.Future<dc.dynamic>>)){
casted$1=(castable$1 as dc.Iterable<dc.Future<dc.dynamic>>);
}else{
casted$1=((castable$1 as dc.Iterable).cast<dc.Future<dc.dynamic>>());
}
final dc.Future<dc.List<dc.dynamic>> $1=(dc.Future.wait(casted$1, ));
final dc.List<dc.dynamic> details$1=(await $1);
return (lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.filter.$_invoke$1(lcoc_core.some$QMARK_, )), details$1, ));
}

// END fetch-ufv

// BEGIN fetch-ufv-detail
dc.dynamic fetch_ufv_detail(dc.dynamic url_str$1, dc.dynamic title$1, ) async {
try {
final dc.dynamic body$1=(await (lcold_api.fetch_url.$_invoke$1(url_str$1, )));
final dc.RegExp video_exp$1=dc.RegExp("<video[^>]+src\\s*=\\s*[\"']([^\"']+)[\"']", );
final dc.RegExpMatch? video_match$1=(video_exp$1.firstMatch((body$1 as dc.String), ));
if((null != video_match$1)){
final dc.String? some_$GT_$7772_$AUTO_$1=((video_match$1 as dc.RegExpMatch).group(1, ));
late final dc.String? video_url$1;
if((null == some_$GT_$7772_$AUTO_$1)){
video_url$1=null;
}else{
video_url$1=((some_$GT_$7772_$AUTO_$1 as dc.String).trim());
}
late final dc.bool $if_$1;
if((video_url$1 as dc.String).isEmpty){
$if_$1=false;
}else{
$if_$1=true;
}
if($if_$1){
return (lcold_models.make_dict_item.$_invoke$8(const lcoc_core.Keyword(null, "title", 3035382670, ), title$1, const lcoc_core.Keyword(null, "video-url", 3045839472, ), video_url$1, const lcoc_core.Keyword(null, "link", 1569434702, ), url_str$1, const lcoc_core.Keyword(null, "source", 10120462, ), "UFV", ));
}
return null;
}
return null;
} on dc.Object catch (e$1) {
(lcold_api.log.$_invoke$2("Error fetching UFV detail:", e$1, ));
return null;
}
}

// END fetch-ufv-detail

// BEGIN fetch-url
lcoc_core.IFn$iface fetch_url=lcold_api.ifn_fetch_url_M__18695hm$1(null, );

// END fetch-url

// BEGIN fetch-wordpress
dc.dynamic fetch_wordpress(dc.dynamic search_url$1, dc.dynamic query$1, dc.dynamic item_$GT_dict$1, ) async {
final dc.dynamic body$1=(await (lcold_api.fetch_url.$_invoke$1((lcoc_core.str.$_invoke$3(search_url$1, (dc.Uri.encodeQueryComponent((query$1 as dc.String), )), "&per_page=100", )), )));
final dc.dynamic data$1=(d_convert.json.decode((body$1 as dc.String), ));
final dc.RegExp regex$1=(lcold_api.word_bound_regex(query$1, ) as dc.RegExp);
return (lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.comp.$_invoke$2((lcoc_core.filter.$_invoke$1((dc.dynamic item$1, ){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, "title", ));
(fl$1[1]="rendered");
final dc.dynamic title$1=(lcoc_core.get_in.$_invoke$3(item$1, lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, ), "", ));
return (regex$1.hasMatch((lcold_api.normalize(title$1, ) as dc.String), ));
}, )), (lcoc_core.map.$_invoke$1(item_$GT_dict$1, )), )), data$1, ));
}

// END fetch-wordpress

// BEGIN ifn_fetch_url_M__18695hm$1
class ifn_fetch_url_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_fetch_url_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcold_api.ifn_fetch_url_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic url_str$1, dc.dynamic p$9696_$1, ) async {
late final dc.dynamic map$9698_$2;
if(((lcoc_core.ISeq.satisfies(p$9696_$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(p$9696_$1, );
if(((false != test$1) && (null != test$1))){
map$9698_$2=lcoc_core.seq_to_map_for_destructuring(p$9696_$1, );
}else{
late final dc.dynamic $if_$1;
if((p$9696_$1 is lcoc_core.ISeqable$iface)){
$if_$1=((p$9696_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(p$9696_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(p$9696_$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
map$9698_$2=lcoc_core.first(p$9696_$1, );
}else{
map$9698_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9698_$2=p$9696_$1;
}
late final dc.dynamic headers$1;
if((map$9698_$2 is lcoc_core.ILookup$iface)){
headers$1=((map$9698_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "headers", 3818060152, ), ));
}else{
headers$1=((lcoc_core.ILookup.extensions(map$9698_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9698_$2, const lcoc_core.Keyword(null, "headers", 3818060152, ), ));
}
final dc.Uri url$1=(dc.Uri.parse((url_str$1 as dc.String), ));
late final da.Future<h_http.Response> future$1;
if(((false != headers$1) && (null != headers$1))){
late final dc.Map<dc.String, dc.String>? $if_$2;
if((null != headers$1)){
late final dc.Map<dc.String, dc.String> casted$1;
if((headers$1 is dc.Map<dc.String, dc.String>)){
casted$1=(headers$1 as dc.Map<dc.String, dc.String>);
}else{
casted$1=((headers$1 as dc.Map).cast<dc.String, dc.String>());
}
$if_$2=casted$1;
}else{
$if_$2=null;
}
future$1=h_http.get(url$1, headers: $if_$2, );
}else{
future$1=h_http.get(url$1, );
}
final h_http.Response response$1=(await (future$1.timeout(lcold_api.request_timeout$v1, )));
if((lcoc_core.not$EQ_.$_invoke$2(response$1.statusCode, 200, ))){
throw dc.Exception((lcoc_core.str.$_invoke$4("HTTP ", response$1.statusCode, " em ", url_str$1, )), );
}else{
}
return response$1.body;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_fetch_url_M__18695hm$1

// BEGIN ifn_log_M__18695hm$1
class ifn_log_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_Z implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_log_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcold_api.ifn_log_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic args$1, ){
if(f_foundation.kDebugMode){
return (lcoc_core.apply.$_invoke$2(lcoc_core.println, args$1, ));
}
return null;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_log_M__18695hm$1

// BEGIN ifn_search_all_M__18695hm$1
class ifn_search_all_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_search_all_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcold_api.ifn_search_all_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic query$1, dc.dynamic p$9703_$1, ) async {
late final dc.dynamic map$9705_$2;
if(((lcoc_core.ISeq.satisfies(p$9703_$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(p$9703_$1, );
if(((false != test$1) && (null != test$1))){
map$9705_$2=lcoc_core.seq_to_map_for_destructuring(p$9703_$1, );
}else{
late final dc.dynamic $if_$1;
if((p$9703_$1 is lcoc_core.ISeqable$iface)){
$if_$1=((p$9703_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(p$9703_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(p$9703_$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
map$9705_$2=lcoc_core.first(p$9703_$1, );
}else{
map$9705_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9705_$2=p$9703_$1;
}
late final dc.dynamic sources$1;
if((map$9705_$2 is lcoc_core.ILookup$iface)){
sources$1=((map$9705_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "sources", 3114193497, ), ));
}else{
sources$1=((lcoc_core.ILookup.extensions(map$9705_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9705_$2, const lcoc_core.Keyword(null, "sources", 3114193497, ), ));
}
late final dc.dynamic wanted$1;
if(((false != sources$1) && (null != sources$1))){
wanted$1=sources$1;
}else{
wanted$1=lcoc_core.keys(lcold_api.source_fetchers$v1, );
}
final dc.dynamic futures$1=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.keep.$_invoke$1((dc.dynamic source_name$1, ){
final dc.dynamic o7144$2=lcold_api.source_fetchers$v1;
late final dc.dynamic temp$6864_$AUTO_$1;
if((o7144$2 is lcoc_core.ILookup$iface)){
temp$6864_$AUTO_$1=((o7144$2 as lcoc_core.ILookup$iface).$_lookup$1(source_name$1, ));
}else{
temp$6864_$AUTO_$1=((lcoc_core.ILookup.extensions(o7144$2, ) as lcoc_core.ILookup$ext).$_lookup$1(o7144$2, source_name$1, ));
}
if(((false != temp$6864_$AUTO_$1) && (null != temp$6864_$AUTO_$1))){
return lcold_api.run_fetcher(source_name$1, temp$6864_$AUTO_$1, query$1, );
}
return null;
}, )), wanted$1, ));
late final dc.Iterable<dc.Future<dc.dynamic>> casted$1;
if((null == futures$1)){
casted$1=(dc.Iterable<dc.Future<dc.dynamic>>.empty());
}else if((futures$1 is dc.Iterable<dc.Future<dc.dynamic>>)){
casted$1=(futures$1 as dc.Iterable<dc.Future<dc.dynamic>>);
}else{
casted$1=((futures$1 as dc.Iterable).cast<dc.Future<dc.dynamic>>());
}
final dc.Future<dc.List<dc.dynamic>> $1=(dc.Future.wait(casted$1, ));
final dc.List<dc.dynamic> results$1=(await $1);
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "failed", 2997450177, ), ));
(fl$1[1]=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.keep.$_invoke$1(const lcoc_core.Keyword(null, "failed", 2997450177, ), )), results$1, )));
(fl$1[2]=const lcoc_core.Keyword(null, "items", 3137390504, ));
(fl$1[3]=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.mapcat.$_invoke$1(const lcoc_core.Keyword(null, "items", 3137390504, ), )), results$1, )));
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 258, 258, fl$1, ), -1, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_search_all_M__18695hm$1

// BEGIN ines-cache
dc.dynamic ines_cache=(lcoc_core.atom.$_invoke$1(null, ));

// END ines-cache

// BEGIN ines-cache-file
dc.dynamic ines_cache_file() async {
final d_io.Directory dir$1=(await p_path_provider.getApplicationSupportDirectory());
return d_io.File((lcoc_core.str.$_invoke$2(dir$1.path, "/ines_palavras.json", )), );
}

// END ines-cache-file

// BEGIN ines-words
dc.dynamic ines_words(){
final dc.dynamic temp$6859_$AUTO_$1=lcoc_core.deref(lcold_api.ines_cache, );
if(((false != temp$6859_$AUTO_$1) && (null != temp$6859_$AUTO_$1))){
return (lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.keep.$_invoke$1((dc.dynamic p1$9699_$SHARP_$1, ){
if((p1$9699_$SHARP_$1 is lcoc_core.ILookup$iface)){
return ((p1$9699_$SHARP_$1 as lcoc_core.ILookup$iface).$_lookup$1("palavra", ));
}
return ((lcoc_core.ILookup.extensions(p1$9699_$SHARP_$1, ) as lcoc_core.ILookup$ext).$_lookup$1(p1$9699_$SHARP_$1, "palavra", ));
}, )), temp$6859_$AUTO_$1, ));
}
return lcoc_core.$_EMPTY_VECTOR;
}

// END ines-words

// BEGIN load-ines-data
dc.dynamic load_ines_data() async {
final dc.dynamic temp$6859_$AUTO_$1=lcoc_core.deref(lcold_api.ines_cache, );
if(((false != temp$6859_$AUTO_$1) && (null != temp$6859_$AUTO_$1))){
return temp$6859_$AUTO_$1;
}
try {
final dc.dynamic body$1=(await (lcold_api.fetch_url.$_invoke$1("https://dicionario.ines.gov.br/public/site/js/palavras.js", )));
final dc.dynamic data$1=lcold_api.parse_ines_body(body$1, );
if((null == data$1)){
throw dc.Exception("INES: resposta em formato inesperado", );
}else{
}
(lcoc_core.reset$BANG_(lcold_api.ines_cache, data$1, ));
(lcold_api.save_ines_to_disk$BANG_(body$1, ));
return data$1;
} on dc.Object catch (e$1) {
(lcold_api.log.$_invoke$2("INES network fetch failed, trying disk cache:", e$1, ));
final dc.dynamic temp$6859_$AUTO_$2=(await lcold_api.load_ines_from_disk());
if(((false != temp$6859_$AUTO_$2) && (null != temp$6859_$AUTO_$2))){
(lcoc_core.reset$BANG_(lcold_api.ines_cache, temp$6859_$AUTO_$2, ));
return temp$6859_$AUTO_$2;
}
rethrow;
}
}

// END load-ines-data

// BEGIN load-ines-from-disk
dc.dynamic load_ines_from_disk() async {
try {
final d_io.File f$1=((await lcold_api.ines_cache_file()) as d_io.File);
if((await (f$1.exists()))){
return lcold_api.parse_ines_body((await (f$1.readAsString())), );
}
return null;
} on dc.Object catch (e$1) {
(lcold_api.log.$_invoke$2("INES: could not read disk cache:", e$1, ));
return null;
}
}

// END load-ines-from-disk

// BEGIN log
lcoc_core.IFn$iface log=lcold_api.ifn_log_M__18695hm$1(null, );

// END log

// BEGIN normalize
dc.dynamic normalize(dc.dynamic s$1, ){
return (d_diacritic.removeDiacritics((s$1 as dc.String), ).toLowerCase());
}

// END normalize

// BEGIN parse-ines-body
dc.dynamic parse_ines_body(dc.dynamic body$1, ){
final dc.int start$1=((body$1 as dc.String).indexOf("[", ));
final dc.int end$1=((body$1 as dc.String).lastIndexOf("]", ));
final dc.bool and$6836_$AUTO_$1=(lcoc_core.not$EQ_.$_invoke$2(start$1, -1, ));
late final dc.bool $if_$1;
if(and$6836_$AUTO_$1){
$if_$1=(lcoc_core.not$EQ_.$_invoke$2(end$1, -1, ));
}else{
$if_$1=and$6836_$AUTO_$1;
}
if($if_$1){
return (d_convert.json.decode(((body$1 as dc.String).substring(start$1, (1 + end$1), )), ));
}
return null;
}

// END parse-ines-body

// BEGIN request-timeout
dc.dynamic request_timeout$v1=const dc.Duration(seconds: 10, );

// END request-timeout

// BEGIN run-fetcher
dc.dynamic run_fetcher(dc.dynamic source_name$1, dc.dynamic fetcher$1, dc.dynamic query$1, ) async {
try {
late final dc.dynamic $if_$1;
if((fetcher$1 is dc.Function)){
$if_$1=(fetcher$1 as dc.Function)(query$1, );
}else if((fetcher$1 is lcoc_core.IFn$iface)){
$if_$1=((fetcher$1 as lcoc_core.IFn$iface).$_invoke$1(query$1, ));
}else{
$if_$1=(lcoc_core.IFn.extensions(fetcher$1, ).$_invoke$1(fetcher$1, query$1, ));
}
final dc.dynamic items$1=(await $if_$1);
late final dc.int cast$1;
if((items$1 is lcoc_core.ICounted$iface)){
cast$1=(((items$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(items$1, ) as lcoc_core.ICounted$ext).$_count$0(items$1, )) as dc.int);
}
(lcold_api.log.$_invoke$5("search:", source_name$1, "->", cast$1, "items", ));
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "items", 3137390504, ), ));
(fl$1[1]=items$1);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 256, 256, fl$1, ), -1, );
} on dc.Object catch (e$1) {
(lcold_api.log.$_invoke$4("!!! search failed for", source_name$1, ":", e$1, ));
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "failed", 2997450177, ), ));
(fl$2[1]=source_name$1);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 2, 2, fl$2, ), -1, );
}
}

// END run-fetcher

// BEGIN save-ines-to-disk!
dc.dynamic save_ines_to_disk$BANG_(dc.dynamic body$1, ) async {
try {
final dc.dynamic f$1=(await lcold_api.ines_cache_file());
return (await ((f$1 as d_io.File).writeAsString((body$1 as dc.String), )));
} on dc.Object catch (e$1) {
return (lcold_api.log.$_invoke$2("INES: could not persist cache:", e$1, ));
}
}

// END save-ines-to-disk!

// BEGIN search-all
lcoc_core.IFn$iface search_all=lcold_api.ifn_search_all_M__18695hm$1(null, );

// END search-all

// BEGIN source-fetchers
dc.dynamic source_fetchers$v1=(){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(10, "INES", ));
(fl$1[1]=lcold_api.fetch_ines);
(fl$1[2]="RedeSurdos");
(fl$1[3]=lcold_api.fetch_rede_surdos);
(fl$1[4]="UFV");
(fl$1[5]=lcold_api.fetch_ufv);
(fl$1[6]="LibrasAcademicaUFF");
(fl$1[7]=lcold_api.fetch_libras_academica_uff);
(fl$1[8]="SpreadTheSign");
(fl$1[9]=lcold_api.fetch_spread_the_sign);
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(5, 29192, 29192, fl$1, ), -1, );
}();

// END source-fetchers

// BEGIN sts-headers
dc.dynamic sts_headers$v1=(){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, "User-Agent", ));
(fl$1[1]="Mozilla/5.0");
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 4096, 4096, fl$1, ), -1, );
}();

// END sts-headers

// BEGIN word-bound-regex
dc.dynamic word_bound_regex(dc.dynamic query$1, ){
return dc.RegExp((lcoc_core.str.$_invoke$3("\\b", (dc.RegExp.escape((lcold_api.normalize(query$1, ) as dc.String), )), "\\b", )), unicode: true, );
}

// END word-bound-regex

// BEGIN youtube-search-url
dc.dynamic youtube_search_url(dc.dynamic query$1, ){
return (lcoc_core.str.$_invoke$2("https://www.youtube.com/results?search_query=", (dc.Uri.encodeQueryComponent((lcoc_core.str.$_invoke$2(query$1, " em libras", )), )), ));
}

// END youtube-search-url
