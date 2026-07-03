// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "../cljd/core.dart" as lcoc_core;
import "package:flutter/foundation.dart" as f_foundation;
import "main.dart" as lcold_main;
import "card.dart" as lcold_card;
import "strings.dart" as lcold_strings;
import "settings-screen.dart" as lcolds_screen;
import "package:flutter/widgets.dart" as f_widgets;
import "../cljd/string.dart" as lcoc_string;
import "state.dart" as lcold_state;
import "../cljd/flutter.dart" as lcoc_flutter;
import "package:flutter/material.dart" as f_material;
import "package:flutter_svg/flutter_svg.dart" as f_flutter_svg;

// BEGIN failed-sources-banner
dc.dynamic failed_sources_banner(dc.dynamic failed_sources$1, ){
final f_material.Color color$1=(f_material.Colors.amber.shade700.withOpacity(0.15, ));
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(3, f_material.Icon(f_material.Icons.warning_amber, size: 18.0, color: f_material.Colors.amber.shade800, ), ));
(fl$1[1]=const f_material.SizedBox(width: 8.0, ));
(fl$1[2]=f_material.Expanded(child: f_material.Text((lcold_strings.sources_unavailable((lcoc_string.join.$_invoke$2(", ", failed_sources$1, )), ) as dc.String), style: f_material.TextStyle(fontSize: 13.0, color: f_material.Colors.amber.shade900, ), ), ));
late final dc.List<f_material.Widget> casted$1;
if((lcoc_core.PersistentVector(null, 3, 5, arg$1, fl$1, -1, ) is dc.List<f_material.Widget>)){
casted$1=(lcoc_core.PersistentVector(null, 3, 5, arg$1, fl$1, -1, ) as dc.List<f_material.Widget>);
}else{
casted$1=((lcoc_core.PersistentVector(null, 3, 5, arg$1, fl$1, -1, ) as dc.List).cast<f_material.Widget>());
}
return f_material.Container(width: dc.double.infinity, color: color$1, padding: (const f_material.EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0, )), child: f_material.Row(children: casted$1, ), );
}

// END failed-sources-banner

// BEGIN favorites-screen
dc.dynamic favorites_screen(){
return lcold_main.watch_favorites_screen_M__caaxye$1(null, );
}

// END favorites-screen

// BEGIN filter-chips
dc.dynamic filter_chips(dc.dynamic active_filters$1, dc.dynamic enabled_sources$1, dc.dynamic is_dark$QMARK_$1, ){
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.bool is_selected$QMARK_$1=lcoc_core.contains$QMARK_(active_filters$1, "Ambos", );
final dc.String arg$1=(lcold_strings.filter_all$v1 as dc.String);
late final f_material.Color $if_$1;
if(is_selected$QMARK_$1){
$if_$1=f_material.Colors.white;
}else if(((false != is_dark$QMARK_$1) && (null != is_dark$QMARK_$1))){
$if_$1=f_material.Colors.white;
}else{
$if_$1=const f_material.Color(4280032031, );
}
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(1, f_material.FilterChip(label: f_material.Text(arg$1, style: f_material.TextStyle(fontSize: 13.0, fontWeight: f_material.FontWeight.bold, color: $if_$1, ), ), selected: is_selected$QMARK_$1, onSelected: (dc.dynamic val$1, ){
(lcold_state.on_filter_changed$BANG_("Ambos", val$1, ));
return null;
}, showCheckmark: false, selectedColor: f_material.Colors.blue.shade600, backgroundColor: (f_material.Colors.grey.shade600.withOpacity(0.2, )), shape: f_material.RoundedRectangleBorder(borderRadius: (f_material.BorderRadius.circular(8.0, )), ), elevation: 1.0, pressElevation: 2.0, padding: (const f_material.EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0, )), ), ));
late final dc.dynamic $if_$3;
if((enabled_sources$1 is lcoc_core.ISeqable$iface)){
$if_$3=((enabled_sources$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(enabled_sources$1, ) as lcoc_core.ISeqable$ext).$_seq$0(enabled_sources$1, ));
}
final dc.dynamic $1=(lcoc_core.sort.$_invoke$1($if_$3, ));
final dc.dynamic $2=(lcoc_core.map.$_invoke$2((dc.dynamic source$1, ){
final dc.bool is_selected$QMARK_$2=lcoc_core.contains$QMARK_(active_filters$1, source$1, );
late final dc.dynamic display_label$1;
switch(source$1){
case "RedeSurdos":
display_label$1="Rede Surdos";
break;
case "LibrasAcademicaUFF":
display_label$1="Libras Acadêmica";
break;
default:
display_label$1=source$1;
}
final dc.String arg$3=(display_label$1 as dc.String);
late final f_material.Color $if_$2;
if(is_selected$QMARK_$2){
$if_$2=f_material.Colors.white;
}else if(((false != is_dark$QMARK_$1) && (null != is_dark$QMARK_$1))){
$if_$2=f_material.Colors.white;
}else{
$if_$2=const f_material.Color(4280032031, );
}
return f_material.FilterChip(label: f_material.Text(arg$3, style: f_material.TextStyle(fontSize: 13.0, color: $if_$2, ), ), selected: is_selected$QMARK_$2, onSelected: (dc.dynamic val$2, ){
(lcold_state.on_filter_changed$BANG_(source$1, val$2, ));
return null;
}, showCheckmark: false, selectedColor: lcold_card.get_source_color(source$1, ), backgroundColor: (f_material.Colors.grey.shade600.withOpacity(0.2, )), shape: f_material.RoundedRectangleBorder(borderRadius: (f_material.BorderRadius.circular(8.0, )), ), elevation: 1.0, pressElevation: 2.0, padding: (const f_material.EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0, )), );
}, $1, ));
final dc.dynamic $3=(lcoc_core.into.$_invoke$2(lcoc_core.PersistentVector(null, 1, 5, arg$2, fl$1, -1, ), $2, ));
late final dc.List<f_material.Widget> casted$1;
if((null == $3)){
casted$1=(dc.List<f_material.Widget>.empty());
}else if(($3 is dc.List<f_material.Widget>)){
casted$1=($3 as dc.List<f_material.Widget>);
}else{
casted$1=(($3 as dc.List).cast<f_material.Widget>());
}
return f_material.Padding(padding: (const f_material.EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0, )), child: f_material.Wrap(spacing: 8.0, runSpacing: 8.0, alignment: f_material.WrapAlignment.center, children: casted$1, ), );
}

