// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:convert" as d_convert;
import "package:url_launcher/url_launcher.dart" as u_url_launcher;
import "dart:core" as dc;
import "../cljd/core.dart" as lcoc_core;
import "models.dart" as lcold_models;
import "api.dart" as lcold_api;
import "package:flutter/services.dart" as f_services;
import "strings.dart" as lcold_strings;
import "dart:async" as da;
import "package:shared_preferences/shared_preferences.dart" as s_shared_preferences;
import "../cljd/string.dart" as lcoc_string;
import "state.dart" as lcold_state;
import "package:flutter/material.dart" as f_material;

// BEGIN active-player
dc.dynamic active_player=(lcoc_core.atom.$_invoke$1(null, ));

// END active-player

// BEGIN all-sources
dc.dynamic all_sources$v1=(){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(10, "INES", ));
(fl$1[1]="INES");
(fl$1[2]="RedeSurdos");
(fl$1[3]="RedeSurdos");
(fl$1[4]="UFV");
(fl$1[5]="UFV");
(fl$1[6]="LibrasAcademicaUFF");
(fl$1[7]="LibrasAcademicaUFF");
(fl$1[8]="SpreadTheSign");
(fl$1[9]="SpreadTheSign");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(5, 29192, 29192, fl$1, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
return lcoc_core.PersistentHashSet(null, cast$1, -1, );
}();

// END all-sources

// BEGIN app-state
dc.dynamic app_state=(){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(28, const lcoc_core.Keyword(null, "is-share-minimal", 2561305987, ), ));
(fl$1[1]=false);
(fl$1[2]=const lcoc_core.Keyword(null, "error-message", 1587404037, ));
(fl$1[3]=null);
(fl$1[4]=const lcoc_core.Keyword(null, "enabled-sources", 2677619369, ));
(fl$1[5]=lcold_state.all_sources$v1);
(fl$1[6]=const lcoc_core.Keyword(null, "search-results", 941371274, ));
(fl$1[7]=lcoc_core.$_EMPTY_VECTOR);
(fl$1[8]=const lcoc_core.Keyword(null, "search-token", 3722163276, ));
(fl$1[9]=0);
(fl$1[10]=const lcoc_core.Keyword(null, "search-query", 3980981005, ));
(fl$1[11]="");
(fl$1[12]=const lcoc_core.Keyword(null, "is-loading", 3908007470, ));
(fl$1[13]=false);
(fl$1[14]=const lcoc_core.Keyword(null, "failed-sources", 1025871632, ));
(fl$1[15]=lcoc_core.$_EMPTY_VECTOR);
(fl$1[16]=const lcoc_core.Keyword(null, "theme-mode", 48651601, ));
(fl$1[17]=f_material.ThemeMode.light);
(fl$1[18]=const lcoc_core.Keyword(null, "last-searched", 579106517, ));
(fl$1[19]=null);
(fl$1[20]=const lcoc_core.Keyword(null, "active-filters", 2628296726, ));
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, "Ambos", ));
(fl$2[1]="Ambos");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 65536, 65536, fl$2, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
(fl$1[21]=lcoc_core.PersistentHashSet(null, cast$1, -1, ));
(fl$1[22]=const lcoc_core.Keyword(null, "show-youtube-button", 3823822520, ));
(fl$1[23]=true);
(fl$1[24]=const lcoc_core.Keyword(null, "favorites", 2198573211, ));
(fl$1[25]=lcoc_core.$_EMPTY_VECTOR);
(fl$1[26]=const lcoc_core.Keyword(null, "recent-searches", 1456002685, ));
(fl$1[27]=lcoc_core.$_EMPTY_VECTOR);
final lcoc_core.Atom $1=(lcoc_core.atom.$_invoke$1(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(14, 694384168, 694384168, fl$1, ), -1, ), ));
return $1;
}();

// END app-state

