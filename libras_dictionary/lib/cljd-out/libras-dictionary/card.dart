// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "../cljd/core.dart" as lcoc_core;
import "package:flutter/foundation.dart" as f_foundation;
import "player.dart" as lcold_player;
import "card.dart" as lcold_card;
import "strings.dart" as lcold_strings;
import "package:flutter/widgets.dart" as f_widgets;
import "../cljd/string.dart" as lcoc_string;
import "package:flutter_html/flutter_html.dart" as f_flutter_html;
import "state.dart" as lcold_state;
import "../cljd/flutter.dart" as lcoc_flutter;
import "package:flutter/material.dart" as f_material;

// BEGIN dictionary-item-card
dc.dynamic dictionary_item_card(dc.dynamic item$1, ){
return lcold_card.watch_dictionary_item_card_M__caaxye$1(item$1, null, );
}

// END dictionary-item-card

// BEGIN get-source-color
f_material.Color get_source_color(dc.dynamic source$1, ){
switch(source$1){
case "INES":
return f_material.Colors.blue.shade600;
case "RedeSurdos":
return f_material.Colors.green.shade600;
case "UFV":
return f_material.Colors.red.shade600;
case "LibrasAcademicaUFF":
return f_material.Colors.purple.shade600;
case "SpreadTheSign":
return f_material.Colors.orange.shade600;
default:
return f_material.Colors.grey.shade600;
}
}

// END get-source-color

// BEGIN html-section
dc.dynamic html_section(dc.dynamic label$1, dc.dynamic data$1, dc.dynamic italic$QMARK_$1, ){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(4, f_material.Text((label$1 as dc.String), style: const f_material.TextStyle(fontWeight: f_material.FontWeight.bold, fontSize: 16.0, ), ), ));
(fl$1[1]=const f_material.SizedBox(height: 4.0, ));
late final dc.String? $if_$2;
if((null != data$1)){
$if_$2=(data$1 as dc.String);
}else{
$if_$2=null;
}
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, "body", ));
late final f_flutter_html.Style $if_$1;
if(((false != italic$QMARK_$1) && (null != italic$QMARK_$1))){
$if_$1=f_flutter_html.Style(margin: f_flutter_html.Margins.zero, padding: f_flutter_html.HtmlPaddings.zero, fontSize: f_flutter_html.FontSize(16.0, ), fontStyle: f_material.FontStyle.italic, );
}else{
$if_$1=f_flutter_html.Style(margin: f_flutter_html.Margins.zero, padding: f_flutter_html.HtmlPaddings.zero, fontSize: f_flutter_html.FontSize(16.0, ), );
}
(fl$2[1]=$if_$1);
late final dc.Map<dc.String, f_flutter_html.Style> casted$1;
if((lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 16, 16, fl$2, ), -1, ) is dc.Map<dc.String, f_flutter_html.Style>)){
casted$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 16, 16, fl$2, ), -1, ) as dc.Map<dc.String, f_flutter_html.Style>);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 16, 16, fl$2, ), -1, ) as dc.Map).cast<dc.String, f_flutter_html.Style>());
}
(fl$1[2]=f_flutter_html.Html(data: $if_$2, style: casted$1, ));
(fl$1[3]=const f_material.SizedBox(height: 12.0, ));
late final dc.List<f_material.Widget> casted$2;
if((lcoc_core.PersistentVector(null, 4, 5, arg$1, fl$1, -1, ) is dc.List<f_material.Widget>)){
casted$2=(lcoc_core.PersistentVector(null, 4, 5, arg$1, fl$1, -1, ) as dc.List<f_material.Widget>);
}else{
casted$2=((lcoc_core.PersistentVector(null, 4, 5, arg$1, fl$1, -1, ) as dc.List).cast<f_material.Widget>());
}
return f_material.Column(crossAxisAlignment: f_material.CrossAxisAlignment.start, children: casted$2, );
}

// END html-section

// BEGIN watch_dictionary_item_card_M__caaxye$1
class watch_dictionary_item_card_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final _0;

