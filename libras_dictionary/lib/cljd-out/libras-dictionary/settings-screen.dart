// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "../cljd/core.dart" as lcoc_core;
import "package:flutter/foundation.dart" as f_foundation;
import "card.dart" as lcold_card;
import "strings.dart" as lcold_strings;
import "settings-screen.dart" as lcolds_screen;
import "package:flutter/widgets.dart" as f_widgets;
import "state.dart" as lcold_state;
import "../cljd/flutter.dart" as lcoc_flutter;
import "package:flutter/material.dart" as f_material;

// BEGIN build-source-credit
dc.dynamic build_source_credit(dc.dynamic name$1, dc.dynamic org$1, dc.dynamic url$1, dc.dynamic copyright$1, ){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(5, f_material.Text((name$1 as dc.String), style: const f_material.TextStyle(fontWeight: f_material.FontWeight.bold, ), ), ));
(fl$1[1]=f_material.Text((org$1 as dc.String), style: const f_material.TextStyle(fontSize: 12.0, ), ));
(fl$1[2]=f_material.InkWell(onTap: (){
(lcold_state.launch_url$BANG_(url$1, ));
return null;
}, child: f_material.Text((url$1 as dc.String), style: const f_material.TextStyle(color: const f_material.Color(4279592384, ), fontSize: 12.0, ), ), ));
(fl$1[3]=f_material.Text((copyright$1 as dc.String), style: const f_material.TextStyle(fontSize: 11.0, fontStyle: f_material.FontStyle.italic, ), ));
(fl$1[4]=const f_material.SizedBox(height: 8.0, ));
late final dc.List<f_material.Widget> casted$1;
if((lcoc_core.PersistentVector(null, 5, 5, arg$1, fl$1, -1, ) is dc.List<f_material.Widget>)){
casted$1=(lcoc_core.PersistentVector(null, 5, 5, arg$1, fl$1, -1, ) as dc.List<f_material.Widget>);
}else{
casted$1=((lcoc_core.PersistentVector(null, 5, 5, arg$1, fl$1, -1, ) as dc.List).cast<f_material.Widget>());
}
return f_material.Padding(padding: (const f_material.EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0, )), child: f_material.Column(crossAxisAlignment: f_material.CrossAxisAlignment.start, children: casted$1, ), );
}

// END build-source-credit

// BEGIN settings-screen
dc.dynamic settings_screen(){
return lcolds_screen.widget_settings_screen_M__4wk9ma$1(null, );
}

// END settings-screen

// BEGIN source-labels
dc.dynamic source_labels$v1=(){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(10, "INES", ));
(fl$1[1]="INES (Dicionário INES)");
(fl$1[2]="RedeSurdos");
(fl$1[3]="Rede Surdos (UFC)");
(fl$1[4]="UFV");
(fl$1[5]="UFV (Universidade Federal de Viçosa)");
(fl$1[6]="LibrasAcademicaUFF");
(fl$1[7]="Libras Acadêmica (UFF)");
(fl$1[8]="SpreadTheSign");
(fl$1[9]="SpreadTheSign");
return lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(5, 29192, 29192, fl$1, ), -1, );
}();

// END source-labels

// BEGIN watch_settings_screen_M__caaxye$1
class watch_settings_screen_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final f_widgets.BuildContext _0;
final lcolds_screen.widget_settings_screen_M__4wk9ma$1 _1;