// BEGIN claim-playback!
dc.dynamic claim_playback$BANG_(dc.dynamic id$1, dc.dynamic pause$BANG_$1, ){
final dc.dynamic map$9731_$1=lcoc_core.deref(lcold_state.active_player, );
late final dc.dynamic map$9731_$2;
if(((lcoc_core.ISeq.satisfies(map$9731_$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(map$9731_$1, );
if(((false != test$1) && (null != test$1))){
map$9731_$2=lcoc_core.seq_to_map_for_destructuring(map$9731_$1, );
}else{
late final dc.dynamic $if_$1;
if((map$9731_$1 is lcoc_core.ISeqable$iface)){
$if_$1=((map$9731_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(map$9731_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(map$9731_$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
map$9731_$2=lcoc_core.first(map$9731_$1, );
}else{
map$9731_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9731_$2=map$9731_$1;
}
late final dc.dynamic prev_id$1;
if((map$9731_$2 is lcoc_core.ILookup$iface)){
prev_id$1=((map$9731_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "id", 17461667, ), ));
}else{
prev_id$1=((lcoc_core.ILookup.extensions(map$9731_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9731_$2, const lcoc_core.Keyword(null, "id", 17461667, ), ));
}
late final dc.dynamic prev_pause$1;
if((map$9731_$2 is lcoc_core.ILookup$iface)){
prev_pause$1=((map$9731_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "pause!", 3551545860, ), ));
}else{
prev_pause$1=((lcoc_core.ILookup.extensions(map$9731_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9731_$2, const lcoc_core.Keyword(null, "pause!", 3551545860, ), ));
}
late final dc.dynamic $if_$2;
if(((false != prev_pause$1) && (null != prev_pause$1))){
if(dc.identical(prev_id$1, id$1, )){
$if_$2=false;
}else{
$if_$2=true;
}
}else{
$if_$2=prev_pause$1;
}
if(((false != $if_$2) && (null != $if_$2))){
try {
if((prev_pause$1 is dc.Function)){
((prev_pause$1 as dc.Function)());
}else if((prev_pause$1 is lcoc_core.IFn$iface)){
((prev_pause$1 as lcoc_core.IFn$iface).$_invoke$0());
}else{
(lcoc_core.IFn.extensions(prev_pause$1, ).$_invoke$0(prev_pause$1, ));
}
} on dc.Object catch (e$1) {
(lcold_api.log.$_invoke$2("Error pausing previous player:", e$1, ));
}
}else{
}
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "id", 17461667, ), ));
(fl$1[1]=id$1);
(fl$1[2]=const lcoc_core.Keyword(null, "pause!", 3551545860, ));
(fl$1[3]=pause$BANG_$1);
return lcoc_core.reset$BANG_(lcold_state.active_player, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 24, 24, fl$1, ), -1, ), );
}

// END claim-playback!

// BEGIN favorite-key
dc.dynamic favorite_key(dc.dynamic item$1, ){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(3, (const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(item$1, )), ));
(fl$1[1]=(const lcoc_core.Keyword(null, "link", 1569434702, ).$_invoke$1(item$1, )));
(fl$1[2]=(const lcoc_core.Keyword(null, "source", 10120462, ).$_invoke$1(item$1, )));
return lcoc_core.PersistentVector(null, 3, 5, arg$1, fl$1, -1, );
}

// END favorite-key

// BEGIN favorite?
dc.dynamic favorite$QMARK_(dc.dynamic item$1, ){
return lcoc_core.boolean(lcoc_core.some((dc.dynamic p1$9732_$SHARP_$1, ){
return (lcoc_core.$EQ_.$_invoke$2(lcold_state.favorite_key(p1$9732_$SHARP_$1, ), lcold_state.favorite_key(item$1, ), ));
}, (const lcoc_core.Keyword(null, "favorites", 2198573211, ).$_invoke$1(lcoc_core.deref(lcold_state.app_state, ), )), ), );
}

// END favorite?

// BEGIN item->json
dc.dynamic item_$GT_json(dc.dynamic item$1, ){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(13, "video_url", ));
(fl$1[1]=(const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(item$1, )));
(fl$1[2]="exemplo");
(fl$1[3]=(const lcoc_core.Keyword(null, "exemplo", 261906216, ).$_invoke$1(item$1, )));
(fl$1[4]="youtube_id");
(fl$1[5]=(const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(item$1, )));
(fl$1[6]="libras");
(fl$1[7]=(const lcoc_core.Keyword(null, "libras", 154282157, ).$_invoke$1(item$1, )));
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(6, "title", ));
(fl$2[1]=(const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(item$1, )));
(fl$2[2]="link");
(fl$2[3]=(const lcoc_core.Keyword(null, "link", 1569434702, ).$_invoke$1(item$1, )));
(fl$2[4]="source");
(fl$2[5]=(const lcoc_core.Keyword(null, "source", 10120462, ).$_invoke$1(item$1, )));
(fl$1[8]=lcoc_core.BitmapNode(3, 68173824, 68173824, fl$2, ));
(fl$1[9]="image_url");
(fl$1[10]=(const lcoc_core.Keyword(null, "image-url", 2752788238, ).$_invoke$1(item$1, )));
(fl$1[11]="description");
(fl$1[12]=(const lcoc_core.Keyword(null, "description", 1880444823, ).$_invoke$1(item$1, )));
final dc.Object? cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(9, 1144094784, 1141997632, fl$1, ), -1, ) as dc.Object?);
return (d_convert.json.encode(cast$1, ));
}

// END item->json