watch_dictionary_item_card_M__caaxye$1(this._0, key$2, ):super(key: key$2, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.WatchState(null, null, null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9129_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$1=(state$9129_$AUTO_$1 as lcoc_flutter.WatchState);
final lcoc_core.Atom subscribable$9124_$AUTO_$1=(lcoc_core.atom.$_invoke$1(false, ));
state$9123_$AUTO_$1.k=null;
state$9123_$AUTO_$1.subscribable=subscribable$9124_$AUTO_$1;
dc.dynamic update$9126_$AUTO_$1(dc.dynamic is_expanded$3, ){
if((lcoc_core.$EQ_.$_invoke$2(is_expanded$3, state$9123_$AUTO_$1.latest, ))){
return null;
}
return (state$9123_$AUTO_$1.$_invoke$1(is_expanded$3, ));
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
final dc.dynamic is_expanded$4=state$9123_$AUTO_$2.latest;
final f_widgets.BuildContext context$9100_$AUTO_$1=(ctx$9130_$AUTO_$1 as f_widgets.BuildContext);
final lcoc_core.Atom expanded$QMARK_$1=(state$9123_$AUTO_$2.subscribable as lcoc_core.Atom);
return lcold_card.watch_dictionary_item_card_M__caaxye$2(expanded$QMARK_$1, is_expanded$4, _0, null, );
}

dc.dynamic $_update_state$1(dc.dynamic state$9129_$AUTO_$10, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$6=(state$9129_$AUTO_$10 as lcoc_flutter.WatchState);
if((lcoc_core.$EQ_.$_invoke$2(null, state$9123_$AUTO_$6.k, ))){
return null;
}
final dc.dynamic doto$7753_$AUTO_$13=state$9123_$AUTO_$6.subscribable;
final dc.dynamic sub9052$4=state$9123_$AUTO_$6.subscription;
if((doto$7753_$AUTO_$13 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$13 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$4, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$13, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$13, sub9052$4, ));
}
final lcoc_core.Atom subscribable$9124_$AUTO_$4=(lcoc_core.atom.$_invoke$1(false, ));
state$9123_$AUTO_$6.k=null;
state$9123_$AUTO_$6.subscribable=subscribable$9124_$AUTO_$4;
dc.dynamic update$9126_$AUTO_$4(dc.dynamic is_expanded$5, ){
if((lcoc_core.$EQ_.$_invoke$2(is_expanded$5, state$9123_$AUTO_$6.latest, ))){
return null;
}
return (state$9123_$AUTO_$6.$_invoke$1(is_expanded$5, ));
}
late final dc.dynamic sub$9127_$AUTO_$4;
if((subscribable$9124_$AUTO_$4 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$4=((subscribable$9124_$AUTO_$4 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$4, ));
}else{
sub$9127_$AUTO_$4=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$4, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(subscribable$9124_$AUTO_$4, update$9126_$AUTO_$4, ));
}
late final dc.dynamic or$6718_$AUTO_$4;
if((subscribable$9124_$AUTO_$4 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$4=((subscribable$9124_$AUTO_$4 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$4, update$9126_$AUTO_$4, ));
}else{
or$6718_$AUTO_$4=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$4, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(subscribable$9124_$AUTO_$4, sub$9127_$AUTO_$4, update$9126_$AUTO_$4, ));
}
if(((false != or$6718_$AUTO_$4) && (null != or$6718_$AUTO_$4))){
}else{
(update$9126_$AUTO_$4(null, ));
}
state$9123_$AUTO_$6.subscription=sub$9127_$AUTO_$4;
return state$9123_$AUTO_$6;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END watch_dictionary_item_card_M__caaxye$1

// BEGIN watch_dictionary_item_card_M__caaxye$2
class watch_dictionary_item_card_M__caaxye$2 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final lcoc_core.Atom _0;
final dc.dynamic _1;
final _2;

watch_dictionary_item_card_M__caaxye$2(this._0, this._1, this._2, key$1, ):super(key: key$1, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.WatchState(null, null, null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9129_$AUTO_$5, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$3=(state$9129_$AUTO_$5 as lcoc_flutter.WatchState);
final dc.dynamic subscribable$9124_$AUTO_$2=lcold_state.app_state;
state$9123_$AUTO_$3.k=null;
state$9123_$AUTO_$3.subscribable=subscribable$9124_$AUTO_$2;
dc.dynamic update$9126_$AUTO_$2(dc.dynamic app$3, ){
if((lcoc_core.$EQ_.$_invoke$2(app$3, state$9123_$AUTO_$3.latest, ))){
return null;
}
return (state$9123_$AUTO_$3.$_invoke$1(app$3, ));
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

dc.dynamic $_dispose_state$1(dc.dynamic state$9129_$AUTO_$6, ){
final lcoc_flutter.WatchState state$9129_$AUTO_$7=(state$9129_$AUTO_$6 as lcoc_flutter.WatchState);
state$9129_$AUTO_$7.k=null;
state$9129_$AUTO_$7.latest=null;
final dc.dynamic doto$7753_$AUTO_$10=state$9129_$AUTO_$7.subscribable;
final dc.dynamic sub9052$2=state$9129_$AUTO_$7.subscription;
if((doto$7753_$AUTO_$10 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$10 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$2, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$10, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$10, sub9052$2, ));
}
state$9129_$AUTO_$7.subscribable=null;
state$9129_$AUTO_$7.subscription=null;
return state$9129_$AUTO_$7;
}

dc.dynamic $_build$2(dc.dynamic state$9129_$AUTO_$8, dc.dynamic ctx$9130_$AUTO_$2, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$4=(state$9129_$AUTO_$8 as lcoc_flutter.WatchState);
final dc.dynamic app$4=state$9123_$AUTO_$4.latest;
final f_widgets.BuildContext context$9100_$AUTO_$2=(ctx$9130_$AUTO_$2 as f_widgets.BuildContext);
final dc.bool is_favorite$1=lcoc_core.boolean(lcoc_core.some((dc.dynamic p1$9762_$SHARP_$1, ){
final lcoc_core.VectorNode arg$5=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(3, (const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(p1$9762_$SHARP_$1, )), ));
(fl$5[1]=(const lcoc_core.Keyword(null, "link", 1569434702, ).$_invoke$1(p1$9762_$SHARP_$1, )));
(fl$5[2]=(const lcoc_core.Keyword(null, "source", 10120462, ).$_invoke$1(p1$9762_$SHARP_$1, )));
final lcoc_core.VectorNode arg$6=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(3, (const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(_2, )), ));
(fl$6[1]=(const lcoc_core.Keyword(null, "link", 1569434702, ).$_invoke$1(_2, )));
(fl$6[2]=(const lcoc_core.Keyword(null, "source", 10120462, ).$_invoke$1(_2, )));
return (lcoc_core.$EQ_.$_invoke$2(lcoc_core.PersistentVector(null, 3, 5, arg$5, fl$5, -1, ), lcoc_core.PersistentVector(null, 3, 5, arg$6, fl$6, -1, ), ));
}, (const lcoc_core.Keyword(null, "favorites", 2198573211, ).$_invoke$1(app$4, )), ), );
final dc.String label$1=(lcoc_core.str.$_invoke$3((const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(_2, )), ", ", (const lcoc_core.Keyword(null, "source", 10120462, ).$_invoke$1(_2, )), ));
late final dc.dynamic once$4;
if(((false != _1) && (null != _1))){
once$4=lcold_strings.collapse_hint$v1;
}else{
once$4=lcold_strings.expand_hint$v1;
}
late final dc.String? $if_$16;
if((null != once$4)){
$if_$16=(once$4 as dc.String);
}else{
$if_$16=null;
}
final lcoc_core.VectorNode arg$9=lcoc_core.$_EMPTY_VECTOR.root;
final f_material.Color color$1=lcold_card.get_source_color((const lcoc_core.Keyword(null, "source", 10120462, ).$_invoke$1(_2, )), );
final lcoc_core.VectorNode arg$7=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(1, f_material.Expanded(child: f_material.Text((lcoc_core.str.$_invoke$4((const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(_2, )), " (", (const lcoc_core.Keyword(null, "source", 10120462, ).$_invoke$1(_2, )), ")", )), style: const f_material.TextStyle(fontWeight: f_material.FontWeight.bold, fontSize: 20.0, color: f_material.Colors.white, ), ), ), ));
final lcoc_core.PersistentVector cond_$GT_$6877_$AUTO_$1=lcoc_core.PersistentVector(null, 1, 5, arg$7, fl$8, -1, );
late final f_material.IconData $if_$1;
if(is_favorite$1){
$if_$1=f_material.Icons.star;
}else{
$if_$1=f_material.Icons.star_border;
}
late final dc.dynamic once$1;
if(is_favorite$1){
once$1=lcold_strings.favorite_remove$v1;
}else{
once$1=lcold_strings.favorite_add$v1;
}
late final dc.String? $if_$2;
if((null != once$1)){
$if_$2=(once$1 as dc.String);
}else{
$if_$2=null;
}
final f_material.IconButton o7014$1=f_material.IconButton(icon: f_material.Icon($if_$1, color: f_material.Colors.white, ), tooltip: $if_$2, onPressed: (){
(lcold_state.toggle_favorite$BANG_(_2, ));
return null;
}, );
late final dc.dynamic cond_$GT_$6877_$AUTO_$2;
if((cond_$GT_$6877_$AUTO_$1 is lcoc_core.ICollection$iface)){
cond_$GT_$6877_$AUTO_$2=((cond_$GT_$6877_$AUTO_$1 as lcoc_core.ICollection$iface).$_conj$1(o7014$1, ));
}else{
cond_$GT_$6877_$AUTO_$2=((lcoc_core.ICollection.extensions(cond_$GT_$6877_$AUTO_$1, ) as lcoc_core.ICollection$ext).$_conj$1(cond_$GT_$6877_$AUTO_$1, o7014$1, ));
}
final dc.dynamic test$1=(const lcoc_core.Keyword(null, "link", 1569434702, ).$_invoke$1(_2, ));
late final dc.dynamic cond_$GT_$6877_$AUTO_$3;
if(((false != test$1) && (null != test$1))){
late final dc.String? $if_$3;
if((null != lcold_strings.share_sign$v1)){
$if_$3=(lcold_strings.share_sign$v1 as dc.String);
}else{
$if_$3=null;
}
final f_material.IconButton o7014$2=f_material.IconButton(icon: const f_material.Icon(f_material.Icons.share, color: f_material.Colors.white, ), tooltip: $if_$3, onPressed: (){
(lcold_state.share_item$BANG_(_2, ));
return null;
}, );
if((cond_$GT_$6877_$AUTO_$2 is lcoc_core.ICollection$iface)){
cond_$GT_$6877_$AUTO_$3=((cond_$GT_$6877_$AUTO_$2 as lcoc_core.ICollection$iface).$_conj$1(o7014$2, ));
}else{
cond_$GT_$6877_$AUTO_$3=((lcoc_core.ICollection.extensions(cond_$GT_$6877_$AUTO_$2, ) as lcoc_core.ICollection$ext).$_conj$1(cond_$GT_$6877_$AUTO_$2, o7014$2, ));
}
}else{
cond_$GT_$6877_$AUTO_$3=cond_$GT_$6877_$AUTO_$2;
}
late final f_material.IconData $if_$4;
if(((false != _1) && (null != _1))){
$if_$4=f_material.Icons.expand_less;
}else{
$if_$4=f_material.Icons.expand_more;
}
final f_material.Icon o7014$3=f_material.Icon($if_$4, color: f_material.Colors.white, );
late final dc.dynamic $if_$5;
if((cond_$GT_$6877_$AUTO_$3 is lcoc_core.ICollection$iface)){
$if_$5=((cond_$GT_$6877_$AUTO_$3 as lcoc_core.ICollection$iface).$_conj$1(o7014$3, ));
}else{
$if_$5=((lcoc_core.ICollection.extensions(cond_$GT_$6877_$AUTO_$3, ) as lcoc_core.ICollection$ext).$_conj$1(cond_$GT_$6877_$AUTO_$3, o7014$3, ));
}
late final dc.List<f_material.Widget> casted$1;
if((null == $if_$5)){
casted$1=(dc.List<f_material.Widget>.empty());
}else if(($if_$5 is dc.List<f_material.Widget>)){
casted$1=($if_$5 as dc.List<f_material.Widget>);
}else{
casted$1=(($if_$5 as dc.List).cast<f_material.Widget>());
}
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(2, f_material.Container(padding: (const f_material.EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0, )), color: color$1, child: f_material.Row(mainAxisAlignment: f_material.MainAxisAlignment.spaceBetween, children: casted$1, ), ), ));
late final f_material.SingleChildRenderObjectWidget $if_$15;
if(((false != _1) && (null != _1))){
final lcoc_core.PersistentVector cond_$GT_$6877_$AUTO_$4=lcoc_core.$_EMPTY_VECTOR;
late final dc.bool $if_$6;
if(lcoc_string.blank$QMARK_((const lcoc_core.Keyword(null, "description", 1880444823, ).$_invoke$1(_2, )), )){
$if_$6=false;
}else{
$if_$6=true;
}
late final dc.dynamic cond_$GT_$6877_$AUTO_$5;
if($if_$6){
final dc.dynamic o7014$4=lcold_card.html_section(lcold_strings.description_label$v1, (const lcoc_core.Keyword(null, "description", 1880444823, ).$_invoke$1(_2, )), false, );
if((cond_$GT_$6877_$AUTO_$4 is lcoc_core.ICollection$iface)){
cond_$GT_$6877_$AUTO_$5=((cond_$GT_$6877_$AUTO_$4 as lcoc_core.ICollection$iface).$_conj$1(o7014$4, ));
}else{
cond_$GT_$6877_$AUTO_$5=((lcoc_core.ICollection.extensions(cond_$GT_$6877_$AUTO_$4, ) as lcoc_core.ICollection$ext).$_conj$1(cond_$GT_$6877_$AUTO_$4, o7014$4, ));
}
}else{
cond_$GT_$6877_$AUTO_$5=cond_$GT_$6877_$AUTO_$4;
}
late final dc.bool $if_$7;
if(lcoc_string.blank$QMARK_((const lcoc_core.Keyword(null, "exemplo", 261906216, ).$_invoke$1(_2, )), )){
$if_$7=false;
}else{
$if_$7=true;
}
late final dc.dynamic cond_$GT_$6877_$AUTO_$6;
if($if_$7){
final dc.dynamic o7014$5=lcold_card.html_section(lcold_strings.example_label$v1, (const lcoc_core.Keyword(null, "exemplo", 261906216, ).$_invoke$1(_2, )), true, );
if((cond_$GT_$6877_$AUTO_$5 is lcoc_core.ICollection$iface)){
cond_$GT_$6877_$AUTO_$6=((cond_$GT_$6877_$AUTO_$5 as lcoc_core.ICollection$iface).$_conj$1(o7014$5, ));
}else{
cond_$GT_$6877_$AUTO_$6=((lcoc_core.ICollection.extensions(cond_$GT_$6877_$AUTO_$5, ) as lcoc_core.ICollection$ext).$_conj$1(cond_$GT_$6877_$AUTO_$5, o7014$5, ));
}
}else{
cond_$GT_$6877_$AUTO_$6=cond_$GT_$6877_$AUTO_$5;
}
late final dc.bool $if_$8;
if(lcoc_string.blank$QMARK_((const lcoc_core.Keyword(null, "libras", 154282157, ).$_invoke$1(_2, )), )){
$if_$8=false;
}else{
$if_$8=true;
}
late final dc.dynamic cond_$GT_$6877_$AUTO_$7;
if($if_$8){
final lcoc_core.VectorNode arg$8=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(4, f_material.Text((lcold_strings.glosa_label$v1 as dc.String), style: const f_material.TextStyle(fontWeight: f_material.FontWeight.bold, fontSize: 16.0, ), ), ));
(fl$9[1]=const f_material.SizedBox(height: 4.0, ));
(fl$9[2]=f_material.Container(padding: (const f_material.EdgeInsets.all(8.0, )), decoration: f_material.BoxDecoration(color: f_material.Colors.grey.shade100, borderRadius: (f_material.BorderRadius.circular(8.0, )), border: (f_material.Border.all(color: f_material.Colors.grey.shade300, )), ), child: f_material.Text(((const lcoc_core.Keyword(null, "libras", 154282157, ).$_invoke$1(_2, )) as dc.String), style: const f_material.TextStyle(fontFamily: "monospace", fontSize: 14.0, fontWeight: f_material.FontWeight.w600, ), ), ));
(fl$9[3]=const f_material.SizedBox(height: 12.0, ));
late final dc.List<f_material.Widget> casted$2;
if((lcoc_core.PersistentVector(null, 4, 5, arg$8, fl$9, -1, ) is dc.List<f_material.Widget>)){
casted$2=(lcoc_core.PersistentVector(null, 4, 5, arg$8, fl$9, -1, ) as dc.List<f_material.Widget>);
}else{
casted$2=((lcoc_core.PersistentVector(null, 4, 5, arg$8, fl$9, -1, ) as dc.List).cast<f_material.Widget>());
}
final f_material.Column o7014$6=f_material.Column(crossAxisAlignment: f_material.CrossAxisAlignment.start, children: casted$2, );
if((cond_$GT_$6877_$AUTO_$6 is lcoc_core.ICollection$iface)){
cond_$GT_$6877_$AUTO_$7=((cond_$GT_$6877_$AUTO_$6 as lcoc_core.ICollection$iface).$_conj$1(o7014$6, ));
}else{
cond_$GT_$6877_$AUTO_$7=((lcoc_core.ICollection.extensions(cond_$GT_$6877_$AUTO_$6, ) as lcoc_core.ICollection$ext).$_conj$1(cond_$GT_$6877_$AUTO_$6, o7014$6, ));
}
}else{
cond_$GT_$6877_$AUTO_$7=cond_$GT_$6877_$AUTO_$6;
}
late final dc.bool $if_$9;
if(lcoc_string.blank$QMARK_((const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(_2, )), )){
$if_$9=false;
}else{
$if_$9=true;
}
late final dc.dynamic cond_$GT_$6877_$AUTO_$8;
if($if_$9){
final dc.dynamic once$2=lcold_player.youtube_player_widget((const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(_2, )), );
late final f_material.Widget? $if_$10;
if((null != once$2)){
$if_$10=(once$2 as f_material.Widget);
}else{
$if_$10=null;
}
final f_material.Padding o7014$7=f_material.Padding(padding: (const f_material.EdgeInsets.only(bottom: 16.0, )), child: $if_$10, );
if((cond_$GT_$6877_$AUTO_$7 is lcoc_core.ICollection$iface)){
cond_$GT_$6877_$AUTO_$8=((cond_$GT_$6877_$AUTO_$7 as lcoc_core.ICollection$iface).$_conj$1(o7014$7, ));
}else{
cond_$GT_$6877_$AUTO_$8=((lcoc_core.ICollection.extensions(cond_$GT_$6877_$AUTO_$7, ) as lcoc_core.ICollection$ext).$_conj$1(cond_$GT_$6877_$AUTO_$7, o7014$7, ));
}
}else{
cond_$GT_$6877_$AUTO_$8=cond_$GT_$6877_$AUTO_$7;
}
late final dc.bool $if_$11;
if(lcoc_string.blank$QMARK_((const lcoc_core.Keyword(null, "image-url", 2752788238, ).$_invoke$1(_2, )), )){
$if_$11=false;
}else{
$if_$11=true;
}
late final dc.dynamic cond_$GT_$6877_$AUTO_$9;
if($if_$11){
final f_material.Padding o7014$8=f_material.Padding(padding: (const f_material.EdgeInsets.only(bottom: 16.0, )), child: (f_material.Image.network(((const lcoc_core.Keyword(null, "image-url", 2752788238, ).$_invoke$1(_2, )) as dc.String), fit: f_material.BoxFit.contain, errorBuilder: (dc.dynamic ctx$1, dc.dynamic err$1, dc.dynamic stack$1, ){
return (const f_material.SizedBox.shrink());
}, )), );
if((cond_$GT_$6877_$AUTO_$8 is lcoc_core.ICollection$iface)){
cond_$GT_$6877_$AUTO_$9=((cond_$GT_$6877_$AUTO_$8 as lcoc_core.ICollection$iface).$_conj$1(o7014$8, ));
}else{
cond_$GT_$6877_$AUTO_$9=((lcoc_core.ICollection.extensions(cond_$GT_$6877_$AUTO_$8, ) as lcoc_core.ICollection$ext).$_conj$1(cond_$GT_$6877_$AUTO_$8, o7014$8, ));
}
}else{
cond_$GT_$6877_$AUTO_$9=cond_$GT_$6877_$AUTO_$8;
}
late final dc.bool $if_$12;
if(lcoc_string.blank$QMARK_((const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(_2, )), )){
$if_$12=false;
}else{
$if_$12=true;
}
late final dc.dynamic $if_$14;
if($if_$12){
final dc.dynamic once$3=lcold_player.chewie_video_widget((const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(_2, )), );
late final f_material.Widget? $if_$13;
if((null != once$3)){
$if_$13=(once$3 as f_material.Widget);
}else{
$if_$13=null;
}
final f_material.Padding o7014$9=f_material.Padding(padding: (const f_material.EdgeInsets.only(bottom: 16.0, )), child: $if_$13, );
if((cond_$GT_$6877_$AUTO_$9 is lcoc_core.ICollection$iface)){
$if_$14=((cond_$GT_$6877_$AUTO_$9 as lcoc_core.ICollection$iface).$_conj$1(o7014$9, ));
}else{
$if_$14=((lcoc_core.ICollection.extensions(cond_$GT_$6877_$AUTO_$9, ) as lcoc_core.ICollection$ext).$_conj$1(cond_$GT_$6877_$AUTO_$9, o7014$9, ));
}
}else{
$if_$14=cond_$GT_$6877_$AUTO_$9;
}
late final dc.List<f_material.Widget> casted$3;
if((null == $if_$14)){
casted$3=(dc.List<f_material.Widget>.empty());
}else if(($if_$14 is dc.List<f_material.Widget>)){
casted$3=($if_$14 as dc.List<f_material.Widget>);
}else{
casted$3=(($if_$14 as dc.List).cast<f_material.Widget>());
}
$if_$15=f_material.Padding(padding: (const f_material.EdgeInsets.all(16.0, )), child: f_material.Column(crossAxisAlignment: f_material.CrossAxisAlignment.start, children: casted$3, ), );
}else{
$if_$15=(const f_material.SizedBox.shrink());
}
(fl$7[1]=$if_$15);
late final dc.List<f_material.Widget> casted$4;
if((lcoc_core.PersistentVector(null, 2, 5, arg$9, fl$7, -1, ) is dc.List<f_material.Widget>)){
casted$4=(lcoc_core.PersistentVector(null, 2, 5, arg$9, fl$7, -1, ) as dc.List<f_material.Widget>);
}else{
casted$4=((lcoc_core.PersistentVector(null, 2, 5, arg$9, fl$7, -1, ) as dc.List).cast<f_material.Widget>());
}
final f_material.Card child$9287_$AUTO_$1=f_material.Card(margin: (const f_material.EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0, )), elevation: 3.0, shape: f_material.RoundedRectangleBorder(borderRadius: (f_material.BorderRadius.circular(12.0, )), ), clipBehavior: f_material.Clip.antiAlias, child: f_material.Semantics(label: label$1, hint: $if_$16, child: f_material.InkWell(onTap: (){
return (lcoc_core.swap$BANG_.$_invoke$2(_0, lcoc_core.not, ));
}, child: f_material.Column(mainAxisSize: f_material.MainAxisSize.min, crossAxisAlignment: f_material.CrossAxisAlignment.stretch, children: casted$4, ), ), ), );
if(f_foundation.kDebugMode){
final dc.dynamic test$2=(lcoc_flutter.get_of.$_invoke$2(context$9100_$AUTO_$2, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$2) && (null != test$2))){
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$10[1]=47);
(fl$10[2]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$10[3]=4);
(fl$10[4]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$10[5]=(lcoc_core.symbol.$_invoke$2(null, "libras-dictionary.card", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8413184, 8413184, fl$10, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), ctx$9130_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "is-favorite", )), is_favorite$1, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), state$9129_$AUTO_$8, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), state$9123_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "expanded?", )), _0, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), context$9100_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "item", )), _2, (lcoc_core.symbol.$_invoke$2(null, "is-expanded", )), _1, (lcoc_core.symbol.$_invoke$2(null, "app", )), app$4, ], ));
}, child$9287_$AUTO_$1, );
}
return child$9287_$AUTO_$1;
}
return child$9287_$AUTO_$1;
}