// END filter-chips

// BEGIN home-page
dc.dynamic home_page(){
return lcold_main.widget_home_page_M__4wk9ma$1(null, );
}

// END home-page

// BEGIN main
dc.dynamic main() async {
(f_material.WidgetsFlutterBinding.ensureInitialized());
((await lcold_state.load_settings$BANG_()));
(lcold_state.preload_ines$BANG_());
return f_material.runApp((lcold_main.main_app() as f_material.Widget), );
}

// END main

// BEGIN main-app
dc.dynamic main_app(){
return lcold_main.watch_main_app_M__caaxye$1(null, );
}

// END main-app

// BEGIN managed_home_page_M__caaxye$1
class managed_home_page_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final f_widgets.BuildContext _0;
final lcold_main.widget_home_page_M__4wk9ma$1 _1;

managed_home_page_M__caaxye$1(this._0, this._1, key$2, ):super(key: key$2, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.ResourceState(null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9179_$AUTO_$1, ){
final lcoc_flutter.ResourceState doto$7753_$AUTO_$1=(state$9179_$AUTO_$1 as lcoc_flutter.ResourceState);
doto$7753_$AUTO_$1.k=null;
doto$7753_$AUTO_$1.resource=f_material.TextEditingController();
return doto$7753_$AUTO_$1;
}

dc.dynamic $_dispose_state$1(dc.dynamic state$9179_$AUTO_$2, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$3=(state$9179_$AUTO_$2 as lcoc_flutter.ResourceState);
state$9179_$AUTO_$3.k=null;
((dc.dynamic c$1, ){
return ((c$1 as f_material.TextEditingController).dispose());
}((state$9179_$AUTO_$3.resource as f_material.TextEditingController), ));
state$9179_$AUTO_$3.resource=null;
return state$9179_$AUTO_$3;
}

dc.dynamic $_build$2(dc.dynamic state$9179_$AUTO_$4, dc.dynamic ctx$9180_$AUTO_$1, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$5=(state$9179_$AUTO_$4 as lcoc_flutter.ResourceState);
final f_widgets.BuildContext ctx$9180_$AUTO_$2=(ctx$9180_$AUTO_$1 as f_widgets.BuildContext);
final f_material.TextEditingController search_controller$1=(state$9179_$AUTO_$5.resource as f_material.TextEditingController);
return lcold_main.watch_home_page_M__caaxye$1(_0, ctx$9180_$AUTO_$2, search_controller$1, state$9179_$AUTO_$5, _1, this, null, );
}

dc.dynamic $_update_state$1(dc.dynamic state$9179_$AUTO_$6, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$7=(state$9179_$AUTO_$6 as lcoc_flutter.ResourceState);
if((lcoc_core.$EQ_.$_invoke$2(null, state$9179_$AUTO_$7.k, ))){
return null;
}
((dc.dynamic c$2, ){
return ((c$2 as f_material.TextEditingController).dispose());
}((state$9179_$AUTO_$7.resource as f_material.TextEditingController), ));
state$9179_$AUTO_$7.resource=f_material.TextEditingController();
state$9179_$AUTO_$7.k=null;
return state$9179_$AUTO_$7;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END managed_home_page_M__caaxye$1

// BEGIN recent-searches-block
dc.dynamic recent_searches_block(dc.dynamic recents$1, dc.dynamic search_controller$1, ){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, f_material.Padding(padding: (const f_material.EdgeInsets.only(top: 24.0, bottom: 8.0, )), child: f_material.Text((lcold_strings.recent_searches$v1 as dc.String), style: f_material.TextStyle(fontSize: 14.0, fontWeight: f_material.FontWeight.w600, color: f_material.Colors.grey.shade600, ), ), ), ));
final dc.dynamic castable$1=(lcoc_core.map.$_invoke$2((dc.dynamic q$1, ){
return f_material.ActionChip(avatar: const f_material.Icon(f_material.Icons.history, size: 16.0, ), label: f_material.Text((q$1 as dc.String), style: const f_material.TextStyle(fontSize: 13.0, ), ), onPressed: (){
(search_controller$1 as f_material.TextEditingController).text=(q$1 as dc.String);
(lcoc_core.swap$BANG_.$_invoke$4(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "search-query", 3980981005, ), (q$1 as dc.String), ));
(lcold_state.perform_search$BANG_((q$1 as dc.String), ));
return null;
}, );
}, recents$1, ));
late final dc.List<f_material.Widget> casted$1;
if((null == castable$1)){
casted$1=(dc.List<f_material.Widget>.empty());
}else if((castable$1 is dc.List<f_material.Widget>)){
casted$1=(castable$1 as dc.List<f_material.Widget>);
}else{
casted$1=((castable$1 as dc.List).cast<f_material.Widget>());
}
(fl$1[1]=f_material.Wrap(spacing: 8.0, runSpacing: 4.0, alignment: f_material.WrapAlignment.center, children: casted$1, ));
late final dc.List<f_material.Widget> casted$2;
if((lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, ) is dc.List<f_material.Widget>)){
casted$2=(lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, ) as dc.List<f_material.Widget>);
}else{
casted$2=((lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, ) as dc.List).cast<f_material.Widget>());
}
return f_material.Column(mainAxisSize: f_material.MainAxisSize.min, children: casted$2, );
}

// END recent-searches-block

// BEGIN suggestion-list
dc.dynamic suggestion_list(dc.dynamic suggestions$1, dc.dynamic search_controller$1, ){
final dc.dynamic castable$1=(lcoc_core.map.$_invoke$2((dc.dynamic word$1, ){
return f_material.ActionChip(label: f_material.Text((word$1 as dc.String), style: const f_material.TextStyle(fontSize: 13.0, ), ), onPressed: (){
(search_controller$1 as f_material.TextEditingController).text=(word$1 as dc.String);
(lcoc_core.swap$BANG_.$_invoke$4(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "search-query", 3980981005, ), (word$1 as dc.String), ));
(lcold_state.perform_search$BANG_((word$1 as dc.String), ));
return null;
}, );
}, suggestions$1, ));
late final dc.List<f_material.Widget> casted$1;
if((null == castable$1)){
casted$1=(dc.List<f_material.Widget>.empty());
}else if((castable$1 is dc.List<f_material.Widget>)){
casted$1=(castable$1 as dc.List<f_material.Widget>);
}else{
casted$1=((castable$1 as dc.List).cast<f_material.Widget>());
}
return f_material.Padding(padding: (const f_material.EdgeInsets.symmetric(horizontal: 16.0, )), child: f_material.Wrap(spacing: 8.0, runSpacing: 4.0, children: casted$1, ), );
}