// BEGIN json->item
dc.dynamic json_$GT_item(dc.dynamic encoded$1, ){
try {
final dc.dynamic data$1=(d_convert.json.decode((encoded$1 as dc.String), ));
late final dc.dynamic $if_$9;
if((data$1 is lcoc_core.ILookup$iface)){
$if_$9=((data$1 as lcoc_core.ILookup$iface).$_lookup$1("title", ));
}else{
$if_$9=((lcoc_core.ILookup.extensions(data$1, ) as lcoc_core.ILookup$ext).$_lookup$1(data$1, "title", ));
}
late final dc.dynamic $if_$8;
if((data$1 is lcoc_core.ILookup$iface)){
$if_$8=((data$1 as lcoc_core.ILookup$iface).$_lookup$1("description", ));
}else{
$if_$8=((lcoc_core.ILookup.extensions(data$1, ) as lcoc_core.ILookup$ext).$_lookup$1(data$1, "description", ));
}
late final dc.dynamic $if_$7;
if((data$1 is lcoc_core.ILookup$iface)){
$if_$7=((data$1 as lcoc_core.ILookup$iface).$_lookup$1("exemplo", ));
}else{
$if_$7=((lcoc_core.ILookup.extensions(data$1, ) as lcoc_core.ILookup$ext).$_lookup$1(data$1, "exemplo", ));
}
late final dc.dynamic $if_$6;
if((data$1 is lcoc_core.ILookup$iface)){
$if_$6=((data$1 as lcoc_core.ILookup$iface).$_lookup$1("libras", ));
}else{
$if_$6=((lcoc_core.ILookup.extensions(data$1, ) as lcoc_core.ILookup$ext).$_lookup$1(data$1, "libras", ));
}
late final dc.dynamic $if_$5;
if((data$1 is lcoc_core.ILookup$iface)){
$if_$5=((data$1 as lcoc_core.ILookup$iface).$_lookup$1("video_url", ));
}else{
$if_$5=((lcoc_core.ILookup.extensions(data$1, ) as lcoc_core.ILookup$ext).$_lookup$1(data$1, "video_url", ));
}
late final dc.dynamic $if_$4;
if((data$1 is lcoc_core.ILookup$iface)){
$if_$4=((data$1 as lcoc_core.ILookup$iface).$_lookup$1("image_url", ));
}else{
$if_$4=((lcoc_core.ILookup.extensions(data$1, ) as lcoc_core.ILookup$ext).$_lookup$1(data$1, "image_url", ));
}
late final dc.dynamic $if_$3;
if((data$1 is lcoc_core.ILookup$iface)){
$if_$3=((data$1 as lcoc_core.ILookup$iface).$_lookup$1("youtube_id", ));
}else{
$if_$3=((lcoc_core.ILookup.extensions(data$1, ) as lcoc_core.ILookup$ext).$_lookup$1(data$1, "youtube_id", ));
}
late final dc.dynamic $if_$2;
if((data$1 is lcoc_core.ILookup$iface)){
$if_$2=((data$1 as lcoc_core.ILookup$iface).$_lookup$1("link", ));
}else{
$if_$2=((lcoc_core.ILookup.extensions(data$1, ) as lcoc_core.ILookup$ext).$_lookup$1(data$1, "link", ));
}
late final dc.dynamic $if_$1;
if((data$1 is lcoc_core.ILookup$iface)){
$if_$1=((data$1 as lcoc_core.ILookup$iface).$_lookup$1("source", ));
}else{
$if_$1=((lcoc_core.ILookup.extensions(data$1, ) as lcoc_core.ILookup$ext).$_lookup$1(data$1, "source", ));
}
return (lcold_models.make_dict_item.$_invoke_more$10(const lcoc_core.Keyword(null, "title", 3035382670, ), $if_$9, const lcoc_core.Keyword(null, "description", 1880444823, ), $if_$8, const lcoc_core.Keyword(null, "exemplo", 261906216, ), $if_$7, const lcoc_core.Keyword(null, "libras", 154282157, ), $if_$6, const lcoc_core.Keyword(null, "video-url", 3045839472, ), [$if_$5, const lcoc_core.Keyword(null, "image-url", 2752788238, ), $if_$4, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), $if_$3, const lcoc_core.Keyword(null, "link", 1569434702, ), $if_$2, const lcoc_core.Keyword(null, "source", 10120462, ), $if_$1, ], ));
} on dc.Object catch (e$1) {
(lcold_api.log.$_invoke$2("Could not decode favorite:", e$1, ));
return null;
}
}

// END json->item

// BEGIN launch-url!
dc.dynamic launch_url$BANG_(dc.dynamic url_str$1, ) async {
final dc.Uri uri$1=(dc.Uri.parse((url_str$1 as dc.String), ));
if((await u_url_launcher.launchUrl(uri$1, ))){
return null;
}
return null;
}

// END launch-url!