dc.dynamic $_update_state$1(dc.dynamic state$9129_$AUTO_$9, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$5=(state$9129_$AUTO_$9 as lcoc_flutter.WatchState);
if((lcoc_core.$EQ_.$_invoke$2(null, state$9123_$AUTO_$5.k, ))){
return null;
}
final dc.dynamic doto$7753_$AUTO_$11=state$9123_$AUTO_$5.subscribable;
final dc.dynamic sub9052$3=state$9123_$AUTO_$5.subscription;
if((doto$7753_$AUTO_$11 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$11 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$3, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$11, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$11, sub9052$3, ));
}
final dc.dynamic subscribable$9124_$AUTO_$3=lcold_state.app_state;
state$9123_$AUTO_$5.k=null;
state$9123_$AUTO_$5.subscribable=subscribable$9124_$AUTO_$3;
dc.dynamic update$9126_$AUTO_$3(dc.dynamic app$5, ){
if((lcoc_core.$EQ_.$_invoke$2(app$5, state$9123_$AUTO_$5.latest, ))){
return null;
}
return (state$9123_$AUTO_$5.$_invoke$1(app$5, ));
}
late final dc.dynamic sub$9127_$AUTO_$3;
if((subscribable$9124_$AUTO_$3 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$3=((subscribable$9124_$AUTO_$3 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$3, ));
}else{
sub$9127_$AUTO_$3=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$3, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(subscribable$9124_$AUTO_$3, update$9126_$AUTO_$3, ));
}
late final dc.dynamic or$6718_$AUTO_$3;
if((subscribable$9124_$AUTO_$3 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$3=((subscribable$9124_$AUTO_$3 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$3, update$9126_$AUTO_$3, ));
}else{
or$6718_$AUTO_$3=((lcoc_flutter.Subscribable.extensions(subscribable$9124_$AUTO_$3, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(subscribable$9124_$AUTO_$3, sub$9127_$AUTO_$3, update$9126_$AUTO_$3, ));
}
if(((false != or$6718_$AUTO_$3) && (null != or$6718_$AUTO_$3))){
}else{
(update$9126_$AUTO_$3(null, ));
}
state$9123_$AUTO_$5.subscription=sub$9127_$AUTO_$3;
return state$9123_$AUTO_$5;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END watch_dictionary_item_card_M__caaxye$2