// END suggestion-list

// BEGIN watch_favorites_screen_M__caaxye$1
class watch_favorites_screen_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {

watch_favorites_screen_M__caaxye$1(key$1, ):super(key: key$1, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.WatchState(null, null, null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9129_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$1=(state$9129_$AUTO_$1 as lcoc_flutter.WatchState);
final dc.dynamic subscribable$9124_$AUTO_$1=lcold_state.app_state;
state$9123_$AUTO_$1.k=null;
state$9123_$AUTO_$1.subscribable=subscribable$9124_$AUTO_$1;
dc.dynamic update$9126_$AUTO_$1(dc.dynamic state$3, ){
if((lcoc_core.$EQ_.$_invoke$2(state$3, state$9123_$AUTO_$1.latest, ))){
return null;
}
return (state$9123_$AUTO_$1.$_invoke$1(state$3, ));
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
final dc.dynamic state$4=state$9123_$AUTO_$2.latest;
final f_widgets.BuildContext context$9100_$AUTO_$1=(ctx$9130_$AUTO_$1 as f_widgets.BuildContext);
final dc.dynamic favorites$1=(const lcoc_core.Keyword(null, "favorites", 2198573211, ).$_invoke$1(state$4, ));
late final dc.dynamic $if_$1;
if((favorites$1 is lcoc_core.ISeqable$iface)){
$if_$1=((favorites$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(favorites$1, ) as lcoc_core.ISeqable$ext).$_seq$0(favorites$1, ));
}
late final dc.bool $if_$2;
if(((false != $if_$1) && (null != $if_$1))){
$if_$2=false;
}else{
$if_$2=true;
}
late final f_material.Widget $if_$4;
if($if_$2){
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(3, f_material.Icon(f_material.Icons.star_border, size: 64.0, color: f_material.Colors.grey.shade400, ), ));
(fl$3[1]=const f_material.SizedBox(height: 16.0, ));
(fl$3[2]=f_material.Text((lcold_strings.favorites_empty$v1 as dc.String), style: f_material.TextStyle(fontSize: 16.0, color: f_material.Colors.grey.shade600, ), textAlign: f_material.TextAlign.center, ));
late final dc.List<f_material.Widget> casted$1;
if((lcoc_core.PersistentVector(null, 3, 5, arg$3, fl$3, -1, ) is dc.List<f_material.Widget>)){
casted$1=(lcoc_core.PersistentVector(null, 3, 5, arg$3, fl$3, -1, ) as dc.List<f_material.Widget>);
}else{
casted$1=((lcoc_core.PersistentVector(null, 3, 5, arg$3, fl$3, -1, ) as dc.List).cast<f_material.Widget>());
}
$if_$4=f_material.Center(child: f_material.Padding(padding: (const f_material.EdgeInsets.all(32.0, )), child: f_material.Column(mainAxisAlignment: f_material.MainAxisAlignment.center, children: casted$1, ), ), );
}else{
late final dc.int cast$1;
if((favorites$1 is lcoc_core.ICounted$iface)){
cast$1=(((favorites$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(favorites$1, ) as lcoc_core.ICounted$ext).$_count$0(favorites$1, )) as dc.int);
}
$if_$4=(f_material.ListView.builder(itemCount: cast$1, itemBuilder: (dc.dynamic ctx$1, dc.dynamic idx$1, ){
late final dc.dynamic $if_$3;
if((favorites$1 is lcoc_core.ILookup$iface)){
$if_$3=((favorites$1 as lcoc_core.ILookup$iface).$_lookup$1(idx$1, ));
}else{
$if_$3=((lcoc_core.ILookup.extensions(favorites$1, ) as lcoc_core.ILookup$ext).$_lookup$1(favorites$1, idx$1, ));
}
return lcold_card.dictionary_item_card($if_$3, );
}, ));
}
final f_material.Scaffold child$9287_$AUTO_$1=f_material.Scaffold(appBar: f_material.AppBar(title: f_material.Text((lcold_strings.favorites_title$v1 as dc.String), ), ), body: $if_$4, );
if(f_foundation.kDebugMode){
final dc.dynamic test$1=(lcoc_flutter.get_of.$_invoke$2(context$9100_$AUTO_$1, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$1) && (null != test$1))){
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$4[1]=14);
(fl$4[2]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$4[3]=4);
(fl$4[4]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$4[5]=(lcoc_core.symbol.$_invoke$2(null, "libras-dictionary.main", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8413184, 8413184, fl$4, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), ctx$9130_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), state$9129_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), state$9123_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), context$9100_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "state", )), state$4, ], ));
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
final dc.dynamic subscribable$9124_$AUTO_$2=lcold_state.app_state;
state$9123_$AUTO_$3.k=null;
state$9123_$AUTO_$3.subscribable=subscribable$9124_$AUTO_$2;
dc.dynamic update$9126_$AUTO_$2(dc.dynamic state$5, ){
if((lcoc_core.$EQ_.$_invoke$2(state$5, state$9123_$AUTO_$3.latest, ))){
return null;
}
return (state$9123_$AUTO_$3.$_invoke$1(state$5, ));
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

// END watch_favorites_screen_M__caaxye$1

// BEGIN watch_home_page_M__caaxye$1
class watch_home_page_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final f_widgets.BuildContext _0;
final f_widgets.BuildContext _1;
final f_material.TextEditingController _2;
final lcoc_flutter.ResourceState _3;
final lcold_main.widget_home_page_M__4wk9ma$1 _4;
final lcold_main.managed_home_page_M__caaxye$1 _5;

watch_home_page_M__caaxye$1(this._0, this._1, this._2, this._3, this._4, this._5, key$1, ):super(key: key$1, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.WatchState(null, null, null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9129_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$1=(state$9129_$AUTO_$1 as lcoc_flutter.WatchState);
final dc.dynamic subscribable$9124_$AUTO_$1=lcold_state.app_state;
state$9123_$AUTO_$1.k=null;
state$9123_$AUTO_$1.subscribable=subscribable$9124_$AUTO_$1;
dc.dynamic update$9126_$AUTO_$1(dc.dynamic state$3, ){
if((lcoc_core.$EQ_.$_invoke$2(state$3, state$9123_$AUTO_$1.latest, ))){
return null;
}
return (state$9123_$AUTO_$1.$_invoke$1(state$3, ));
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
final dc.dynamic state$4=state$9123_$AUTO_$2.latest;
final f_widgets.BuildContext context$9100_$AUTO_$3=(ctx$9130_$AUTO_$1 as f_widgets.BuildContext);
late final dc.dynamic map$9786_$2;
if(((lcoc_core.ISeq.satisfies(state$4, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(state$4, );
if(((false != test$1) && (null != test$1))){
map$9786_$2=lcoc_core.seq_to_map_for_destructuring(state$4, );
}else{
late final dc.dynamic $if_$1;
if((state$4 is lcoc_core.ISeqable$iface)){
$if_$1=((state$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(state$4, ) as lcoc_core.ISeqable$ext).$_seq$0(state$4, ));
}
if(((false != $if_$1) && (null != $if_$1))){
map$9786_$2=lcoc_core.first(state$4, );
}else{
map$9786_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9786_$2=state$4;
}
late final dc.dynamic error_message$1;
if((map$9786_$2 is lcoc_core.ILookup$iface)){
error_message$1=((map$9786_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "error-message", 1587404037, ), ));
}else{
error_message$1=((lcoc_core.ILookup.extensions(map$9786_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9786_$2, const lcoc_core.Keyword(null, "error-message", 1587404037, ), ));
}
late final dc.dynamic search_results$1;
if((map$9786_$2 is lcoc_core.ILookup$iface)){
search_results$1=((map$9786_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "search-results", 941371274, ), ));
}else{
search_results$1=((lcoc_core.ILookup.extensions(map$9786_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9786_$2, const lcoc_core.Keyword(null, "search-results", 941371274, ), ));
}
late final dc.dynamic show_youtube_button$1;
if((map$9786_$2 is lcoc_core.ILookup$iface)){
show_youtube_button$1=((map$9786_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "show-youtube-button", 3823822520, ), ));
}else{
show_youtube_button$1=((lcoc_core.ILookup.extensions(map$9786_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9786_$2, const lcoc_core.Keyword(null, "show-youtube-button", 3823822520, ), ));
}
late final dc.dynamic search_query$1;
if((map$9786_$2 is lcoc_core.ILookup$iface)){
search_query$1=((map$9786_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "search-query", 3980981005, ), ));
}else{
search_query$1=((lcoc_core.ILookup.extensions(map$9786_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9786_$2, const lcoc_core.Keyword(null, "search-query", 3980981005, ), ));
}
late final dc.dynamic recent_searches$1;
if((map$9786_$2 is lcoc_core.ILookup$iface)){
recent_searches$1=((map$9786_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "recent-searches", 1456002685, ), ));
}else{
recent_searches$1=((lcoc_core.ILookup.extensions(map$9786_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9786_$2, const lcoc_core.Keyword(null, "recent-searches", 1456002685, ), ));
}
late final dc.dynamic enabled_sources$1;
if((map$9786_$2 is lcoc_core.ILookup$iface)){
enabled_sources$1=((map$9786_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "enabled-sources", 2677619369, ), ));
}else{
enabled_sources$1=((lcoc_core.ILookup.extensions(map$9786_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9786_$2, const lcoc_core.Keyword(null, "enabled-sources", 2677619369, ), ));
}
late final dc.dynamic active_filters$1;
if((map$9786_$2 is lcoc_core.ILookup$iface)){
active_filters$1=((map$9786_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "active-filters", 2628296726, ), ));
}else{
active_filters$1=((lcoc_core.ILookup.extensions(map$9786_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9786_$2, const lcoc_core.Keyword(null, "active-filters", 2628296726, ), ));
}
late final dc.dynamic is_loading$1;
if((map$9786_$2 is lcoc_core.ILookup$iface)){
is_loading$1=((map$9786_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "is-loading", 3908007470, ), ));
}else{
is_loading$1=((lcoc_core.ILookup.extensions(map$9786_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9786_$2, const lcoc_core.Keyword(null, "is-loading", 3908007470, ), ));
}
late final dc.dynamic failed_sources$1;
if((map$9786_$2 is lcoc_core.ILookup$iface)){
failed_sources$1=((map$9786_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "failed-sources", 1025871632, ), ));
}else{
failed_sources$1=((lcoc_core.ILookup.extensions(map$9786_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9786_$2, const lcoc_core.Keyword(null, "failed-sources", 1025871632, ), ));
}
late final dc.dynamic last_searched$1;
if((map$9786_$2 is lcoc_core.ILookup$iface)){
last_searched$1=((map$9786_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "last-searched", 579106517, ), ));
}else{
last_searched$1=((lcoc_core.ILookup.extensions(map$9786_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9786_$2, const lcoc_core.Keyword(null, "last-searched", 579106517, ), ));
}
late final dc.dynamic theme_mode$1;
if((map$9786_$2 is lcoc_core.ILookup$iface)){
theme_mode$1=((map$9786_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "theme-mode", 48651601, ), ));
}else{
theme_mode$1=((lcoc_core.ILookup.extensions(map$9786_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9786_$2, const lcoc_core.Keyword(null, "theme-mode", 48651601, ), ));
}
final dc.bool is_dark$QMARK_$1=(lcoc_core.$EQ_.$_invoke$2(theme_mode$1, f_material.ThemeMode.dark, ));
late final dc.dynamic $if_$2;
if(((false != last_searched$1) && (null != last_searched$1))){
$if_$2=last_searched$1;
}else{
if(((false != search_query$1) && (null != search_query$1))){
$if_$2=search_query$1;
}else{
$if_$2="";
}
}
final dc.dynamic ranked$1=lcold_state.rank_results(search_results$1, $if_$2, );
late final dc.dynamic $if_$3;
if(lcoc_core.contains$QMARK_(active_filters$1, "Ambos", )){
$if_$3=(lcoc_core.filter.$_invoke$2((dc.dynamic item$1, ){
return lcoc_core.contains$QMARK_(enabled_sources$1, (const lcoc_core.Keyword(null, "source", 10120462, ).$_invoke$1(item$1, )), );
}, ranked$1, ));
}else{
$if_$3=(lcoc_core.filter.$_invoke$2((dc.dynamic item$2, ){
return lcoc_core.contains$QMARK_(active_filters$1, (const lcoc_core.Keyword(null, "source", 10120462, ).$_invoke$1(item$2, )), );
}, ranked$1, ));
}
final lcoc_core.PersistentVector display_results$1=lcoc_core.vec($if_$3, );
late final dc.bool and$6836_$AUTO_$1;
if(lcoc_string.blank$QMARK_(search_query$1, )){
and$6836_$AUTO_$1=false;
}else{
and$6836_$AUTO_$1=true;
}
late final dc.bool $if_$4;
if(and$6836_$AUTO_$1){
final dc.bool and$6836_$AUTO_$2=(lcoc_core.not$EQ_.$_invoke$2(search_query$1, last_searched$1, ));
if(and$6836_$AUTO_$2){
if(((false != is_loading$1) && (null != is_loading$1))){
$if_$4=false;
}else{
$if_$4=true;
}
}else{
$if_$4=and$6836_$AUTO_$2;
}
}else{
$if_$4=and$6836_$AUTO_$1;
}
late final dc.dynamic suggestions$1;
if($if_$4){
suggestions$1=lcold_state.suggestions_for(search_query$1, 6, );
}else{
suggestions$1=null;
}
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
late final dc.String? $if_$5;
if((null != lcold_strings.favorites_title$v1)){
$if_$5=(lcold_strings.favorites_title$v1 as dc.String);
}else{
$if_$5=null;
}
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(3, f_material.IconButton(icon: const f_material.Icon(f_material.Icons.star, ), tooltip: $if_$5, onPressed: (){
(f_material.Navigator.push(_0, f_material.MaterialPageRoute(builder: (dc.dynamic ctx$2, ){
return lcold_main.favorites_screen();
}, ), ));
return null;
}, ), ));
late final f_material.IconData $if_$6;
if(is_dark$QMARK_$1){
$if_$6=f_material.Icons.light_mode;
}else{
$if_$6=f_material.Icons.dark_mode;
}
(fl$3[1]=f_material.IconButton(icon: f_material.Icon($if_$6, ), onPressed: (){
(lcold_state.toggle_theme$BANG_());
return null;
}, ));
(fl$3[2]=f_material.IconButton(icon: const f_material.Icon(f_material.Icons.settings, ), onPressed: (){
(f_material.Navigator.push(_0, f_material.MaterialPageRoute(builder: (dc.dynamic ctx$3, ){
return lcolds_screen.settings_screen();
}, ), ));
return null;
}, ));
late final dc.List<f_material.Widget>? casted$1;
if((lcoc_core.PersistentVector(null, 3, 5, arg$3, fl$3, -1, ) is dc.List<f_material.Widget>?)){
casted$1=(lcoc_core.PersistentVector(null, 3, 5, arg$3, fl$3, -1, ) as dc.List<f_material.Widget>?);
}else{
casted$1=((lcoc_core.PersistentVector(null, 3, 5, arg$3, fl$3, -1, ) as dc.List).cast<f_material.Widget>());
}
late final f_material.FloatingActionButton? $if_$24;
if(((false != show_youtube_button$1) && (null != show_youtube_button$1))){
late final dc.String? $if_$7;
if((null != lcold_strings.youtube_tooltip$v1)){
$if_$7=(lcold_strings.youtube_tooltip$v1 as dc.String);
}else{
$if_$7=null;
}
$if_$24=(f_material.FloatingActionButton.extended(onPressed: (){
(lcold_state.open_youtube_search$BANG_(search_query$1, ));
return null;
}, backgroundColor: const f_material.Color(4279592384, ), icon: const f_material.Icon(f_material.Icons.play_circle_filled, color: f_material.Colors.white, ), label: f_material.Text((lcold_strings.youtube_button$v1 as dc.String), style: const f_material.TextStyle(color: f_material.Colors.white, fontWeight: f_material.FontWeight.bold, ), ), tooltip: $if_$7, ));
}else{
$if_$24=null;
}
final lcoc_core.VectorNode arg$9=lcoc_core.$_EMPTY_VECTOR.root;
final lcoc_core.VectorNode arg$4=lcoc_core.$_EMPTY_VECTOR.root;
late final dc.String? $if_$9;
if((null != lcold_strings.search_label$v1)){
$if_$9=(lcold_strings.search_label$v1 as dc.String);
}else{
$if_$9=null;
}
late final f_material.IconButton? $if_$8;
if(lcoc_string.blank$QMARK_(search_query$1, )){
$if_$8=null;
}else{
$if_$8=f_material.IconButton(icon: const f_material.Icon(f_material.Icons.clear, size: 20.0, ), onPressed: (){
(_2.clear());
(lcoc_core.swap$BANG_.$_invoke$4(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "search-query", 3980981005, ), "", ));
return null;
}, );
}
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(3, f_material.Expanded(child: f_material.TextField(controller: _2, decoration: f_material.InputDecoration(labelText: $if_$9, border: const f_material.OutlineInputBorder(), suffixIcon: $if_$8, ), textInputAction: f_material.TextInputAction.search, onChanged: (dc.dynamic p1$9785_$SHARP_$1, ){
return (lcoc_core.swap$BANG_.$_invoke$4(lcold_state.app_state, lcoc_core.assoc, const lcoc_core.Keyword(null, "search-query", 3980981005, ), p1$9785_$SHARP_$1, ));
}, onSubmitted: (dc.dynamic val$1, ){
(lcold_state.perform_search$BANG_(val$1, ));
return null;
}, ), ), ));
(fl$5[1]=const f_material.SizedBox(width: 8.0, ));
(fl$5[2]=f_material.ElevatedButton(onPressed: (){
(lcold_state.perform_search$BANG_(search_query$1, ));
return null;
}, child: f_material.Text((lcold_strings.search_button$v1 as dc.String), ), ));
late final dc.List<f_material.Widget> casted$2;
if((lcoc_core.PersistentVector(null, 3, 5, arg$4, fl$5, -1, ) is dc.List<f_material.Widget>)){
casted$2=(lcoc_core.PersistentVector(null, 3, 5, arg$4, fl$5, -1, ) as dc.List<f_material.Widget>);
}else{
casted$2=((lcoc_core.PersistentVector(null, 3, 5, arg$4, fl$5, -1, ) as dc.List).cast<f_material.Widget>());
}
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(6, f_material.Padding(padding: (const f_material.EdgeInsets.all(16.0, )), child: f_material.Row(children: casted$2, ), ), ));
late final dc.dynamic $if_$10;
if((suggestions$1 is lcoc_core.ISeqable$iface)){
$if_$10=((suggestions$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$10=((lcoc_core.ISeqable.extensions(suggestions$1, ) as lcoc_core.ISeqable$ext).$_seq$0(suggestions$1, ));
}
late final dc.dynamic $if_$11;
if(((false != $if_$10) && (null != $if_$10))){
$if_$11=lcold_main.suggestion_list(suggestions$1, _2, );
}else{
$if_$11=null;
}
(fl$4[1]=$if_$11);
(fl$4[2]=lcold_main.filter_chips(active_filters$1, enabled_sources$1, is_dark$QMARK_$1, ));
late final dc.dynamic $if_$12;
if((failed_sources$1 is lcoc_core.ISeqable$iface)){
$if_$12=((failed_sources$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$12=((lcoc_core.ISeqable.extensions(failed_sources$1, ) as lcoc_core.ISeqable$ext).$_seq$0(failed_sources$1, ));
}
late final dc.dynamic $if_$13;
if(((false != $if_$12) && (null != $if_$12))){
$if_$13=lcold_main.failed_sources_banner(failed_sources$1, );
}else{
$if_$13=null;
}
(fl$4[3]=$if_$13);
late final f_material.Widget $if_$14;
if(((false != is_loading$1) && (null != is_loading$1))){
$if_$14=const f_material.LinearProgressIndicator();
}else{
$if_$14=(const f_material.SizedBox.shrink());
}
(fl$4[4]=$if_$14);
late final f_material.Widget $if_$23;
if(((false != error_message$1) && (null != error_message$1))){
final lcoc_core.VectorNode arg$5=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(5, f_material.Icon(f_material.Icons.wifi_off, size: 56.0, color: f_material.Colors.red.shade400, ), ));
(fl$6[1]=const f_material.SizedBox(height: 16.0, ));
(fl$6[2]=f_material.Text((error_message$1 as dc.String), style: f_material.TextStyle(fontSize: 15.0, color: f_material.Colors.red.shade700, ), textAlign: f_material.TextAlign.center, ));
(fl$6[3]=const f_material.SizedBox(height: 16.0, ));
(fl$6[4]=f_material.ElevatedButton(onPressed: (){
(lcold_state.perform_search$BANG_(search_query$1, ));
return null;
}, child: f_material.Text((lcold_strings.try_again$v1 as dc.String), ), ));
late final dc.List<f_material.Widget> casted$3;
if((lcoc_core.PersistentVector(null, 5, 5, arg$5, fl$6, -1, ) is dc.List<f_material.Widget>)){
casted$3=(lcoc_core.PersistentVector(null, 5, 5, arg$5, fl$6, -1, ) as dc.List<f_material.Widget>);
}else{
casted$3=((lcoc_core.PersistentVector(null, 5, 5, arg$5, fl$6, -1, ) as dc.List).cast<f_material.Widget>());
}
$if_$23=f_material.Center(child: f_material.Padding(padding: (const f_material.EdgeInsets.all(32.0, )), child: f_material.Column(mainAxisAlignment: f_material.MainAxisAlignment.center, crossAxisAlignment: f_material.CrossAxisAlignment.center, children: casted$3, ), ), );
}else{
late final dc.dynamic $if_$15;
if((display_results$1 is lcoc_core.ISeqable$iface)){
$if_$15=((display_results$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$15=((lcoc_core.ISeqable.extensions(display_results$1, ) as lcoc_core.ISeqable$ext).$_seq$0(display_results$1, ));
}
late final dc.bool and$6836_$AUTO_$3;
if(((false != $if_$15) && (null != $if_$15))){
and$6836_$AUTO_$3=false;
}else{
and$6836_$AUTO_$3=true;
}
late final dc.bool $if_$16;
if(and$6836_$AUTO_$3){
if(((false != is_loading$1) && (null != is_loading$1))){
$if_$16=false;
}else{
$if_$16=true;
}
}else{
$if_$16=and$6836_$AUTO_$3;
}
if($if_$16){
final lcoc_core.VectorNode arg$8=lcoc_core.$_EMPTY_VECTOR.root;
late final f_material.IconData $if_$17;
if(lcoc_string.blank$QMARK_(search_query$1, )){
$if_$17=f_material.Icons.search;
}else{
$if_$17=f_material.Icons.search_off;
}
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(5, f_material.Icon($if_$17, size: 64.0, color: f_material.Colors.grey.shade400, ), ));
(fl$7[1]=const f_material.SizedBox(height: 16.0, ));
late final dc.String cast$1;
if(lcoc_string.blank$QMARK_(search_query$1, )){
cast$1=(lcold_strings.type_to_search$v1 as dc.String);
}else{
cast$1=(lcold_strings.no_results_for(search_query$1, ) as dc.String);
}
(fl$7[2]=f_material.Text(cast$1, style: f_material.TextStyle(fontSize: 16.0, fontWeight: f_material.FontWeight.w500, color: f_material.Colors.grey.shade600, ), textAlign: f_material.TextAlign.center, ));
late final dc.bool and$6836_$AUTO_$4;
if(lcoc_string.blank$QMARK_(search_query$1, )){
and$6836_$AUTO_$4=false;
}else{
and$6836_$AUTO_$4=true;
}
late final dc.dynamic $if_$18;
if(and$6836_$AUTO_$4){
$if_$18=show_youtube_button$1;
}else{
$if_$18=and$6836_$AUTO_$4;
}
late final f_material.Column? $if_$19;
if(((false != $if_$18) && (null != $if_$18))){
final lcoc_core.VectorNode arg$7=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(2, f_material.Padding(padding: (const f_material.EdgeInsets.only(top: 8.0, )), child: f_material.Text((lcold_strings.not_found_dictionaries$v1 as dc.String), style: f_material.TextStyle(fontSize: 14.0, color: f_material.Colors.grey.shade500, ), textAlign: f_material.TextAlign.center, ), ), ));
final lcoc_core.VectorNode arg$6=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(3, const f_material.Icon(f_material.Icons.play_circle_filled, size: 18.0, color: const f_material.Color(4279592384, ), ), ));
(fl$9[1]=const f_material.SizedBox(width: 6.0, ));
(fl$9[2]=f_material.Text((lcold_strings.search_youtube$v1 as dc.String), style: const f_material.TextStyle(color: const f_material.Color(4279592384, ), fontWeight: f_material.FontWeight.w600, ), ));
late final dc.List<f_material.Widget> casted$4;
if((lcoc_core.PersistentVector(null, 3, 5, arg$6, fl$9, -1, ) is dc.List<f_material.Widget>)){
casted$4=(lcoc_core.PersistentVector(null, 3, 5, arg$6, fl$9, -1, ) as dc.List<f_material.Widget>);
}else{
casted$4=((lcoc_core.PersistentVector(null, 3, 5, arg$6, fl$9, -1, ) as dc.List).cast<f_material.Widget>());
}
(fl$8[1]=f_material.TextButton(onPressed: (){
(lcold_state.open_youtube_search$BANG_(search_query$1, ));
return null;
}, child: f_material.Row(mainAxisSize: f_material.MainAxisSize.min, children: casted$4, ), ));
late final dc.List<f_material.Widget> casted$5;
if((lcoc_core.PersistentVector(null, 2, 5, arg$7, fl$8, -1, ) is dc.List<f_material.Widget>)){
casted$5=(lcoc_core.PersistentVector(null, 2, 5, arg$7, fl$8, -1, ) as dc.List<f_material.Widget>);
}else{
casted$5=((lcoc_core.PersistentVector(null, 2, 5, arg$7, fl$8, -1, ) as dc.List).cast<f_material.Widget>());
}
$if_$19=f_material.Column(mainAxisSize: f_material.MainAxisSize.min, children: casted$5, );
}else{
$if_$19=null;
}
(fl$7[3]=$if_$19);
final dc.bool and$6836_$AUTO_$5=lcoc_string.blank$QMARK_(search_query$1, );
late final dc.dynamic $if_$20;
if(and$6836_$AUTO_$5){
if((recent_searches$1 is lcoc_core.ISeqable$iface)){
$if_$20=((recent_searches$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$20=((lcoc_core.ISeqable.extensions(recent_searches$1, ) as lcoc_core.ISeqable$ext).$_seq$0(recent_searches$1, ));
}
}else{
$if_$20=and$6836_$AUTO_$5;
}
late final dc.dynamic $if_$21;
if(((false != $if_$20) && (null != $if_$20))){
$if_$21=lcold_main.recent_searches_block(recent_searches$1, _2, );
}else{
$if_$21=null;
}
(fl$7[4]=$if_$21);
final dc.dynamic $1=(lcoc_core.remove.$_invoke$2(lcoc_core.nil$QMARK_, lcoc_core.PersistentVector(null, 5, 5, arg$8, fl$7, -1, ), ));
late final dc.List<f_material.Widget> casted$6;
if((null == $1)){
casted$6=(dc.List<f_material.Widget>.empty());
}else if(($1 is dc.List<f_material.Widget>)){
casted$6=($1 as dc.List<f_material.Widget>);
}else{
casted$6=(($1 as dc.List).cast<f_material.Widget>());
}
$if_$23=f_material.Center(child: f_material.SingleChildScrollView(padding: (const f_material.EdgeInsets.all(32.0, )), child: f_material.Column(mainAxisAlignment: f_material.MainAxisAlignment.center, crossAxisAlignment: f_material.CrossAxisAlignment.center, children: casted$6, ), ), );
}else{
late final dc.int cast$2;
if((display_results$1 is lcoc_core.ICounted$iface)){
cast$2=(((display_results$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$2=(((lcoc_core.ICounted.extensions(display_results$1, ) as lcoc_core.ICounted$ext).$_count$0(display_results$1, )) as dc.int);
}
$if_$23=(f_material.ListView.builder(itemCount: cast$2, itemBuilder: (dc.dynamic ctx$4, dc.dynamic idx$1, ){
late final dc.dynamic $if_$22;
if((display_results$1 is lcoc_core.ILookup$iface)){
$if_$22=((display_results$1 as lcoc_core.ILookup$iface).$_lookup$1(idx$1, ));
}else{
$if_$22=((lcoc_core.ILookup.extensions(display_results$1, ) as lcoc_core.ILookup$ext).$_lookup$1(display_results$1, idx$1, ));
}
return lcold_card.dictionary_item_card($if_$22, );
}, ));
}
}
(fl$4[5]=f_material.Expanded(child: $if_$23, ));
final dc.dynamic $2=(lcoc_core.remove.$_invoke$2(lcoc_core.nil$QMARK_, lcoc_core.PersistentVector(null, 6, 5, arg$9, fl$4, -1, ), ));
late final dc.List<f_material.Widget> casted$7;
if((null == $2)){
casted$7=(dc.List<f_material.Widget>.empty());
}else if(($2 is dc.List<f_material.Widget>)){
casted$7=($2 as dc.List<f_material.Widget>);
}else{
casted$7=(($2 as dc.List).cast<f_material.Widget>());
}
final f_material.Scaffold child$9287_$AUTO_$1=f_material.Scaffold(resizeToAvoidBottomInset: false, appBar: f_material.AppBar(title: f_material.Text((lcold_strings.app_title$v1 as dc.String), ), actions: casted$1, ), floatingActionButton: $if_$24, body: f_material.Column(children: casted$7, ), );
if(f_foundation.kDebugMode){
final dc.dynamic test$2=(lcoc_flutter.get_of.$_invoke$2(context$9100_$AUTO_$3, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$2) && (null != test$2))){
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$10[1]=160);
(fl$10[2]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$10[3]=4);
(fl$10[4]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$10[5]=(lcoc_core.symbol.$_invoke$2(null, "libras-dictionary.main", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8413184, 8413184, fl$10, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "ctx", )), _0, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), ctx$9130_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), state$9129_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), state$9123_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), context$9100_$AUTO_$3, (lcoc_core.symbol.$_invoke$2(null, "___9178__auto__", )), _5, (lcoc_core.symbol.$_invoke$2(null, "search-controller", )), _2, (lcoc_core.symbol.$_invoke$2(null, "___9280__auto__", )), _4, (lcoc_core.symbol.$_invoke$2(null, "state", )), state$4, (lcoc_core.symbol.$_invoke$2(null, "ctx__9180__auto__", )), _1, (lcoc_core.symbol.$_invoke$2(null, "state__9179__auto__", )), _3, ], ));
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
final dc.dynamic doto$7753_$AUTO_$8=state$9123_$AUTO_$3.subscribable;
final dc.dynamic sub9052$2=state$9123_$AUTO_$3.subscription;
if((doto$7753_$AUTO_$8 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$8 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$2, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$8, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$8, sub9052$2, ));
}
final dc.dynamic subscribable$9124_$AUTO_$2=lcold_state.app_state;
state$9123_$AUTO_$3.k=null;
state$9123_$AUTO_$3.subscribable=subscribable$9124_$AUTO_$2;
dc.dynamic update$9126_$AUTO_$2(dc.dynamic state$5, ){
if((lcoc_core.$EQ_.$_invoke$2(state$5, state$9123_$AUTO_$3.latest, ))){
return null;
}
return (state$9123_$AUTO_$3.$_invoke$1(state$5, ));
}
late final dc.dynamic sub$9127_$AUTO_$2;
if((subscribable$9124_$AUTO_$2 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$2=((subscribable$9124_$AUTO_$2 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$2, ));
}else{
sub$9127_$AUTO_$2=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$2, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(subscribable$9124_$AUTO_$2, update$9126_$AUTO_$2, ));
}
late final dc.dynamic or$6718_$AUTO_$4;
if((subscribable$9124_$AUTO_$2 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$4=((subscribable$9124_$AUTO_$2 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$2, update$9126_$AUTO_$2, ));
}else{
or$6718_$AUTO_$4=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$2, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(subscribable$9124_$AUTO_$2, sub$9127_$AUTO_$2, update$9126_$AUTO_$2, ));
}
if(((false != or$6718_$AUTO_$4) && (null != or$6718_$AUTO_$4))){
}else{
(update$9126_$AUTO_$2(null, ));
}
state$9123_$AUTO_$3.subscription=sub$9127_$AUTO_$2;
return state$9123_$AUTO_$3;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END watch_home_page_M__caaxye$1

// BEGIN watch_main_app_M__caaxye$1
class watch_main_app_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {

watch_main_app_M__caaxye$1(key$1, ):super(key: key$1, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.WatchState(null, null, null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9129_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$1=(state$9129_$AUTO_$1 as lcoc_flutter.WatchState);
final dc.dynamic subscribable$9124_$AUTO_$1=lcold_state.app_state;
state$9123_$AUTO_$1.k=null;
state$9123_$AUTO_$1.subscribable=subscribable$9124_$AUTO_$1;
dc.dynamic update$9126_$AUTO_$1(dc.dynamic state$3, ){
if((lcoc_core.$EQ_.$_invoke$2(state$3, state$9123_$AUTO_$1.latest, ))){
return null;
}
return (state$9123_$AUTO_$1.$_invoke$1(state$3, ));
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
final dc.dynamic state$4=state$9123_$AUTO_$2.latest;
final f_widgets.BuildContext context$9100_$AUTO_$1=(ctx$9130_$AUTO_$1 as f_widgets.BuildContext);
late final dc.String? $if_$3;
if((null != lcold_strings.app_title$v1)){
$if_$3=(lcold_strings.app_title$v1 as dc.String);
}else{
$if_$3=null;
}
final dc.dynamic once$2=(const lcoc_core.Keyword(null, "theme-mode", 48651601, ).$_invoke$1(state$4, ));
late final f_material.ThemeMode? $if_$2;
if((null != once$2)){
$if_$2=(once$2 as f_material.ThemeMode);
}else{
$if_$2=null;
}
final dc.dynamic once$1=lcold_main.home_page();
late final f_material.Widget? $if_$1;
if((null != once$1)){
$if_$1=(once$1 as f_material.Widget);
}else{
$if_$1=null;
}
final f_material.MaterialApp child$9287_$AUTO_$1=f_material.MaterialApp(title: $if_$3, debugShowCheckedModeBanner: false, themeMode: $if_$2, theme: f_material.ThemeData(useMaterial3: true, brightness: f_material.Brightness.light, colorScheme: (f_material.ColorScheme.fromSeed(seedColor: f_material.Colors.blue, )), ), darkTheme: f_material.ThemeData(useMaterial3: true, brightness: f_material.Brightness.dark, colorScheme: (f_material.ColorScheme.fromSeed(seedColor: f_material.Colors.blue, brightness: f_material.Brightness.dark, )), ), home: $if_$1, );
if(f_foundation.kDebugMode){
final dc.dynamic test$1=(lcoc_flutter.get_of.$_invoke$2(context$9100_$AUTO_$1, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$1) && (null != test$1))){
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$3[1]=335);
(fl$3[2]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$3[3]=4);
(fl$3[4]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$3[5]=(lcoc_core.symbol.$_invoke$2(null, "libras-dictionary.main", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8413184, 8413184, fl$3, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), ctx$9130_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), state$9129_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), state$9123_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), context$9100_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "state", )), state$4, ], ));
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
final dc.dynamic subscribable$9124_$AUTO_$2=lcold_state.app_state;
state$9123_$AUTO_$3.k=null;
state$9123_$AUTO_$3.subscribable=subscribable$9124_$AUTO_$2;
dc.dynamic update$9126_$AUTO_$2(dc.dynamic state$5, ){
if((lcoc_core.$EQ_.$_invoke$2(state$5, state$9123_$AUTO_$3.latest, ))){
return null;
}
return (state$9123_$AUTO_$3.$_invoke$1(state$5, ));
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

// END watch_main_app_M__caaxye$1

// BEGIN widget_home_page_M__4wk9ma$1
class widget_home_page_M__4wk9ma$1 extends f_widgets.StatelessWidget {

widget_home_page_M__4wk9ma$1(key$3, ):super(key: key$3, );

f_widgets.Widget build(f_widgets.BuildContext context$9100_$AUTO_$1, ){
return lcold_main.managed_home_page_M__caaxye$1(context$9100_$AUTO_$1, this, null, );
}
}

// END widget_home_page_M__4wk9ma$1