// BEGIN load-settings!
dc.dynamic load_settings$BANG_() async {
final s_shared_preferences.SharedPreferences p$1=(await (s_shared_preferences.SharedPreferences.getInstance()));
final dc.bool? or$6718_$AUTO_$1=(p$1.getBool("isDark", ));
late final dc.bool? is_dark$1;
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
is_dark$1=or$6718_$AUTO_$1;
}else{
is_dark$1=false;
}
final dc.List<dc.String>? enabled_sources$1=(p$1.getStringList("enabled_sources", ));
final dc.bool? or$6718_$AUTO_$2=(p$1.getBool("is_share_minimal", ));
late final dc.bool? share_min$1;
if(((false != or$6718_$AUTO_$2) && (null != or$6718_$AUTO_$2))){
share_min$1=or$6718_$AUTO_$2;
}else{
share_min$1=false;
}
final dc.bool? v$1=(p$1.getBool("show_youtube_button", ));
late final dc.bool? show_yt$1;
if((null == v$1)){
show_yt$1=true;
}else{
show_yt$1=v$1;
}
final dc.List<dc.String>? or$6718_$AUTO_$3=(p$1.getStringList("recent_searches", ));
late final dc.List<dc.dynamic>? recents$1;
if((null != or$6718_$AUTO_$3)){
recents$1=or$6718_$AUTO_$3;
}else{
recents$1=lcoc_core.$_EMPTY_VECTOR;
}
final dc.List<dc.String>? or$6718_$AUTO_$4=(p$1.getStringList("favorites", ));
late final dc.List<dc.dynamic>? favorites$1;
if((null != or$6718_$AUTO_$4)){
favorites$1=or$6718_$AUTO_$4;
}else{
favorites$1=lcoc_core.$_EMPTY_VECTOR;
}
late final f_material.ThemeMode $if_$6;
if(((false != is_dark$1) && (null != is_dark$1))){
$if_$6=f_material.ThemeMode.dark;
}else{
$if_$6=f_material.ThemeMode.light;
}
late final dc.Object? $if_$3;
if((null != enabled_sources$1)){
late final dc.dynamic $if_$1;
if((enabled_sources$1 is lcoc_core.ISeqable$iface)){
$if_$1=((enabled_sources$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(enabled_sources$1, ) as lcoc_core.ISeqable$ext).$_seq$0(enabled_sources$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
if($if_$2){
$if_$3=false;
}else{
$if_$3=true;
}
}else{
$if_$3=enabled_sources$1;
}
late final dc.dynamic $if_$5;
if(((false != $if_$3) && (null != $if_$3))){
late final dc.dynamic $if_$4;
if((enabled_sources$1 is lcoc_core.ISeqable$iface)){
$if_$4=((enabled_sources$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(enabled_sources$1, ) as lcoc_core.ISeqable$ext).$_seq$0(enabled_sources$1, ));
}
$if_$5=lcoc_core.$set_($if_$4, );
}else{
$if_$5=lcold_state.all_sources$v1;
}
final lcoc_core.PersistentVector arg$2=lcoc_core.vec(recents$1, );
final dc.dynamic arg$1=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.keep.$_invoke$1(lcold_state.json_$GT_item, )), favorites$1, ));
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, "Ambos", ));
(fl$1[1]="Ambos");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 65536, 65536, fl$1, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
return (lcoc_core.swap$BANG_.$_invoke_more$10(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "theme-mode", 48651601, ), $if_$6, const lcoc_core.Keyword(null, "enabled-sources", 2677619369, ), $if_$5, const lcoc_core.Keyword(null, "is-share-minimal", 2561305987, ), share_min$1, const lcoc_core.Keyword(null, "show-youtube-button", 3823822520, ), [show_yt$1, const lcoc_core.Keyword(null, "recent-searches", 1456002685, ), arg$2, const lcoc_core.Keyword(null, "favorites", 2198573211, ), arg$1, const lcoc_core.Keyword(null, "active-filters", 2628296726, ), lcoc_core.PersistentHashSet(null, cast$1, -1, ), ], ));
}

// END load-settings!

// BEGIN max-recent-searches
dc.dynamic max_recent_searches$v1=10;

// END max-recent-searches

// BEGIN on-filter-changed!
dc.dynamic on_filter_changed$BANG_(dc.dynamic filter_name$1, dc.dynamic selected$1, ){
return (lcoc_core.swap$BANG_.$_invoke$2(lcold_state.app_state, (dc.dynamic state$1, ){
final dc.dynamic enabled$1=(const lcoc_core.Keyword(null, "enabled-sources", 2677619369, ).$_invoke$1(state$1, ));
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, "Ambos", ));
(fl$1[1]="Ambos");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 65536, 65536, fl$1, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
final dc.dynamic current$1=(const lcoc_core.Keyword(null, "active-filters", 2628296726, ).$_invoke$2(state$1, lcoc_core.PersistentHashSet(null, cast$1, -1, ), ));
late final dc.dynamic next_filters$1;
if((lcoc_core.$EQ_.$_invoke$2(filter_name$1, "Ambos", ))){
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, "Ambos", ));
(fl$2[1]="Ambos");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$2=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 65536, 65536, fl$2, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
next_filters$1=lcoc_core.PersistentHashSet(null, cast$2, -1, );
}else{
late final dc.dynamic updated$1;
if(((false != selected$1) && (null != selected$1))){
final dc.dynamic coll7013$1=(lcoc_core.disj.$_invoke$2(current$1, "Ambos", ));
if((coll7013$1 is lcoc_core.ICollection$iface)){
updated$1=((coll7013$1 as lcoc_core.ICollection$iface).$_conj$1(filter_name$1, ));
}else{
updated$1=((lcoc_core.ICollection.extensions(coll7013$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$1, filter_name$1, ));
}
}else{
updated$1=(lcoc_core.disj.$_invoke$2(current$1, filter_name$1, ));
}
late final dc.dynamic $if_$1;
if((updated$1 is lcoc_core.ISeqable$iface)){
$if_$1=((updated$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(updated$1, ) as lcoc_core.ISeqable$ext).$_seq$0(updated$1, ));
}
late final dc.bool or$6718_$AUTO_$1;
if(((false != $if_$1) && (null != $if_$1))){
or$6718_$AUTO_$1=false;
}else{
or$6718_$AUTO_$1=true;
}
late final dc.bool $if_$2;
if(or$6718_$AUTO_$1){
$if_$2=or$6718_$AUTO_$1;
}else{
$if_$2=lcoc_core.every$QMARK_((dc.dynamic p1$9737_$SHARP_$1, ){
return lcoc_core.contains$QMARK_(updated$1, p1$9737_$SHARP_$1, );
}, enabled$1, );
}
if($if_$2){
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(2, "Ambos", ));
(fl$3[1]="Ambos");
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$3=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 65536, 65536, fl$3, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
next_filters$1=lcoc_core.PersistentHashSet(null, cast$3, -1, );
}else{
next_filters$1=updated$1;
}
}
if((state$1 is lcoc_core.IAssociative$iface)){
return ((state$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "active-filters", 2628296726, ), next_filters$1, ));
}
return ((lcoc_core.IAssociative.extensions(state$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(state$1, const lcoc_core.Keyword(null, "active-filters", 2628296726, ), next_filters$1, ));
}, ));
}