watch_settings_screen_M__caaxye$1(this._0, this._1, key$1, ):super(key: key$1, );

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
final f_widgets.BuildContext context$9100_$AUTO_$2=(ctx$9130_$AUTO_$1 as f_widgets.BuildContext);
late final dc.dynamic map$9773_$2;
if(((lcoc_core.ISeq.satisfies(state$4, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(state$4, );
if(((false != test$1) && (null != test$1))){
map$9773_$2=lcoc_core.seq_to_map_for_destructuring(state$4, );
}else{
late final dc.dynamic $if_$1;
if((state$4 is lcoc_core.ISeqable$iface)){
$if_$1=((state$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(state$4, ) as lcoc_core.ISeqable$ext).$_seq$0(state$4, ));
}
if(((false != $if_$1) && (null != $if_$1))){
map$9773_$2=lcoc_core.first(state$4, );
}else{
map$9773_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9773_$2=state$4;
}
late final dc.dynamic enabled_sources$1;
if((map$9773_$2 is lcoc_core.ILookup$iface)){
enabled_sources$1=((map$9773_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "enabled-sources", 2677619369, ), ));
}else{
enabled_sources$1=((lcoc_core.ILookup.extensions(map$9773_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9773_$2, const lcoc_core.Keyword(null, "enabled-sources", 2677619369, ), ));
}
late final dc.dynamic is_share_minimal$1;
if((map$9773_$2 is lcoc_core.ILookup$iface)){
is_share_minimal$1=((map$9773_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "is-share-minimal", 2561305987, ), ));
}else{
is_share_minimal$1=((lcoc_core.ILookup.extensions(map$9773_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9773_$2, const lcoc_core.Keyword(null, "is-share-minimal", 2561305987, ), ));
}
late final dc.dynamic show_youtube_button$1;
if((map$9773_$2 is lcoc_core.ILookup$iface)){
show_youtube_button$1=((map$9773_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "show-youtube-button", 3823822520, ), ));
}else{
show_youtube_button$1=((lcoc_core.ILookup.extensions(map$9773_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9773_$2, const lcoc_core.Keyword(null, "show-youtube-button", 3823822520, ), ));
}
final lcoc_core.VectorNode arg$5=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(18, f_material.ListTile(title: f_material.Text((lcold_strings.settings_search_section$v1 as dc.String), style: const f_material.TextStyle(fontWeight: f_material.FontWeight.bold, ), ), ), ));
(fl$3[1]=f_material.SwitchListTile(title: f_material.Text((lcold_strings.settings_youtube_button$v1 as dc.String), ), subtitle: f_material.Text((lcold_strings.settings_youtube_button_sub$v1 as dc.String), ), value: (show_youtube_button$1 as dc.bool), onChanged: (dc.dynamic val$1, ){
(lcold_state.set_show_youtube_button$BANG_(val$1, ));
return null;
}, ));
(fl$3[2]=f_material.SwitchListTile(title: f_material.Text((lcold_strings.settings_share_minimal$v1 as dc.String), ), subtitle: f_material.Text((lcold_strings.settings_share_minimal_sub$v1 as dc.String), ), value: (is_share_minimal$1 as dc.bool), onChanged: (dc.dynamic val$2, ){
(lcold_state.set_share_minimal$BANG_(val$2, ));
return null;
}, ));
(fl$3[3]=const f_material.Divider());
(fl$3[4]=f_material.ListTile(title: f_material.Text((lcold_strings.settings_sources$v1 as dc.String), style: const f_material.TextStyle(fontWeight: f_material.FontWeight.bold, ), ), subtitle: f_material.Text((lcold_strings.settings_sources_sub$v1 as dc.String), ), ));
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(5, "INES", ));
(fl$4[1]="UFV");
(fl$4[2]="RedeSurdos");
(fl$4[3]="LibrasAcademicaUFF");
(fl$4[4]="SpreadTheSign");
final dc.dynamic $1=(lcoc_core.map.$_invoke$2((dc.dynamic source$1, ){
final dc.dynamic o7140$1=lcolds_screen.source_labels$v1;
late final dc.String cast$1;
if((o7140$1 is lcoc_core.ILookup$iface)){
cast$1=(((o7140$1 as lcoc_core.ILookup$iface).$_lookup$2(source$1, source$1, )) as dc.String);
}else{
cast$1=(((lcoc_core.ILookup.extensions(o7140$1, ) as lcoc_core.ILookup$ext).$_lookup$2(o7140$1, source$1, source$1, )) as dc.String);
}
return f_material.SwitchListTile(title: f_material.Text(cast$1, ), value: lcoc_core.contains$QMARK_(enabled_sources$1, source$1, ), secondary: f_material.Container(width: 24.0, height: 24.0, decoration: f_material.BoxDecoration(color: lcold_card.get_source_color(source$1, ), shape: f_material.BoxShape.circle, ), ), onChanged: (dc.dynamic val$3, ){
(lcold_state.set_source_enabled$BANG_(source$1, val$3, ));
return null;
}, );
}, lcoc_core.PersistentVector(null, 5, 5, arg$3, fl$4, -1, ), ));
late final dc.List<f_material.Widget> casted$1;
if((null == $1)){
casted$1=(dc.List<f_material.Widget>.empty());
}else if(($1 is dc.List<f_material.Widget>)){
casted$1=($1 as dc.List<f_material.Widget>);
}else{
casted$1=(($1 as dc.List).cast<f_material.Widget>());
}
(fl$3[5]=f_material.Column(mainAxisSize: f_material.MainAxisSize.min, children: casted$1, ));
(fl$3[6]=const f_material.Divider());
(fl$3[7]=f_material.ListTile(title: f_material.Text((lcold_strings.settings_credits$v1 as dc.String), style: const f_material.TextStyle(fontWeight: f_material.FontWeight.bold, ), ), subtitle: f_material.Text((lcold_strings.settings_credits_sub$v1 as dc.String), ), ));
(fl$3[8]=lcolds_screen.build_source_credit("INES", "Instituto Nacional de Educação de Surdos", "http://dicionario.ines.gov.br/", "Os direitos autorais dos vídeos e imagens pertencem ao INES. O uso neste aplicativo é para fins educacionais e de acessibilidade.", ));
(fl$3[9]=lcolds_screen.build_source_credit("Rede Surdos", "Universidade Federal do Ceará (UFC)", "https://redesurdosce.ufc.br/", "Conteúdo disponibilizado pela Rede Surdos da UFC. Todos os direitos reservados aos produtores originais.", ));
(fl$3[10]=lcolds_screen.build_source_credit("UFV", "Universidade Federal de Viçosa", "https://sistemas.cead.ufv.br/capes/dicionario/", "Dicionário de Libras da UFV. Conteúdo protegido por direitos autorais da instituição.", ));
(fl$3[11]=lcolds_screen.build_source_credit("Libras Acadêmica", "Universidade Federal Fluminense (UFF)", "https://librasacademica.uff.br/", "Glossário de Libras Acadêmica da UFF. Direitos reservados à UFF.", ));
(fl$3[12]=lcolds_screen.build_source_credit("SpreadTheSign", "European Sign Language Centre", "https://www.spreadthesign.com/", "SpreadTheSign é um dicionário internacional. Os direitos pertencem ao European Sign Language Centre.", ));
(fl$3[13]=lcolds_screen.build_source_credit("Ícone de Libras", "Wikimedia Commons", "https://en.wikipedia.org/wiki/File:Brazilian_Sign_Language_Symbol.svg", "O símbolo da Língua Brasileira de Sinais usado neste projeto está disponível sob a licença Creative Commons CC0 1.0 Universal Public Domain Dedication.", ));
(fl$3[14]=const f_material.Divider());
(fl$3[15]=f_material.ListTile(title: f_material.Text((lcold_strings.settings_license$v1 as dc.String), style: const f_material.TextStyle(fontWeight: f_material.FontWeight.bold, ), ), ));
final lcoc_core.VectorNode arg$4=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(6, f_material.Text((lcold_strings.settings_license_text$v1 as dc.String), ), ));
(fl$5[1]=const f_material.SizedBox(height: 8.0, ));
(fl$5[2]=f_material.InkWell(onTap: (){
(lcold_state.launch_url$BANG_("https://github.com/3duardobn/libras_dicionario", ));
return null;
}, child: f_material.Text((lcold_strings.settings_github$v1 as dc.String), style: const f_material.TextStyle(color: const f_material.Color(4279592384, ), decoration: f_material.TextDecoration.underline, ), ), ));
(fl$5[3]=const f_material.SizedBox(height: 8.0, ));
(fl$5[4]=f_material.InkWell(onTap: (){
(lcold_state.launch_url$BANG_("https://edbn.dev/projetos/libras-dicionario/", ));
return null;
}, child: f_material.Text((lcold_strings.settings_website$v1 as dc.String), style: const f_material.TextStyle(color: const f_material.Color(4279592384, ), decoration: f_material.TextDecoration.underline, ), ), ));
(fl$5[5]=const f_material.SizedBox(height: 16.0, ));
late final dc.List<f_material.Widget> casted$2;
if((lcoc_core.PersistentVector(null, 6, 5, arg$4, fl$5, -1, ) is dc.List<f_material.Widget>)){
casted$2=(lcoc_core.PersistentVector(null, 6, 5, arg$4, fl$5, -1, ) as dc.List<f_material.Widget>);
}else{
casted$2=((lcoc_core.PersistentVector(null, 6, 5, arg$4, fl$5, -1, ) as dc.List).cast<f_material.Widget>());
}
(fl$3[16]=f_material.Padding(padding: (const f_material.EdgeInsets.symmetric(horizontal: 16.0, )), child: f_material.Column(crossAxisAlignment: f_material.CrossAxisAlignment.start, children: casted$2, ), ));
(fl$3[17]=const f_material.Divider());
late final dc.List<f_material.Widget> casted$3;
if((lcoc_core.PersistentVector(null, 18, 5, arg$5, fl$3, -1, ) is dc.List<f_material.Widget>)){
casted$3=(lcoc_core.PersistentVector(null, 18, 5, arg$5, fl$3, -1, ) as dc.List<f_material.Widget>);
}else{
casted$3=((lcoc_core.PersistentVector(null, 18, 5, arg$5, fl$3, -1, ) as dc.List).cast<f_material.Widget>());
}
final f_material.Scaffold child$9287_$AUTO_$1=f_material.Scaffold(appBar: f_material.AppBar(title: f_material.Text((lcold_strings.settings_title$v1 as dc.String), ), ), body: f_material.ListView(children: casted$3, ), );
if(f_foundation.kDebugMode){
final dc.dynamic test$2=(lcoc_flutter.get_of.$_invoke$2(context$9100_$AUTO_$2, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$2) && (null != test$2))){
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$6[1]=35);
(fl$6[2]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$6[3]=4);
(fl$6[4]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$6[5]=(lcoc_core.symbol.$_invoke$2(null, "libras-dictionary.settings-screen", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8413184, 8413184, fl$6, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "ctx", )), _0, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), ctx$9130_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), state$9129_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), state$9123_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), context$9100_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "___9280__auto__", )), _1, (lcoc_core.symbol.$_invoke$2(null, "state", )), state$4, ], ));
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

// END watch_settings_screen_M__caaxye$1

// BEGIN widget_settings_screen_M__4wk9ma$1
class widget_settings_screen_M__4wk9ma$1 extends f_widgets.StatelessWidget {

widget_settings_screen_M__4wk9ma$1(key$2, ):super(key: key$2, );

f_widgets.Widget build(f_widgets.BuildContext context$9100_$AUTO_$1, ){
return lcolds_screen.watch_settings_screen_M__caaxye$1(context$9100_$AUTO_$1, this, null, );
}
}

// END widget_settings_screen_M__4wk9ma$1