// END on-filter-changed!

// BEGIN open-youtube-search!
dc.dynamic open_youtube_search$BANG_(dc.dynamic query$1, ){
if(lcoc_string.blank$QMARK_(query$1, )){
return null;
}
return lcold_state.launch_url$BANG_(lcold_api.youtube_search_url(query$1, ), );
}

// END open-youtube-search!

// BEGIN perform-search!
dc.dynamic perform_search$BANG_(dc.dynamic query$1, ) async {
if(lcoc_string.blank$QMARK_(query$1, )){
return null;
}
final dc.dynamic token$1=(const lcoc_core.Keyword(null, "search-token", 3722163276, ).$_invoke$1((lcoc_core.swap$BANG_.$_invoke$4(lcold_state.app_state, lcoc_core.update, const lcoc_core.Keyword(null, "search-token", 3722163276, ), lcoc_core.inc, )), ));
(lcoc_core.swap$BANG_.$_invoke_more$10(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "is-loading", 3908007470, ), true, const lcoc_core.Keyword(null, "search-results", 941371274, ), lcoc_core.$_EMPTY_VECTOR, const lcoc_core.Keyword(null, "failed-sources", 1025871632, ), lcoc_core.$_EMPTY_VECTOR, const lcoc_core.Keyword(null, "error-message", 1587404037, ), [null, const lcoc_core.Keyword(null, "last-searched", 579106517, ), query$1, ], ));
(lcold_state.remember_search$BANG_(query$1, ));
try {
(lcold_api.log.$_invoke$2("=== START DICTIONARY SEARCH ===", query$1, ));
final dc.dynamic enabled$1=(const lcoc_core.Keyword(null, "enabled-sources", 2677619369, ).$_invoke$1(lcoc_core.deref(lcold_state.app_state, ), ));
late final dc.dynamic $if_$1;
if((enabled$1 is lcoc_core.ISeqable$iface)){
$if_$1=((enabled$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(enabled$1, ) as lcoc_core.ISeqable$ext).$_seq$0(enabled$1, ));
}
final dc.dynamic $1=(lcold_api.search_all.$_invoke$3(query$1, const lcoc_core.Keyword(null, "sources", 3114193497, ), $if_$1, ));
final dc.dynamic map$9736_$1=(await $1);
late final dc.dynamic map$9736_$2;
if(((lcoc_core.ISeq.satisfies(map$9736_$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(map$9736_$1, );
if(((false != test$1) && (null != test$1))){
map$9736_$2=lcoc_core.seq_to_map_for_destructuring(map$9736_$1, );
}else{
late final dc.dynamic $if_$2;
if((map$9736_$1 is lcoc_core.ISeqable$iface)){
$if_$2=((map$9736_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(map$9736_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(map$9736_$1, ));
}
if(((false != $if_$2) && (null != $if_$2))){
map$9736_$2=lcoc_core.first(map$9736_$1, );
}else{
map$9736_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9736_$2=map$9736_$1;
}
late final dc.dynamic items$1;
if((map$9736_$2 is lcoc_core.ILookup$iface)){
items$1=((map$9736_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "items", 3137390504, ), ));
}else{
items$1=((lcoc_core.ILookup.extensions(map$9736_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9736_$2, const lcoc_core.Keyword(null, "items", 3137390504, ), ));
}
late final dc.dynamic failed$1;
if((map$9736_$2 is lcoc_core.ILookup$iface)){
failed$1=((map$9736_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "failed", 2997450177, ), ));
}else{
failed$1=((lcoc_core.ILookup.extensions(map$9736_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9736_$2, const lcoc_core.Keyword(null, "failed", 2997450177, ), ));
}
if((lcoc_core.$EQ_.$_invoke$2(token$1, (const lcoc_core.Keyword(null, "search-token", 3722163276, ).$_invoke$1(lcoc_core.deref(lcold_state.app_state, ), )), ))){
late final dc.int cast$1;
if((items$1 is lcoc_core.ICounted$iface)){
cast$1=(((items$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(items$1, ) as lcoc_core.ICounted$ext).$_count$0(items$1, )) as dc.int);
}
(lcold_api.log.$_invoke$4("=== DICTIONARY SEARCH RESULTS ===", cast$1, "failed:", failed$1, ));
return (lcoc_core.swap$BANG_.$_invoke$8(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "search-results", 941371274, ), lcoc_core.vec(items$1, ), const lcoc_core.Keyword(null, "failed-sources", 1025871632, ), lcoc_core.vec(failed$1, ), const lcoc_core.Keyword(null, "is-loading", 3908007470, ), false, ));
}
return null;
} on dc.Object catch (e$1) {
(lcold_api.log.$_invoke$2("Error performing search:", e$1, ));
if((lcoc_core.$EQ_.$_invoke$2(token$1, (const lcoc_core.Keyword(null, "search-token", 3722163276, ).$_invoke$1(lcoc_core.deref(lcold_state.app_state, ), )), ))){
return (lcoc_core.swap$BANG_.$_invoke$6(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "is-loading", 3908007470, ), false, const lcoc_core.Keyword(null, "error-message", 1587404037, ), lcold_strings.search_error$v1, ));
}
return null;
}
}

// END perform-search!

// BEGIN persist-favorites!
dc.dynamic persist_favorites$BANG_(dc.dynamic favorites$1, ){
(s_shared_preferences.SharedPreferences.getInstance().then((dc.dynamic p$1, ){
final dc.dynamic castable$1=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.map.$_invoke$1(lcold_state.item_$GT_json, )), favorites$1, ));
late final dc.List<dc.String> casted$1;
if((null == castable$1)){
casted$1=(dc.List<dc.String>.empty());
}else if((castable$1 is dc.List<dc.String>)){
casted$1=(castable$1 as dc.List<dc.String>);
}else{
casted$1=((castable$1 as dc.List).cast<dc.String>());
}
return ((p$1 as s_shared_preferences.SharedPreferences).setStringList("favorites", casted$1, ));
}, ));
return null;
}

// END persist-favorites!

// BEGIN persist-recents!
dc.dynamic persist_recents$BANG_(dc.dynamic recents$1, ){
(s_shared_preferences.SharedPreferences.getInstance().then((dc.dynamic p$1, ){
final lcoc_core.PersistentVector castable$1=lcoc_core.vec(recents$1, );
late final dc.List<dc.String> casted$1;
if((castable$1 is dc.List<dc.String>)){
casted$1=(castable$1 as dc.List<dc.String>);
}else{
casted$1=((castable$1 as dc.List).cast<dc.String>());
}
return ((p$1 as s_shared_preferences.SharedPreferences).setStringList("recent_searches", casted$1, ));
}, ));
return null;
}

// END persist-recents!

// BEGIN preload-ines!
dc.dynamic preload_ines$BANG_() async {
try {
((await lcold_api.load_ines_data()));
final dc.dynamic coll7048$1=lcold_api.ines_words();
late final dc.int cast$1;
if((coll7048$1 is lcoc_core.ICounted$iface)){
cast$1=(((coll7048$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(coll7048$1, ) as lcoc_core.ICounted$ext).$_count$0(coll7048$1, )) as dc.int);
}
return (lcold_api.log.$_invoke$3("INES preload OK:", cast$1, "words", ));
} on dc.Object catch (e$1) {
return (lcold_api.log.$_invoke$2("INES preload failed:", e$1, ));
}
}

// END preload-ines!

// BEGIN rank-results
dc.dynamic rank_results(dc.dynamic results$1, dc.dynamic query$1, ){
final dc.dynamic nq$1=lcold_api.normalize(query$1, );
return lcoc_core.vec((lcoc_core.sort_by.$_invoke$2((dc.dynamic item$1, ){
final dc.dynamic or$6718_$AUTO_$1=(const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(item$1, ));
late final dc.dynamic $if_$1;
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
$if_$1=or$6718_$AUTO_$1;
}else{
$if_$1="";
}
final dc.dynamic nt$1=lcold_api.normalize($if_$1, );
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
late final dc.int $if_$2;
if((lcoc_core.$EQ_.$_invoke$2(nt$1, nq$1, ))){
$if_$2=0;
}else if(((nt$1 as dc.String).startsWith((nq$1 as dc.Pattern), ))){
$if_$2=1;
}else{
$if_$2=2;
}
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, $if_$2, ));
(fl$1[1]=nt$1);
return lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, );
}, results$1, )), );
}

// END rank-results

// BEGIN release-playback!
dc.dynamic release_playback$BANG_(dc.dynamic id$1, ){
return (lcoc_core.swap$BANG_.$_invoke$2(lcold_state.active_player, (dc.dynamic cur$1, ){
if(dc.identical((const lcoc_core.Keyword(null, "id", 17461667, ).$_invoke$1(cur$1, )), id$1, )){
return null;
}
return cur$1;
}, ));
}

// END release-playback!

// BEGIN remember-search!
dc.dynamic remember_search$BANG_(dc.dynamic query$1, ){
final dc.dynamic recents$1=(const lcoc_core.Keyword(null, "recent-searches", 1456002685, ).$_invoke$1(lcoc_core.deref(lcold_state.app_state, ), ));
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(1, query$1, ));
final dc.dynamic updated$1=(lcoc_core.into.$_invoke$3(lcoc_core.PersistentVector(null, 1, 5, arg$1, fl$1, -1, ), (lcoc_core.remove.$_invoke$1((dc.dynamic p1$9735_$SHARP_$1, ){
return (lcoc_core.$EQ_.$_invoke$2(p1$9735_$SHARP_$1, query$1, ));
}, )), recents$1, ));
final dc.dynamic updated$2=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.take.$_invoke$1(lcold_state.max_recent_searches$v1, )), updated$1, ));
(lcoc_core.swap$BANG_.$_invoke$4(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "recent-searches", 1456002685, ), updated$2, ));
return lcold_state.persist_recents$BANG_(updated$2, );
}

// END remember-search!

// BEGIN set-share-minimal!
dc.dynamic set_share_minimal$BANG_(dc.dynamic val$1, ){
(lcoc_core.swap$BANG_.$_invoke$4(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "is-share-minimal", 2561305987, ), val$1, ));
(s_shared_preferences.SharedPreferences.getInstance().then((dc.dynamic p$1, ){
return ((p$1 as s_shared_preferences.SharedPreferences).setBool("is_share_minimal", (val$1 as dc.bool), ));
}, ));
return null;
}

// END set-share-minimal!

// BEGIN set-show-youtube-button!
dc.dynamic set_show_youtube_button$BANG_(dc.dynamic val$1, ){
(lcoc_core.swap$BANG_.$_invoke$4(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "show-youtube-button", 3823822520, ), val$1, ));
(s_shared_preferences.SharedPreferences.getInstance().then((dc.dynamic p$1, ){
return ((p$1 as s_shared_preferences.SharedPreferences).setBool("show_youtube_button", (val$1 as dc.bool), ));
}, ));
return null;
}

// END set-show-youtube-button!

// BEGIN set-source-enabled!
dc.dynamic set_source_enabled$BANG_(dc.dynamic source$1, dc.dynamic val$1, ){
late final dc.dynamic new_sources$1;
if(((false != val$1) && (null != val$1))){
final dc.dynamic coll7013$1=(const lcoc_core.Keyword(null, "enabled-sources", 2677619369, ).$_invoke$1(lcoc_core.deref(lcold_state.app_state, ), ));
if((coll7013$1 is lcoc_core.ICollection$iface)){
new_sources$1=((coll7013$1 as lcoc_core.ICollection$iface).$_conj$1(source$1, ));
}else{
new_sources$1=((lcoc_core.ICollection.extensions(coll7013$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$1, source$1, ));
}
}else{
new_sources$1=(lcoc_core.disj.$_invoke$2((const lcoc_core.Keyword(null, "enabled-sources", 2677619369, ).$_invoke$1(lcoc_core.deref(lcold_state.app_state, ), )), source$1, ));
}
(lcoc_core.swap$BANG_.$_invoke$4(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "enabled-sources", 2677619369, ), new_sources$1, ));
(s_shared_preferences.SharedPreferences.getInstance().then((dc.dynamic p$1, ){
final lcoc_core.PersistentVector castable$1=lcoc_core.vec(new_sources$1, );
late final dc.List<dc.String> casted$1;
if((castable$1 is dc.List<dc.String>)){
casted$1=(castable$1 as dc.List<dc.String>);
}else{
casted$1=((castable$1 as dc.List).cast<dc.String>());
}
return ((p$1 as s_shared_preferences.SharedPreferences).setStringList("enabled_sources", casted$1, ));
}, ));
return null;
}

// END set-source-enabled!

// BEGIN share!
dc.dynamic share$BANG_(dc.dynamic text$1, dc.dynamic subject$1, ) async {
try {
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(4, "text", ));
(fl$1[1]=text$1);
(fl$1[2]="subject");
(fl$1[3]=subject$1);
final da.Future<dc.dynamic?> $1=(lcold_state.share_channel$v1.invokeMethod("share", lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 393216, 393216, fl$1, ), -1, ), ));
return (await $1);
} on f_services.PlatformException catch (e$1) {
return (lcold_api.log.$_invoke$2("Failed to share:", (e$1 as f_services.PlatformException).message, ));
}
}

// END share!

// BEGIN share-channel
dc.dynamic share_channel$v1=const f_services.MethodChannel("dev.edbn.libras_dictionary/share", );

// END share-channel

// BEGIN share-item!
dc.dynamic share_item$BANG_(dc.dynamic item$1, ){
final dc.dynamic test$1=(const lcoc_core.Keyword(null, "is-share-minimal", 2561305987, ).$_invoke$1(lcoc_core.deref(lcold_state.app_state, ), ));
late final dc.dynamic share_text$1;
if(((false != test$1) && (null != test$1))){
share_text$1=lcold_strings.share_text_minimal((const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(item$1, )), (const lcoc_core.Keyword(null, "link", 1569434702, ).$_invoke$1(item$1, )), );
}else{
share_text$1=lcold_strings.share_text_full((const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(item$1, )), (const lcoc_core.Keyword(null, "link", 1569434702, ).$_invoke$1(item$1, )), );
}
(lcold_state.share$BANG_(share_text$1, lcold_strings.share_subject((const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(item$1, )), ), ));
return null;
}

// END share-item!

// BEGIN suggestions-for
dc.dynamic suggestions_for(dc.dynamic query$1, dc.dynamic limit$1, ){
late final dc.int cast$1;
if((query$1 is lcoc_core.ICounted$iface)){
cast$1=(((query$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(query$1, ) as lcoc_core.ICounted$ext).$_count$0(query$1, )) as dc.int);
}
final dc.bool $1=(cast$1 < 2);
if($1){
return lcoc_core.$_EMPTY_VECTOR;
}
final dc.dynamic nq$1=lcold_api.normalize(query$1, );
final dc.dynamic words$1=lcold_api.ines_words();
final dc.dynamic scored$1=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.keep.$_invoke$1((dc.dynamic w$1, ){
final dc.String nw$1=(lcold_api.normalize((w$1 as dc.String), ) as dc.String);
if((lcoc_core.$EQ_.$_invoke$2(nw$1, nq$1, ))){
return null;
}
if((nw$1.startsWith((nq$1 as dc.Pattern), ))){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, 0, ));
(fl$1[1]=(w$1 as dc.String));
return lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, );
}
if((nw$1.contains((nq$1 as dc.Pattern), ))){
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, 1, ));
(fl$2[1]=(w$1 as dc.String));
return lcoc_core.PersistentVector(null, 2, 5, arg$2, fl$2, -1, );
}
return null;
}, )), words$1, ));
return (lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.comp.$_invoke$3((lcoc_core.map.$_invoke$1(lcoc_core.second, )), (lcoc_core.distinct.$_invoke$0()), (lcoc_core.take.$_invoke$1(limit$1, )), )), (lcoc_core.sort.$_invoke$1(scored$1, )), ));
}

// END suggestions-for

// BEGIN toggle-favorite!
dc.dynamic toggle_favorite$BANG_(dc.dynamic item$1, ){
final dc.dynamic favorites$1=(const lcoc_core.Keyword(null, "favorites", 2198573211, ).$_invoke$1(lcoc_core.deref(lcold_state.app_state, ), ));
final dc.dynamic k$1=lcold_state.favorite_key(item$1, );
final dc.dynamic test$1=lcoc_core.some((dc.dynamic p1$9733_$SHARP_$1, ){
return (lcoc_core.$EQ_.$_invoke$2(lcold_state.favorite_key(p1$9733_$SHARP_$1, ), k$1, ));
}, favorites$1, );
late final dc.dynamic updated$1;
if(((false != test$1) && (null != test$1))){
updated$1=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.remove.$_invoke$1((dc.dynamic p1$9734_$SHARP_$1, ){
return (lcoc_core.$EQ_.$_invoke$2(lcold_state.favorite_key(p1$9734_$SHARP_$1, ), k$1, ));
}, )), favorites$1, ));
}else{
if((favorites$1 is lcoc_core.ICollection$iface)){
updated$1=((favorites$1 as lcoc_core.ICollection$iface).$_conj$1(item$1, ));
}else{
updated$1=((lcoc_core.ICollection.extensions(favorites$1, ) as lcoc_core.ICollection$ext).$_conj$1(favorites$1, item$1, ));
}
}
(lcoc_core.swap$BANG_.$_invoke$4(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "favorites", 2198573211, ), updated$1, ));
return lcold_state.persist_favorites$BANG_(updated$1, );
}

// END toggle-favorite!

// BEGIN toggle-theme!
dc.dynamic toggle_theme$BANG_(){
late final f_material.ThemeMode new_mode$1;
if((lcoc_core.$EQ_.$_invoke$2((const lcoc_core.Keyword(null, "theme-mode", 48651601, ).$_invoke$1(lcoc_core.deref(lcold_state.app_state, ), )), f_material.ThemeMode.light, ))){
new_mode$1=f_material.ThemeMode.dark;
}else{
new_mode$1=f_material.ThemeMode.light;
}
(lcoc_core.swap$BANG_.$_invoke$4(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "theme-mode", 48651601, ), new_mode$1, ));
(s_shared_preferences.SharedPreferences.getInstance().then((dc.dynamic p$1, ){
return ((p$1 as s_shared_preferences.SharedPreferences).setBool("isDark", (lcoc_core.$EQ_.$_invoke$2(new_mode$1, f_material.ThemeMode.dark, )), ));
}, ));
return null;
}

// END toggle-theme!
