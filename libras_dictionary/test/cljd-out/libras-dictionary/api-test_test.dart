// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "../../../lib/cljd-out/cljd/core.dart" as lcoc_core;
import "package:test/test.dart" as t_test;
import "../../../lib/cljd-out/libras-dictionary/models.dart" as lcold_models;
import "../../../lib/cljd-out/libras-dictionary/api.dart" as lcold_api;
import "../../../lib/cljd-out/cljd/test.dart" as lcoc_test;
import "dart:async" as da;
import "../../../lib/cljd-out/libras-dictionary/state.dart" as lcold_state;
import "api-test_test.dart" as lcolda_test;

// BEGIN -cljd-test-runner-entry-point
dc.dynamic main(){
(lcolda_test.extract_video_and_youtube_id_test());
(lcolda_test.rank_results_test());
(lcolda_test.word_bound_regex_test());
(lcolda_test.youtube_search_url_test());
(lcolda_test.parse_ines_body_test());
(lcolda_test.suggestions_for_test());
(lcolda_test.ines_words_test());
return lcolda_test.normalize_test();
}

// END -cljd-test-runner-entry-point

// BEGIN extract-video-and-youtube-id-test
dc.dynamic extract_video_and_youtube_id_test(){
dc.dynamic thunk$9142_$AUTO_$1(){
final dc.dynamic vec$9264_$1=lcoc_test.$STAR_in_test$STAR_;
dc.dynamic maybe_f$8(){
dc.dynamic maybe_f$1(){
final dc.dynamic r$1=lcold_api.extract_video_and_youtube_id("<p>x</p><video controls src=\"https://ex.com/sinal.mp4\"></video>", );
late final lcoc_core.PersistentHashMap? $try_$1;
try {
final dc.dynamic values$9083_$AUTO_$1=(lcoc_core.list.$_invoke$2("https://ex.com/sinal.mp4", (const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(r$1, )), ));
final dc.dynamic result$9084_$AUTO_$1=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$1, ));
if(((false != result$9084_$AUTO_$1) && (null != result$9084_$AUTO_$1))){
$try_$1=null;
}else{
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$1[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$1[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$1[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$1, ), )));
(fl$1[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$1[5]=null);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$1, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$1, st$9107_$AUTO_$1) {
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$2[1]=t$9106_$AUTO_$1);
(fl$2[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$2[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$2[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$2[5]=st$9107_$AUTO_$1);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$2, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$1=lcoc_test.result($try_$1, );
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$3[1]="https://ex.com/sinal.mp4");
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "video-url", 3045839472, ), ));
(fl$4[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
final lcoc_core.PersistentList $1=lcoc_core.$_list_lit(fl$4, );
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$5[1]=28);
(fl$5[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$5[3]=55);
(fl$5[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$5[5]=28);
(fl$5[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$5[7]=41);
final dc.dynamic $2=lcoc_core.with_meta($1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$5, ), -1, ), );
(fl$3[2]=$2);
final lcoc_core.PersistentList $3=lcoc_core.$_list_lit(fl$3, );
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$6[1]=28);
(fl$6[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$6[3]=56);
(fl$6[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$6[5]=28);
(fl$6[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$6[7]=11);
final dc.dynamic $4=lcoc_core.with_meta($3, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$6, ), -1, ), );
final dc.dynamic $5=lcoc_test.cljd_test_matcher($4, );
(t_test.expect(r$9105_$AUTO_$1, $5, ));
late final lcoc_core.PersistentHashMap? $try_$2;
try {
final dc.dynamic values$9083_$AUTO_$2=(lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(r$1, )), ));
final dc.dynamic result$9084_$AUTO_$2=(lcoc_core.apply.$_invoke$2(lcoc_core.nil$QMARK_, values$9083_$AUTO_$2, ));
if(((false != result$9084_$AUTO_$2) && (null != result$9084_$AUTO_$2))){
$try_$2=null;
}else{
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$7[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$7[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$7[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "nil?", )), values$9083_$AUTO_$2, ), )));
(fl$7[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$7[5]=null);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$7, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$2, st$9107_$AUTO_$2) {
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$8[1]=t$9106_$AUTO_$2);
(fl$8[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$8[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$8[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$8[5]=st$9107_$AUTO_$2);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$8, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$2=lcoc_test.result($try_$2, );
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "nil?", )), ));
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$10[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
final lcoc_core.PersistentList $6=lcoc_core.$_list_lit(fl$10, );
final dc.List<dc.dynamic> fl$11=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$11[1]=29);
(fl$11[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$11[3]=32);
(fl$11[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$11[5]=29);
(fl$11[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$11[7]=17);
final dc.dynamic $7=lcoc_core.with_meta($6, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$11, ), -1, ), );
(fl$9[1]=$7);
final lcoc_core.PersistentList $8=lcoc_core.$_list_lit(fl$9, );
final dc.List<dc.dynamic> fl$12=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$12[1]=29);
(fl$12[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$12[3]=33);
(fl$12[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$12[5]=29);
(fl$12[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$12[7]=11);
final dc.dynamic $9=lcoc_core.with_meta($8, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$12, ), -1, ), );
final dc.dynamic $10=lcoc_test.cljd_test_matcher($9, );
return t_test.expect(r$9105_$AUTO_$2, $10, );
}
late final dc.dynamic Function() wrapper_f$1;
if((maybe_f$1 is dc.dynamic Function())){
wrapper_f$1=maybe_f$1;
}else{
wrapper_f$1=(){
if((maybe_f$1 is dc.Function)){
return (maybe_f$1 as dc.Function)();
}
if((maybe_f$1 is lcoc_core.IFn$iface)){
return ((maybe_f$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$1, ).$_invoke$0(maybe_f$1, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$1=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$1;
if((k$7857_$AUTO_$1 is lcoc_core.IHash$iface)){
cast$1=(((k$7857_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$1, )) as dc.int);
}
final dc.dynamic coll7013$1=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$1;
if((coll7013$1 is lcoc_core.ICollection$iface)){
$if_$1=((coll7013$1 as lcoc_core.ICollection$iface).$_conj$1("video tag wins", ));
}else{
$if_$1=((lcoc_core.ICollection.extensions(coll7013$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$1, "video tag wins", ));
}
final lcoc_core.BitmapNode $11=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$1, k$7857_$AUTO_$1, lcoc_core.Volatile($if_$1, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $11, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $11, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $11, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$2(){
final dc.dynamic r$2=lcold_api.extract_video_and_youtube_id("<iframe src=\"https://www.youtube.com/embed/abc123XYZ?feature=oembed\"></iframe>", );
late final lcoc_core.PersistentHashMap? $try_$3;
try {
final dc.dynamic values$9083_$AUTO_$3=(lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(r$2, )), ));
final dc.dynamic result$9084_$AUTO_$3=(lcoc_core.apply.$_invoke$2(lcoc_core.nil$QMARK_, values$9083_$AUTO_$3, ));
if(((false != result$9084_$AUTO_$3) && (null != result$9084_$AUTO_$3))){
$try_$3=null;
}else{
final dc.List<dc.dynamic> fl$13=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$13[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$13[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$13[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "nil?", )), values$9083_$AUTO_$3, ), )));
(fl$13[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$13[5]=null);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$13, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$3, st$9107_$AUTO_$3) {
final dc.List<dc.dynamic> fl$14=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$14[1]=t$9106_$AUTO_$3);
(fl$14[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$14[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$14[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$14[5]=st$9107_$AUTO_$3);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$14, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$3=lcoc_test.result($try_$3, );
final dc.List<dc.dynamic> fl$15=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "nil?", )), ));
final dc.List<dc.dynamic> fl$16=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "video-url", 3045839472, ), ));
(fl$16[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
final lcoc_core.PersistentList $12=lcoc_core.$_list_lit(fl$16, );
final dc.List<dc.dynamic> fl$17=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$17[1]=34);
(fl$17[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$17[3]=31);
(fl$17[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$17[5]=34);
(fl$17[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$17[7]=17);
final dc.dynamic $13=lcoc_core.with_meta($12, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$17, ), -1, ), );
(fl$15[1]=$13);
final lcoc_core.PersistentList $14=lcoc_core.$_list_lit(fl$15, );
final dc.List<dc.dynamic> fl$18=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$18[1]=34);
(fl$18[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$18[3]=32);
(fl$18[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$18[5]=34);
(fl$18[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$18[7]=11);
final dc.dynamic $15=lcoc_core.with_meta($14, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$18, ), -1, ), );
final dc.dynamic $16=lcoc_test.cljd_test_matcher($15, );
(t_test.expect(r$9105_$AUTO_$3, $16, ));
late final lcoc_core.PersistentHashMap? $try_$4;
try {
final dc.dynamic values$9083_$AUTO_$4=(lcoc_core.list.$_invoke$2("abc123XYZ", (const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(r$2, )), ));
final dc.dynamic result$9084_$AUTO_$4=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$4, ));
if(((false != result$9084_$AUTO_$4) && (null != result$9084_$AUTO_$4))){
$try_$4=null;
}else{
final dc.List<dc.dynamic> fl$19=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$19[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$19[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$19[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$4, ), )));
(fl$19[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$19[5]=null);
$try_$4=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$19, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$4, st$9107_$AUTO_$4) {
final dc.List<dc.dynamic> fl$20=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$20[1]=t$9106_$AUTO_$4);
(fl$20[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$20[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$20[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$20[5]=st$9107_$AUTO_$4);
$try_$4=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$20, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$4=lcoc_test.result($try_$4, );
final dc.List<dc.dynamic> fl$21=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$21[1]="abc123XYZ");
final dc.List<dc.dynamic> fl$22=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$22[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
final lcoc_core.PersistentList $17=lcoc_core.$_list_lit(fl$22, );
final dc.List<dc.dynamic> fl$23=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$23[1]=35);
(fl$23[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$23[3]=41);
(fl$23[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$23[5]=35);
(fl$23[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$23[7]=26);
final dc.dynamic $18=lcoc_core.with_meta($17, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$23, ), -1, ), );
(fl$21[2]=$18);
final lcoc_core.PersistentList $19=lcoc_core.$_list_lit(fl$21, );
final dc.List<dc.dynamic> fl$24=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$24[1]=35);
(fl$24[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$24[3]=42);
(fl$24[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$24[5]=35);
(fl$24[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$24[7]=11);
final dc.dynamic $20=lcoc_core.with_meta($19, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$24, ), -1, ), );
final dc.dynamic $21=lcoc_test.cljd_test_matcher($20, );
return t_test.expect(r$9105_$AUTO_$4, $21, );
}
late final dc.dynamic Function() wrapper_f$2;
if((maybe_f$2 is dc.dynamic Function())){
wrapper_f$2=maybe_f$2;
}else{
wrapper_f$2=(){
if((maybe_f$2 is dc.Function)){
return (maybe_f$2 as dc.Function)();
}
if((maybe_f$2 is lcoc_core.IFn$iface)){
return ((maybe_f$2 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$2, ).$_invoke$0(maybe_f$2, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$2=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$2=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$2;
if((k$7857_$AUTO_$2 is lcoc_core.IHash$iface)){
cast$2=(((k$7857_$AUTO_$2 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$2=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$2, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$2, )) as dc.int);
}
final dc.dynamic coll7013$2=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$2;
if((coll7013$2 is lcoc_core.ICollection$iface)){
$if_$2=((coll7013$2 as lcoc_core.ICollection$iface).$_conj$1("youtube embed iframe", ));
}else{
$if_$2=((lcoc_core.ICollection.extensions(coll7013$2, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$2, "youtube embed iframe", ));
}
final lcoc_core.BitmapNode $22=(node$7856_$AUTO_$2.inode_assoc_transient(0, cast$2, k$7857_$AUTO_$2, lcoc_core.Volatile($if_$2, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$2;
if((lcoc_core.PersistentHashMap(null, $22, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$2=(lcoc_core.PersistentHashMap(null, $22, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$2=((lcoc_core.PersistentHashMap(null, $22, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$2, zoneValues: casted$2, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$3(){
final dc.dynamic r$3=lcold_api.extract_video_and_youtube_id("veja https://www.youtube.com/watch?v=qwe456 no site", );
late final lcoc_core.PersistentHashMap? $try_$5;
try {
final dc.dynamic values$9083_$AUTO_$5=(lcoc_core.list.$_invoke$2("qwe456", (const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(r$3, )), ));
final dc.dynamic result$9084_$AUTO_$5=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$5, ));
if(((false != result$9084_$AUTO_$5) && (null != result$9084_$AUTO_$5))){
$try_$5=null;
}else{
final dc.List<dc.dynamic> fl$25=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$25[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$25[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$25[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$5, ), )));
(fl$25[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$25[5]=null);
$try_$5=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$25, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$5, st$9107_$AUTO_$5) {
final dc.List<dc.dynamic> fl$26=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$26[1]=t$9106_$AUTO_$5);
(fl$26[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$26[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$26[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$26[5]=st$9107_$AUTO_$5);
$try_$5=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$26, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$5=lcoc_test.result($try_$5, );
final dc.List<dc.dynamic> fl$27=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$27[1]="qwe456");
final dc.List<dc.dynamic> fl$28=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$28[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
final lcoc_core.PersistentList $23=lcoc_core.$_list_lit(fl$28, );
final dc.List<dc.dynamic> fl$29=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$29[1]=40);
(fl$29[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$29[3]=38);
(fl$29[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$29[5]=40);
(fl$29[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$29[7]=23);
final dc.dynamic $24=lcoc_core.with_meta($23, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$29, ), -1, ), );
(fl$27[2]=$24);
final lcoc_core.PersistentList $25=lcoc_core.$_list_lit(fl$27, );
final dc.List<dc.dynamic> fl$30=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$30[1]=40);
(fl$30[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$30[3]=39);
(fl$30[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$30[5]=40);
(fl$30[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$30[7]=11);
final dc.dynamic $26=lcoc_core.with_meta($25, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$30, ), -1, ), );
final dc.dynamic $27=lcoc_test.cljd_test_matcher($26, );
return t_test.expect(r$9105_$AUTO_$5, $27, );
}
late final dc.dynamic Function() wrapper_f$3;
if((maybe_f$3 is dc.dynamic Function())){
wrapper_f$3=maybe_f$3;
}else{
wrapper_f$3=(){
if((maybe_f$3 is dc.Function)){
return (maybe_f$3 as dc.Function)();
}
if((maybe_f$3 is lcoc_core.IFn$iface)){
return ((maybe_f$3 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$3, ).$_invoke$0(maybe_f$3, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$3=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$3=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$3;
if((k$7857_$AUTO_$3 is lcoc_core.IHash$iface)){
cast$3=(((k$7857_$AUTO_$3 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$3=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$3, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$3, )) as dc.int);
}
final dc.dynamic coll7013$3=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$3;
if((coll7013$3 is lcoc_core.ICollection$iface)){
$if_$3=((coll7013$3 as lcoc_core.ICollection$iface).$_conj$1("youtube watch url", ));
}else{
$if_$3=((lcoc_core.ICollection.extensions(coll7013$3, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$3, "youtube watch url", ));
}
final lcoc_core.BitmapNode $28=(node$7856_$AUTO_$3.inode_assoc_transient(0, cast$3, k$7857_$AUTO_$3, lcoc_core.Volatile($if_$3, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$3;
if((lcoc_core.PersistentHashMap(null, $28, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$3=(lcoc_core.PersistentHashMap(null, $28, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$3=((lcoc_core.PersistentHashMap(null, $28, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$3, zoneValues: casted$3, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$4(){
final dc.dynamic r$4=lcold_api.extract_video_and_youtube_id("<a href=\"https://youtu.be/short789\">video</a>", );
late final lcoc_core.PersistentHashMap? $try_$6;
try {
final dc.dynamic values$9083_$AUTO_$6=(lcoc_core.list.$_invoke$2("short789", (const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(r$4, )), ));
final dc.dynamic result$9084_$AUTO_$6=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$6, ));
if(((false != result$9084_$AUTO_$6) && (null != result$9084_$AUTO_$6))){
$try_$6=null;
}else{
final dc.List<dc.dynamic> fl$31=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$31[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$31[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$31[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$6, ), )));
(fl$31[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$31[5]=null);
$try_$6=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$31, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$6, st$9107_$AUTO_$6) {
final dc.List<dc.dynamic> fl$32=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$32[1]=t$9106_$AUTO_$6);
(fl$32[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$32[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$32[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$32[5]=st$9107_$AUTO_$6);
$try_$6=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$32, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$6=lcoc_test.result($try_$6, );
final dc.List<dc.dynamic> fl$33=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$33[1]="short789");
final dc.List<dc.dynamic> fl$34=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$34[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
final lcoc_core.PersistentList $29=lcoc_core.$_list_lit(fl$34, );
final dc.List<dc.dynamic> fl$35=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$35[1]=45);
(fl$35[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$35[3]=40);
(fl$35[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$35[5]=45);
(fl$35[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$35[7]=25);
final dc.dynamic $30=lcoc_core.with_meta($29, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$35, ), -1, ), );
(fl$33[2]=$30);
final lcoc_core.PersistentList $31=lcoc_core.$_list_lit(fl$33, );
final dc.List<dc.dynamic> fl$36=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$36[1]=45);
(fl$36[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$36[3]=41);
(fl$36[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$36[5]=45);
(fl$36[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$36[7]=11);
final dc.dynamic $32=lcoc_core.with_meta($31, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$36, ), -1, ), );
final dc.dynamic $33=lcoc_test.cljd_test_matcher($32, );
return t_test.expect(r$9105_$AUTO_$6, $33, );
}
late final dc.dynamic Function() wrapper_f$4;
if((maybe_f$4 is dc.dynamic Function())){
wrapper_f$4=maybe_f$4;
}else{
wrapper_f$4=(){
if((maybe_f$4 is dc.Function)){
return (maybe_f$4 as dc.Function)();
}
if((maybe_f$4 is lcoc_core.IFn$iface)){
return ((maybe_f$4 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$4, ).$_invoke$0(maybe_f$4, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$4=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$4=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$4;
if((k$7857_$AUTO_$4 is lcoc_core.IHash$iface)){
cast$4=(((k$7857_$AUTO_$4 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$4=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$4, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$4, )) as dc.int);
}
final dc.dynamic coll7013$4=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$4;
if((coll7013$4 is lcoc_core.ICollection$iface)){
$if_$4=((coll7013$4 as lcoc_core.ICollection$iface).$_conj$1("youtu.be short url", ));
}else{
$if_$4=((lcoc_core.ICollection.extensions(coll7013$4, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$4, "youtu.be short url", ));
}
final lcoc_core.BitmapNode $34=(node$7856_$AUTO_$4.inode_assoc_transient(0, cast$4, k$7857_$AUTO_$4, lcoc_core.Volatile($if_$4, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$4;
if((lcoc_core.PersistentHashMap(null, $34, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$4=(lcoc_core.PersistentHashMap(null, $34, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$4=((lcoc_core.PersistentHashMap(null, $34, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$4, zoneValues: casted$4, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$5(){
final dc.dynamic r$5=lcold_api.extract_video_and_youtube_id("<source src=\"http://ex.com/media/palavra.mp4\" type=\"video/mp4\">", );
late final lcoc_core.PersistentHashMap? $try_$7;
try {
final dc.dynamic values$9083_$AUTO_$7=(lcoc_core.list.$_invoke$2("http://ex.com/media/palavra.mp4", (const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(r$5, )), ));
final dc.dynamic result$9084_$AUTO_$7=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$7, ));
if(((false != result$9084_$AUTO_$7) && (null != result$9084_$AUTO_$7))){
$try_$7=null;
}else{
final dc.List<dc.dynamic> fl$37=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$37[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$37[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$37[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$7, ), )));
(fl$37[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$37[5]=null);
$try_$7=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$37, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$7, st$9107_$AUTO_$7) {
final dc.List<dc.dynamic> fl$38=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$38[1]=t$9106_$AUTO_$7);
(fl$38[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$38[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$38[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$38[5]=st$9107_$AUTO_$7);
$try_$7=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$38, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$7=lcoc_test.result($try_$7, );
final dc.List<dc.dynamic> fl$39=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$39[1]="http://ex.com/media/palavra.mp4");
final dc.List<dc.dynamic> fl$40=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "video-url", 3045839472, ), ));
(fl$40[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
final lcoc_core.PersistentList $35=lcoc_core.$_list_lit(fl$40, );
final dc.List<dc.dynamic> fl$41=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$41[1]=50);
(fl$41[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$41[3]=62);
(fl$41[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$41[5]=50);
(fl$41[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$41[7]=48);
final dc.dynamic $36=lcoc_core.with_meta($35, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$41, ), -1, ), );
(fl$39[2]=$36);
final lcoc_core.PersistentList $37=lcoc_core.$_list_lit(fl$39, );
final dc.List<dc.dynamic> fl$42=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$42[1]=50);
(fl$42[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$42[3]=63);
(fl$42[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$42[5]=50);
(fl$42[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$42[7]=11);
final dc.dynamic $38=lcoc_core.with_meta($37, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$42, ), -1, ), );
final dc.dynamic $39=lcoc_test.cljd_test_matcher($38, );
return t_test.expect(r$9105_$AUTO_$7, $39, );
}
late final dc.dynamic Function() wrapper_f$5;
if((maybe_f$5 is dc.dynamic Function())){
wrapper_f$5=maybe_f$5;
}else{
wrapper_f$5=(){
if((maybe_f$5 is dc.Function)){
return (maybe_f$5 as dc.Function)();
}
if((maybe_f$5 is lcoc_core.IFn$iface)){
return ((maybe_f$5 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$5, ).$_invoke$0(maybe_f$5, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$5=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$5=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$5;
if((k$7857_$AUTO_$5 is lcoc_core.IHash$iface)){
cast$5=(((k$7857_$AUTO_$5 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$5=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$5, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$5, )) as dc.int);
}
final dc.dynamic coll7013$5=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$5;
if((coll7013$5 is lcoc_core.ICollection$iface)){
$if_$5=((coll7013$5 as lcoc_core.ICollection$iface).$_conj$1("bare mp4 src fallback", ));
}else{
$if_$5=((lcoc_core.ICollection.extensions(coll7013$5, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$5, "bare mp4 src fallback", ));
}
final lcoc_core.BitmapNode $40=(node$7856_$AUTO_$5.inode_assoc_transient(0, cast$5, k$7857_$AUTO_$5, lcoc_core.Volatile($if_$5, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$5;
if((lcoc_core.PersistentHashMap(null, $40, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$5=(lcoc_core.PersistentHashMap(null, $40, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$5=((lcoc_core.PersistentHashMap(null, $40, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$5, zoneValues: casted$5, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$6(){
final dc.dynamic r$6=lcold_api.extract_video_and_youtube_id((lcoc_core.str.$_invoke$2("<video src=\"https://ex.com/a.mp4\"></video>", "<iframe src=\"https://www.youtube.com/embed/zzz\"></iframe>", )), );
late final lcoc_core.PersistentHashMap? $try_$8;
try {
final dc.dynamic values$9083_$AUTO_$8=(lcoc_core.list.$_invoke$2("https://ex.com/a.mp4", (const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(r$6, )), ));
final dc.dynamic result$9084_$AUTO_$8=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$8, ));
if(((false != result$9084_$AUTO_$8) && (null != result$9084_$AUTO_$8))){
$try_$8=null;
}else{
final dc.List<dc.dynamic> fl$43=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$43[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$43[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$43[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$8, ), )));
(fl$43[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$43[5]=null);
$try_$8=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$43, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$8, st$9107_$AUTO_$8) {
final dc.List<dc.dynamic> fl$44=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$44[1]=t$9106_$AUTO_$8);
(fl$44[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$44[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$44[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$44[5]=st$9107_$AUTO_$8);
$try_$8=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$44, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$8=lcoc_test.result($try_$8, );
final dc.List<dc.dynamic> fl$45=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$45[1]="https://ex.com/a.mp4");
final dc.List<dc.dynamic> fl$46=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "video-url", 3045839472, ), ));
(fl$46[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
final lcoc_core.PersistentList $41=lcoc_core.$_list_lit(fl$46, );
final dc.List<dc.dynamic> fl$47=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$47[1]=56);
(fl$47[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$47[3]=51);
(fl$47[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$47[5]=56);
(fl$47[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$47[7]=37);
final dc.dynamic $42=lcoc_core.with_meta($41, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$47, ), -1, ), );
(fl$45[2]=$42);
final lcoc_core.PersistentList $43=lcoc_core.$_list_lit(fl$45, );
final dc.List<dc.dynamic> fl$48=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$48[1]=56);
(fl$48[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$48[3]=52);
(fl$48[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$48[5]=56);
(fl$48[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$48[7]=11);
final dc.dynamic $44=lcoc_core.with_meta($43, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$48, ), -1, ), );
final dc.dynamic $45=lcoc_test.cljd_test_matcher($44, );
(t_test.expect(r$9105_$AUTO_$8, $45, ));
late final lcoc_core.PersistentHashMap? $try_$9;
try {
final dc.dynamic values$9083_$AUTO_$9=(lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(r$6, )), ));
final dc.dynamic result$9084_$AUTO_$9=(lcoc_core.apply.$_invoke$2(lcoc_core.nil$QMARK_, values$9083_$AUTO_$9, ));
if(((false != result$9084_$AUTO_$9) && (null != result$9084_$AUTO_$9))){
$try_$9=null;
}else{
final dc.List<dc.dynamic> fl$49=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$49[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$49[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$49[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "nil?", )), values$9083_$AUTO_$9, ), )));
(fl$49[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$49[5]=null);
$try_$9=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$49, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$9, st$9107_$AUTO_$9) {
final dc.List<dc.dynamic> fl$50=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$50[1]=t$9106_$AUTO_$9);
(fl$50[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$50[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$50[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$50[5]=st$9107_$AUTO_$9);
$try_$9=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$50, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$9=lcoc_test.result($try_$9, );
final dc.List<dc.dynamic> fl$51=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "nil?", )), ));
final dc.List<dc.dynamic> fl$52=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$52[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
final lcoc_core.PersistentList $46=lcoc_core.$_list_lit(fl$52, );
final dc.List<dc.dynamic> fl$53=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$53[1]=57);
(fl$53[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$53[3]=32);
(fl$53[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$53[5]=57);
(fl$53[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$53[7]=17);
final dc.dynamic $47=lcoc_core.with_meta($46, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$53, ), -1, ), );
(fl$51[1]=$47);
final lcoc_core.PersistentList $48=lcoc_core.$_list_lit(fl$51, );
final dc.List<dc.dynamic> fl$54=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$54[1]=57);
(fl$54[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$54[3]=33);
(fl$54[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$54[5]=57);
(fl$54[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$54[7]=11);
final dc.dynamic $49=lcoc_core.with_meta($48, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$54, ), -1, ), );
final dc.dynamic $50=lcoc_test.cljd_test_matcher($49, );
return t_test.expect(r$9105_$AUTO_$9, $50, );
}
late final dc.dynamic Function() wrapper_f$6;
if((maybe_f$6 is dc.dynamic Function())){
wrapper_f$6=maybe_f$6;
}else{
wrapper_f$6=(){
if((maybe_f$6 is dc.Function)){
return (maybe_f$6 as dc.Function)();
}
if((maybe_f$6 is lcoc_core.IFn$iface)){
return ((maybe_f$6 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$6, ).$_invoke$0(maybe_f$6, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$6=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$6=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$6;
if((k$7857_$AUTO_$6 is lcoc_core.IHash$iface)){
cast$6=(((k$7857_$AUTO_$6 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$6=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$6, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$6, )) as dc.int);
}
final dc.dynamic coll7013$6=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$6;
if((coll7013$6 is lcoc_core.ICollection$iface)){
$if_$6=((coll7013$6 as lcoc_core.ICollection$iface).$_conj$1("video tag has precedence over youtube", ));
}else{
$if_$6=((lcoc_core.ICollection.extensions(coll7013$6, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$6, "video tag has precedence over youtube", ));
}
final lcoc_core.BitmapNode $51=(node$7856_$AUTO_$6.inode_assoc_transient(0, cast$6, k$7857_$AUTO_$6, lcoc_core.Volatile($if_$6, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$6;
if((lcoc_core.PersistentHashMap(null, $51, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$6=(lcoc_core.PersistentHashMap(null, $51, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$6=((lcoc_core.PersistentHashMap(null, $51, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$6, zoneValues: casted$6, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$7(){
final dc.dynamic r$7=lcold_api.extract_video_and_youtube_id("<p>apenas texto</p>", );
late final lcoc_core.PersistentHashMap? $try_$10;
try {
final dc.dynamic values$9083_$AUTO_$10=(lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(r$7, )), ));
final dc.dynamic result$9084_$AUTO_$10=(lcoc_core.apply.$_invoke$2(lcoc_core.nil$QMARK_, values$9083_$AUTO_$10, ));
if(((false != result$9084_$AUTO_$10) && (null != result$9084_$AUTO_$10))){
$try_$10=null;
}else{
final dc.List<dc.dynamic> fl$55=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$55[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$55[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$55[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "nil?", )), values$9083_$AUTO_$10, ), )));
(fl$55[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$55[5]=null);
$try_$10=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$55, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$10, st$9107_$AUTO_$10) {
final dc.List<dc.dynamic> fl$56=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$56[1]=t$9106_$AUTO_$10);
(fl$56[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$56[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$56[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$56[5]=st$9107_$AUTO_$10);
$try_$10=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$56, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$10=lcoc_test.result($try_$10, );
final dc.List<dc.dynamic> fl$57=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "nil?", )), ));
final dc.List<dc.dynamic> fl$58=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "video-url", 3045839472, ), ));
(fl$58[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
final lcoc_core.PersistentList $52=lcoc_core.$_list_lit(fl$58, );
final dc.List<dc.dynamic> fl$59=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$59[1]=61);
(fl$59[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$59[3]=31);
(fl$59[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$59[5]=61);
(fl$59[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$59[7]=17);
final dc.dynamic $53=lcoc_core.with_meta($52, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$59, ), -1, ), );
(fl$57[1]=$53);
final lcoc_core.PersistentList $54=lcoc_core.$_list_lit(fl$57, );
final dc.List<dc.dynamic> fl$60=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$60[1]=61);
(fl$60[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$60[3]=32);
(fl$60[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$60[5]=61);
(fl$60[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$60[7]=11);
final dc.dynamic $55=lcoc_core.with_meta($54, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$60, ), -1, ), );
final dc.dynamic $56=lcoc_test.cljd_test_matcher($55, );
(t_test.expect(r$9105_$AUTO_$10, $56, ));
late final lcoc_core.PersistentHashMap? $try_$11;
try {
final dc.dynamic values$9083_$AUTO_$11=(lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(r$7, )), ));
final dc.dynamic result$9084_$AUTO_$11=(lcoc_core.apply.$_invoke$2(lcoc_core.nil$QMARK_, values$9083_$AUTO_$11, ));
if(((false != result$9084_$AUTO_$11) && (null != result$9084_$AUTO_$11))){
$try_$11=null;
}else{
final dc.List<dc.dynamic> fl$61=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$61[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$61[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$61[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "nil?", )), values$9083_$AUTO_$11, ), )));
(fl$61[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$61[5]=null);
$try_$11=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$61, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$11, st$9107_$AUTO_$11) {
final dc.List<dc.dynamic> fl$62=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$62[1]=t$9106_$AUTO_$11);
(fl$62[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$62[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$62[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$62[5]=st$9107_$AUTO_$11);
$try_$11=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$62, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$11=lcoc_test.result($try_$11, );
final dc.List<dc.dynamic> fl$63=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "nil?", )), ));
final dc.List<dc.dynamic> fl$64=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$64[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
final lcoc_core.PersistentList $57=lcoc_core.$_list_lit(fl$64, );
final dc.List<dc.dynamic> fl$65=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$65[1]=62);
(fl$65[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$65[3]=32);
(fl$65[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$65[5]=62);
(fl$65[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$65[7]=17);
final dc.dynamic $58=lcoc_core.with_meta($57, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$65, ), -1, ), );
(fl$63[1]=$58);
final lcoc_core.PersistentList $59=lcoc_core.$_list_lit(fl$63, );
final dc.List<dc.dynamic> fl$66=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$66[1]=62);
(fl$66[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$66[3]=33);
(fl$66[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$66[5]=62);
(fl$66[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$66[7]=11);
final dc.dynamic $60=lcoc_core.with_meta($59, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$66, ), -1, ), );
final dc.dynamic $61=lcoc_test.cljd_test_matcher($60, );
return t_test.expect(r$9105_$AUTO_$11, $61, );
}
late final dc.dynamic Function() wrapper_f$7;
if((maybe_f$7 is dc.dynamic Function())){
wrapper_f$7=maybe_f$7;
}else{
wrapper_f$7=(){
if((maybe_f$7 is dc.Function)){
return (maybe_f$7 as dc.Function)();
}
if((maybe_f$7 is lcoc_core.IFn$iface)){
return ((maybe_f$7 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$7, ).$_invoke$0(maybe_f$7, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$7=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$7=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$7;
if((k$7857_$AUTO_$7 is lcoc_core.IHash$iface)){
cast$7=(((k$7857_$AUTO_$7 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$7=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$7, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$7, )) as dc.int);
}
final dc.dynamic coll7013$7=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$7;
if((coll7013$7 is lcoc_core.ICollection$iface)){
$if_$7=((coll7013$7 as lcoc_core.ICollection$iface).$_conj$1("nothing found", ));
}else{
$if_$7=((lcoc_core.ICollection.extensions(coll7013$7, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$7, "nothing found", ));
}
final lcoc_core.BitmapNode $62=(node$7856_$AUTO_$7.inode_assoc_transient(0, cast$7, k$7857_$AUTO_$7, lcoc_core.Volatile($if_$7, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$7;
if((lcoc_core.PersistentHashMap(null, $62, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$7=(lcoc_core.PersistentHashMap(null, $62, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$7=((lcoc_core.PersistentHashMap(null, $62, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$7, zoneValues: casted$7, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
late final dc.dynamic Function() wrapper_f$8;
if((maybe_f$8 is dc.dynamic Function())){
wrapper_f$8=maybe_f$8;
}else{
wrapper_f$8=(){
if((maybe_f$8 is dc.Function)){
return (maybe_f$8 as dc.Function)();
}
if((maybe_f$8 is lcoc_core.IFn$iface)){
return ((maybe_f$8 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$8, ).$_invoke$0(maybe_f$8, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$8=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$8=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$8;
if((k$7857_$AUTO_$8 is lcoc_core.IHash$iface)){
cast$8=(((k$7857_$AUTO_$8 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$8=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$8, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$8, )) as dc.int);
}
final dc.dynamic coll7013$8=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$8;
if((coll7013$8 is lcoc_core.ICollection$iface)){
$if_$8=((coll7013$8 as lcoc_core.ICollection$iface).$_conj$1("libras-dictionary.api-test/extract-video-and-youtube-id-test", ));
}else{
$if_$8=((lcoc_core.ICollection.extensions(coll7013$8, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$8, "libras-dictionary.api-test/extract-video-and-youtube-id-test", ));
}
final lcoc_core.BitmapNode $63=(node$7856_$AUTO_$8.inode_assoc_transient(0, cast$8, k$7857_$AUTO_$8, lcoc_core.Volatile($if_$8, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$8;
if((lcoc_core.PersistentHashMap(null, $63, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$8=(lcoc_core.PersistentHashMap(null, $63, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$8=((lcoc_core.PersistentHashMap(null, $63, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$8, zoneValues: casted$8, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
if(((false != lcoc_test.$STAR_in_test$STAR_) && (null != lcoc_test.$STAR_in_test$STAR_))){
return thunk$9142_$AUTO_$1();
}
return t_test.group(null, (){
return t_test.test("libras-dictionary.api-test/extract-video-and-youtube-id-test", (){
dc.dynamic maybe_f$9(){
return thunk$9142_$AUTO_$1();
}
late final dc.dynamic Function() wrapper_f$9;
if((maybe_f$9 is dc.dynamic Function())){
wrapper_f$9=maybe_f$9;
}else{
wrapper_f$9=(){
if((maybe_f$9 is dc.Function)){
return (maybe_f$9 as dc.Function)();
}
if((maybe_f$9 is lcoc_core.IFn$iface)){
return ((maybe_f$9 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$9, ).$_invoke$0(maybe_f$9, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$9=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$9=(lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", ));
late final dc.int cast$9;
if((k$7857_$AUTO_$9 is lcoc_core.IHash$iface)){
cast$9=(((k$7857_$AUTO_$9 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$9=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$9, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$9, )) as dc.int);
}
final lcoc_core.BitmapNode $64=(node$7856_$AUTO_$9.inode_assoc_transient(0, cast$9, k$7857_$AUTO_$9, lcoc_core.Volatile(lcoc_core.$_EMPTY_VECTOR, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$9;
if((lcoc_core.PersistentHashMap(null, $64, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$9=(lcoc_core.PersistentHashMap(null, $64, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$9=((lcoc_core.PersistentHashMap(null, $64, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$9, zoneValues: casted$9, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}, );
}, tags: <dc.String>[], );
}

// END extract-video-and-youtube-id-test

// BEGIN ines-words-test
dc.dynamic ines_words_test(){
dc.dynamic thunk$9142_$AUTO_$1(){
final dc.dynamic vec$9288_$1=lcoc_test.$STAR_in_test$STAR_;
dc.dynamic maybe_f$1(){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, "palavra", ));
(fl$2[1]="CASA");
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(3, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 524288, 524288, fl$2, ), -1, ), ));
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(2, "palavra", ));
(fl$3[1]="CACHORRO");
(fl$1[1]=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 524288, 524288, fl$3, ), -1, ));
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(2, "outro", ));
(fl$4[1]=1);
(fl$1[2]=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 16777216, 16777216, fl$4, ), -1, ));
(lcoc_core.reset$BANG_(lcold_api.ines_cache, lcoc_core.PersistentVector(null, 3, 5, arg$1, fl$1, -1, ), ));
late final lcoc_core.PersistentHashMap? $try_$1;
try {
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(2, "CASA", ));
(fl$5[1]="CACHORRO");
final dc.dynamic values$9083_$AUTO_$1=(lcoc_core.list.$_invoke$2(lcoc_core.PersistentVector(null, 2, 5, arg$2, fl$5, -1, ), lcold_api.ines_words(), ));
final dc.dynamic result$9084_$AUTO_$1=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$1, ));
if(((false != result$9084_$AUTO_$1) && (null != result$9084_$AUTO_$1))){
$try_$1=null;
}else{
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$6[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$6[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$6[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$1, ), )));
(fl$6[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$6[5]=null);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$6, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$1, st$9107_$AUTO_$1) {
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$7[1]=t$9106_$AUTO_$1);
(fl$7[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$7[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$7[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$7[5]=st$9107_$AUTO_$1);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$7, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$1=lcoc_test.result($try_$1, );
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(2, "CASA", ));
(fl$9[1]="CACHORRO");
(fl$8[1]=lcoc_core.PersistentVector(null, 2, 5, arg$3, fl$9, -1, ));
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(1, (lcoc_core.symbol.$_invoke$2("api", "ines-words", )), ));
final lcoc_core.PersistentList $1=lcoc_core.$_list_lit(fl$10, );
final dc.List<dc.dynamic> fl$11=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$11[1]=81);
(fl$11[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$11[3]=46);
(fl$11[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$11[5]=81);
(fl$11[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$11[7]=30);
final dc.dynamic $2=lcoc_core.with_meta($1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$11, ), -1, ), );
(fl$8[2]=$2);
final lcoc_core.PersistentList $3=lcoc_core.$_list_lit(fl$8, );
final dc.List<dc.dynamic> fl$12=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$12[1]=81);
(fl$12[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$12[3]=47);
(fl$12[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$12[5]=81);
(fl$12[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$12[7]=7);
final dc.dynamic $4=lcoc_core.with_meta($3, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$12, ), -1, ), );
final dc.dynamic $5=lcoc_test.cljd_test_matcher($4, );
(t_test.expect(r$9105_$AUTO_$1, $5, ));
(lcoc_core.reset$BANG_(lcold_api.ines_cache, null, ));
late final lcoc_core.PersistentHashMap? $try_$2;
try {
final dc.dynamic values$9083_$AUTO_$2=(lcoc_core.list.$_invoke$2(lcoc_core.$_EMPTY_VECTOR, lcold_api.ines_words(), ));
final dc.dynamic result$9084_$AUTO_$2=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$2, ));
if(((false != result$9084_$AUTO_$2) && (null != result$9084_$AUTO_$2))){
$try_$2=null;
}else{
final dc.List<dc.dynamic> fl$13=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$13[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$13[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$13[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$2, ), )));
(fl$13[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$13[5]=null);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$13, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$2, st$9107_$AUTO_$2) {
final dc.List<dc.dynamic> fl$14=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$14[1]=t$9106_$AUTO_$2);
(fl$14[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$14[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$14[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$14[5]=st$9107_$AUTO_$2);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$14, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$2=lcoc_test.result($try_$2, );
final dc.List<dc.dynamic> fl$15=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
final lcoc_core.PersistentVector o7173$1=lcoc_core.$_EMPTY_VECTOR;
late final dc.dynamic $if_$1;
if((o7173$1 is lcoc_core.IWithMeta$iface)){
$if_$1=((o7173$1 as lcoc_core.IWithMeta$iface).$_with_meta$1(null, ));
}else{
$if_$1=((lcoc_core.IWithMeta.extensions(o7173$1, ) as lcoc_core.IWithMeta$ext).$_with_meta$1(o7173$1, null, ));
}
(fl$15[1]=$if_$1);
final dc.List<dc.dynamic> fl$16=(dc.List<dc.dynamic>.filled(1, (lcoc_core.symbol.$_invoke$2("api", "ines-words", )), ));
final lcoc_core.PersistentList $6=lcoc_core.$_list_lit(fl$16, );
final dc.List<dc.dynamic> fl$17=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$17[1]=83);
(fl$17[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$17[3]=29);
(fl$17[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$17[5]=83);
(fl$17[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$17[7]=13);
final dc.dynamic $7=lcoc_core.with_meta($6, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$17, ), -1, ), );
(fl$15[2]=$7);
final lcoc_core.PersistentList $8=lcoc_core.$_list_lit(fl$15, );
final dc.List<dc.dynamic> fl$18=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$18[1]=83);
(fl$18[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$18[3]=30);
(fl$18[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$18[5]=83);
(fl$18[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$18[7]=7);
final dc.dynamic $9=lcoc_core.with_meta($8, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$18, ), -1, ), );
final dc.dynamic $10=lcoc_test.cljd_test_matcher($9, );
return t_test.expect(r$9105_$AUTO_$2, $10, );
}
late final dc.dynamic Function() wrapper_f$1;
if((maybe_f$1 is dc.dynamic Function())){
wrapper_f$1=maybe_f$1;
}else{
wrapper_f$1=(){
if((maybe_f$1 is dc.Function)){
return (maybe_f$1 as dc.Function)();
}
if((maybe_f$1 is lcoc_core.IFn$iface)){
return ((maybe_f$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$1, ).$_invoke$0(maybe_f$1, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$1=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$1;
if((k$7857_$AUTO_$1 is lcoc_core.IHash$iface)){
cast$1=(((k$7857_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$1, )) as dc.int);
}
final dc.dynamic coll7013$1=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$2;
if((coll7013$1 is lcoc_core.ICollection$iface)){
$if_$2=((coll7013$1 as lcoc_core.ICollection$iface).$_conj$1("libras-dictionary.api-test/ines-words-test", ));
}else{
$if_$2=((lcoc_core.ICollection.extensions(coll7013$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$1, "libras-dictionary.api-test/ines-words-test", ));
}
final lcoc_core.BitmapNode $11=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$1, k$7857_$AUTO_$1, lcoc_core.Volatile($if_$2, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $11, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $11, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $11, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
if(((false != lcoc_test.$STAR_in_test$STAR_) && (null != lcoc_test.$STAR_in_test$STAR_))){
return thunk$9142_$AUTO_$1();
}
return t_test.group(null, (){
return t_test.test("libras-dictionary.api-test/ines-words-test", (){
dc.dynamic maybe_f$2(){
return thunk$9142_$AUTO_$1();
}
late final dc.dynamic Function() wrapper_f$2;
if((maybe_f$2 is dc.dynamic Function())){
wrapper_f$2=maybe_f$2;
}else{
wrapper_f$2=(){
if((maybe_f$2 is dc.Function)){
return (maybe_f$2 as dc.Function)();
}
if((maybe_f$2 is lcoc_core.IFn$iface)){
return ((maybe_f$2 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$2, ).$_invoke$0(maybe_f$2, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$2=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$2=(lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", ));
late final dc.int cast$2;
if((k$7857_$AUTO_$2 is lcoc_core.IHash$iface)){
cast$2=(((k$7857_$AUTO_$2 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$2=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$2, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$2, )) as dc.int);
}
final lcoc_core.BitmapNode $12=(node$7856_$AUTO_$2.inode_assoc_transient(0, cast$2, k$7857_$AUTO_$2, lcoc_core.Volatile(lcoc_core.$_EMPTY_VECTOR, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$2;
if((lcoc_core.PersistentHashMap(null, $12, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$2=(lcoc_core.PersistentHashMap(null, $12, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$2=((lcoc_core.PersistentHashMap(null, $12, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$2, zoneValues: casted$2, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}, );
}, tags: <dc.String>[], );
}

// END ines-words-test

// BEGIN normalize-test
dc.dynamic normalize_test(){
dc.dynamic thunk$9142_$AUTO_$1(){
final dc.dynamic vec$9250_$1=lcoc_test.$STAR_in_test$STAR_;
dc.dynamic maybe_f$2(){
dc.dynamic maybe_f$1(){
late final lcoc_core.PersistentHashMap? $try_$1;
try {
final dc.dynamic values$9083_$AUTO_$1=(lcoc_core.list.$_invoke$2("acao", lcold_api.normalize("Ação", ), ));
final dc.dynamic result$9084_$AUTO_$1=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$1, ));
if(((false != result$9084_$AUTO_$1) && (null != result$9084_$AUTO_$1))){
$try_$1=null;
}else{
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$1[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$1[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$1[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$1, ), )));
(fl$1[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$1[5]=null);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$1, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$1, st$9107_$AUTO_$1) {
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$2[1]=t$9106_$AUTO_$1);
(fl$2[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$2[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$2[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$2[5]=st$9107_$AUTO_$1);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$2, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$1=lcoc_test.result($try_$1, );
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$3[1]="acao");
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2("api", "normalize", )), ));
(fl$4[1]="Ação");
final lcoc_core.PersistentList $1=lcoc_core.$_list_lit(fl$4, );
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$5[1]=9);
(fl$5[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$5[3]=41);
(fl$5[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$5[5]=9);
(fl$5[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$5[7]=19);
final dc.dynamic $2=lcoc_core.with_meta($1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$5, ), -1, ), );
(fl$3[2]=$2);
final lcoc_core.PersistentList $3=lcoc_core.$_list_lit(fl$3, );
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$6[1]=9);
(fl$6[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$6[3]=42);
(fl$6[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$6[5]=9);
(fl$6[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$6[7]=9);
final dc.dynamic $4=lcoc_core.with_meta($3, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$6, ), -1, ), );
final dc.dynamic $5=lcoc_test.cljd_test_matcher($4, );
(t_test.expect(r$9105_$AUTO_$1, $5, ));
late final lcoc_core.PersistentHashMap? $try_$2;
try {
final dc.dynamic values$9083_$AUTO_$2=(lcoc_core.list.$_invoke$2("video", lcold_api.normalize("VÍDEO", ), ));
final dc.dynamic result$9084_$AUTO_$2=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$2, ));
if(((false != result$9084_$AUTO_$2) && (null != result$9084_$AUTO_$2))){
$try_$2=null;
}else{
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$7[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$7[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$7[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$2, ), )));
(fl$7[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$7[5]=null);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$7, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$2, st$9107_$AUTO_$2) {
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$8[1]=t$9106_$AUTO_$2);
(fl$8[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$8[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$8[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$8[5]=st$9107_$AUTO_$2);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$8, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$2=lcoc_test.result($try_$2, );
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$9[1]="video");
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2("api", "normalize", )), ));
(fl$10[1]="VÍDEO");
final lcoc_core.PersistentList $6=lcoc_core.$_list_lit(fl$10, );
final dc.List<dc.dynamic> fl$11=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$11[1]=10);
(fl$11[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$11[3]=43);
(fl$11[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$11[5]=10);
(fl$11[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$11[7]=20);
final dc.dynamic $7=lcoc_core.with_meta($6, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$11, ), -1, ), );
(fl$9[2]=$7);
final lcoc_core.PersistentList $8=lcoc_core.$_list_lit(fl$9, );
final dc.List<dc.dynamic> fl$12=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$12[1]=10);
(fl$12[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$12[3]=44);
(fl$12[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$12[5]=10);
(fl$12[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$12[7]=9);
final dc.dynamic $9=lcoc_core.with_meta($8, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$12, ), -1, ), );
final dc.dynamic $10=lcoc_test.cljd_test_matcher($9, );
(t_test.expect(r$9105_$AUTO_$2, $10, ));
late final lcoc_core.PersistentHashMap? $try_$3;
try {
final dc.dynamic values$9083_$AUTO_$3=(lcoc_core.list.$_invoke$2("ja", lcold_api.normalize("já", ), ));
final dc.dynamic result$9084_$AUTO_$3=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$3, ));
if(((false != result$9084_$AUTO_$3) && (null != result$9084_$AUTO_$3))){
$try_$3=null;
}else{
final dc.List<dc.dynamic> fl$13=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$13[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$13[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$13[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$3, ), )));
(fl$13[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$13[5]=null);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$13, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$3, st$9107_$AUTO_$3) {
final dc.List<dc.dynamic> fl$14=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$14[1]=t$9106_$AUTO_$3);
(fl$14[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$14[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$14[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$14[5]=st$9107_$AUTO_$3);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$14, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$3=lcoc_test.result($try_$3, );
final dc.List<dc.dynamic> fl$15=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$15[1]="ja");
final dc.List<dc.dynamic> fl$16=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2("api", "normalize", )), ));
(fl$16[1]="já");
final lcoc_core.PersistentList $11=lcoc_core.$_list_lit(fl$16, );
final dc.List<dc.dynamic> fl$17=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$17[1]=11);
(fl$17[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$17[3]=37);
(fl$17[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$17[5]=11);
(fl$17[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$17[7]=17);
final dc.dynamic $12=lcoc_core.with_meta($11, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$17, ), -1, ), );
(fl$15[2]=$12);
final lcoc_core.PersistentList $13=lcoc_core.$_list_lit(fl$15, );
final dc.List<dc.dynamic> fl$18=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$18[1]=11);
(fl$18[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$18[3]=38);
(fl$18[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$18[5]=11);
(fl$18[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$18[7]=9);
final dc.dynamic $14=lcoc_core.with_meta($13, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$18, ), -1, ), );
final dc.dynamic $15=lcoc_test.cljd_test_matcher($14, );
return t_test.expect(r$9105_$AUTO_$3, $15, );
}
late final dc.dynamic Function() wrapper_f$1;
if((maybe_f$1 is dc.dynamic Function())){
wrapper_f$1=maybe_f$1;
}else{
wrapper_f$1=(){
if((maybe_f$1 is dc.Function)){
return (maybe_f$1 as dc.Function)();
}
if((maybe_f$1 is lcoc_core.IFn$iface)){
return ((maybe_f$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$1, ).$_invoke$0(maybe_f$1, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$1=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$1;
if((k$7857_$AUTO_$1 is lcoc_core.IHash$iface)){
cast$1=(((k$7857_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$1, )) as dc.int);
}
final dc.dynamic coll7013$1=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$1;
if((coll7013$1 is lcoc_core.ICollection$iface)){
$if_$1=((coll7013$1 as lcoc_core.ICollection$iface).$_conj$1("lowercases and strips diacritics", ));
}else{
$if_$1=((lcoc_core.ICollection.extensions(coll7013$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$1, "lowercases and strips diacritics", ));
}
final lcoc_core.BitmapNode $16=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$1, k$7857_$AUTO_$1, lcoc_core.Volatile($if_$1, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $16, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $16, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $16, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
late final dc.dynamic Function() wrapper_f$2;
if((maybe_f$2 is dc.dynamic Function())){
wrapper_f$2=maybe_f$2;
}else{
wrapper_f$2=(){
if((maybe_f$2 is dc.Function)){
return (maybe_f$2 as dc.Function)();
}
if((maybe_f$2 is lcoc_core.IFn$iface)){
return ((maybe_f$2 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$2, ).$_invoke$0(maybe_f$2, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$2=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$2=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$2;
if((k$7857_$AUTO_$2 is lcoc_core.IHash$iface)){
cast$2=(((k$7857_$AUTO_$2 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$2=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$2, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$2, )) as dc.int);
}
final dc.dynamic coll7013$2=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$2;
if((coll7013$2 is lcoc_core.ICollection$iface)){
$if_$2=((coll7013$2 as lcoc_core.ICollection$iface).$_conj$1("libras-dictionary.api-test/normalize-test", ));
}else{
$if_$2=((lcoc_core.ICollection.extensions(coll7013$2, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$2, "libras-dictionary.api-test/normalize-test", ));
}
final lcoc_core.BitmapNode $17=(node$7856_$AUTO_$2.inode_assoc_transient(0, cast$2, k$7857_$AUTO_$2, lcoc_core.Volatile($if_$2, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$2;
if((lcoc_core.PersistentHashMap(null, $17, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$2=(lcoc_core.PersistentHashMap(null, $17, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$2=((lcoc_core.PersistentHashMap(null, $17, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$2, zoneValues: casted$2, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
if(((false != lcoc_test.$STAR_in_test$STAR_) && (null != lcoc_test.$STAR_in_test$STAR_))){
return thunk$9142_$AUTO_$1();
}
return t_test.group(null, (){
return t_test.test("libras-dictionary.api-test/normalize-test", (){
dc.dynamic maybe_f$3(){
return thunk$9142_$AUTO_$1();
}
late final dc.dynamic Function() wrapper_f$3;
if((maybe_f$3 is dc.dynamic Function())){
wrapper_f$3=maybe_f$3;
}else{
wrapper_f$3=(){
if((maybe_f$3 is dc.Function)){
return (maybe_f$3 as dc.Function)();
}
if((maybe_f$3 is lcoc_core.IFn$iface)){
return ((maybe_f$3 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$3, ).$_invoke$0(maybe_f$3, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$3=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$3=(lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", ));
late final dc.int cast$3;
if((k$7857_$AUTO_$3 is lcoc_core.IHash$iface)){
cast$3=(((k$7857_$AUTO_$3 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$3=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$3, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$3, )) as dc.int);
}
final lcoc_core.BitmapNode $18=(node$7856_$AUTO_$3.inode_assoc_transient(0, cast$3, k$7857_$AUTO_$3, lcoc_core.Volatile(lcoc_core.$_EMPTY_VECTOR, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$3;
if((lcoc_core.PersistentHashMap(null, $18, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$3=(lcoc_core.PersistentHashMap(null, $18, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$3=((lcoc_core.PersistentHashMap(null, $18, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$3, zoneValues: casted$3, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}, );
}, tags: <dc.String>[], );
}

// END normalize-test

// BEGIN parse-ines-body-test
dc.dynamic parse_ines_body_test(){
dc.dynamic thunk$9142_$AUTO_$1(){
final dc.dynamic vec$9281_$1=lcoc_test.$STAR_in_test$STAR_;
dc.dynamic maybe_f$3(){
dc.dynamic maybe_f$1(){
final dc.dynamic data$1=lcold_api.parse_ines_body("var palavras = [{\"palavra\": \"CASA\", \"video\": \"casa.mp4\"}];", );
late final lcoc_core.PersistentHashMap? $try_$1;
try {
late final dc.int cast$1;
if((data$1 is lcoc_core.ICounted$iface)){
cast$1=(((data$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(data$1, ) as lcoc_core.ICounted$ext).$_count$0(data$1, )) as dc.int);
}
final dc.dynamic values$9083_$AUTO_$1=(lcoc_core.list.$_invoke$2(1, cast$1, ));
final dc.dynamic result$9084_$AUTO_$1=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$1, ));
if(((false != result$9084_$AUTO_$1) && (null != result$9084_$AUTO_$1))){
$try_$1=null;
}else{
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$1[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$1[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$1[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$1, ), )));
(fl$1[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$1[5]=null);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$1, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$1, st$9107_$AUTO_$1) {
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$2[1]=t$9106_$AUTO_$1);
(fl$2[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$2[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$2[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$2[5]=st$9107_$AUTO_$1);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$2, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$1=lcoc_test.result($try_$1, );
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$3[1]=1);
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "count", )), ));
(fl$4[1]=(lcoc_core.symbol.$_invoke$2(null, "data", )));
final lcoc_core.PersistentList $1=lcoc_core.$_list_lit(fl$4, );
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$5[1]=74);
(fl$5[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$5[3]=28);
(fl$5[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$5[5]=74);
(fl$5[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$5[7]=16);
final dc.dynamic $2=lcoc_core.with_meta($1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$5, ), -1, ), );
(fl$3[2]=$2);
final lcoc_core.PersistentList $3=lcoc_core.$_list_lit(fl$3, );
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$6[1]=74);
(fl$6[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$6[3]=29);
(fl$6[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$6[5]=74);
(fl$6[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$6[7]=11);
final dc.dynamic $4=lcoc_core.with_meta($3, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$6, ), -1, ), );
final dc.dynamic $5=lcoc_test.cljd_test_matcher($4, );
(t_test.expect(r$9105_$AUTO_$1, $5, ));
late final lcoc_core.PersistentHashMap? $try_$2;
try {
final dc.dynamic o7144$1=lcoc_core.first(data$1, );
late final dc.dynamic $if_$1;
if((o7144$1 is lcoc_core.ILookup$iface)){
$if_$1=((o7144$1 as lcoc_core.ILookup$iface).$_lookup$1("palavra", ));
}else{
$if_$1=((lcoc_core.ILookup.extensions(o7144$1, ) as lcoc_core.ILookup$ext).$_lookup$1(o7144$1, "palavra", ));
}
final dc.dynamic values$9083_$AUTO_$2=(lcoc_core.list.$_invoke$2("CASA", $if_$1, ));
final dc.dynamic result$9084_$AUTO_$2=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$2, ));
if(((false != result$9084_$AUTO_$2) && (null != result$9084_$AUTO_$2))){
$try_$2=null;
}else{
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$7[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$7[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$7[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$2, ), )));
(fl$7[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$7[5]=null);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$7, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$2, st$9107_$AUTO_$2) {
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$8[1]=t$9106_$AUTO_$2);
(fl$8[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$8[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$8[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$8[5]=st$9107_$AUTO_$2);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$8, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$2=lcoc_test.result($try_$2, );
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$9[1]="CASA");
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "get", )), ));
final dc.List<dc.dynamic> fl$11=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "first", )), ));
(fl$11[1]=(lcoc_core.symbol.$_invoke$2(null, "data", )));
final lcoc_core.PersistentList $6=lcoc_core.$_list_lit(fl$11, );
final dc.List<dc.dynamic> fl$12=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$12[1]=75);
(fl$12[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$12[3]=38);
(fl$12[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$12[5]=75);
(fl$12[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$12[7]=26);
final dc.dynamic $7=lcoc_core.with_meta($6, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$12, ), -1, ), );
(fl$10[1]=$7);
(fl$10[2]="palavra");
final lcoc_core.PersistentList $8=lcoc_core.$_list_lit(fl$10, );
final dc.List<dc.dynamic> fl$13=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$13[1]=75);
(fl$13[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$13[3]=49);
(fl$13[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$13[5]=75);
(fl$13[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$13[7]=21);
final dc.dynamic $9=lcoc_core.with_meta($8, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$13, ), -1, ), );
(fl$9[2]=$9);
final lcoc_core.PersistentList $10=lcoc_core.$_list_lit(fl$9, );
final dc.List<dc.dynamic> fl$14=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$14[1]=75);
(fl$14[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$14[3]=50);
(fl$14[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$14[5]=75);
(fl$14[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$14[7]=11);
final dc.dynamic $11=lcoc_core.with_meta($10, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$14, ), -1, ), );
final dc.dynamic $12=lcoc_test.cljd_test_matcher($11, );
return t_test.expect(r$9105_$AUTO_$2, $12, );
}
late final dc.dynamic Function() wrapper_f$1;
if((maybe_f$1 is dc.dynamic Function())){
wrapper_f$1=maybe_f$1;
}else{
wrapper_f$1=(){
if((maybe_f$1 is dc.Function)){
return (maybe_f$1 as dc.Function)();
}
if((maybe_f$1 is lcoc_core.IFn$iface)){
return ((maybe_f$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$1, ).$_invoke$0(maybe_f$1, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$1=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$2;
if((k$7857_$AUTO_$1 is lcoc_core.IHash$iface)){
cast$2=(((k$7857_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$2=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$1, )) as dc.int);
}
final dc.dynamic coll7013$1=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$2;
if((coll7013$1 is lcoc_core.ICollection$iface)){
$if_$2=((coll7013$1 as lcoc_core.ICollection$iface).$_conj$1("extracts the JSON array from the JS wrapper", ));
}else{
$if_$2=((lcoc_core.ICollection.extensions(coll7013$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$1, "extracts the JSON array from the JS wrapper", ));
}
final lcoc_core.BitmapNode $13=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$2, k$7857_$AUTO_$1, lcoc_core.Volatile($if_$2, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $13, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $13, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $13, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$2(){
late final lcoc_core.PersistentHashMap? $try_$3;
try {
final dc.dynamic values$9083_$AUTO_$3=(lcoc_core.list.$_invoke$1(lcold_api.parse_ines_body("not js at all", ), ));
final dc.dynamic result$9084_$AUTO_$3=(lcoc_core.apply.$_invoke$2(lcoc_core.nil$QMARK_, values$9083_$AUTO_$3, ));
if(((false != result$9084_$AUTO_$3) && (null != result$9084_$AUTO_$3))){
$try_$3=null;
}else{
final dc.List<dc.dynamic> fl$15=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$15[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$15[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$15[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "nil?", )), values$9083_$AUTO_$3, ), )));
(fl$15[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$15[5]=null);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$15, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$3, st$9107_$AUTO_$3) {
final dc.List<dc.dynamic> fl$16=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$16[1]=t$9106_$AUTO_$3);
(fl$16[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$16[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$16[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$16[5]=st$9107_$AUTO_$3);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$16, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$3=lcoc_test.result($try_$3, );
final dc.List<dc.dynamic> fl$17=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "nil?", )), ));
final dc.List<dc.dynamic> fl$18=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2("api", "parse-ines-body", )), ));
(fl$18[1]="not js at all");
final lcoc_core.PersistentList $14=lcoc_core.$_list_lit(fl$18, );
final dc.List<dc.dynamic> fl$19=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$19[1]=77);
(fl$19[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$19[3]=52);
(fl$19[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$19[5]=77);
(fl$19[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$19[7]=15);
final dc.dynamic $15=lcoc_core.with_meta($14, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$19, ), -1, ), );
(fl$17[1]=$15);
final lcoc_core.PersistentList $16=lcoc_core.$_list_lit(fl$17, );
final dc.List<dc.dynamic> fl$20=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$20[1]=77);
(fl$20[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$20[3]=53);
(fl$20[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$20[5]=77);
(fl$20[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$20[7]=9);
final dc.dynamic $17=lcoc_core.with_meta($16, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$20, ), -1, ), );
final dc.dynamic $18=lcoc_test.cljd_test_matcher($17, );
return t_test.expect(r$9105_$AUTO_$3, $18, );
}
late final dc.dynamic Function() wrapper_f$2;
if((maybe_f$2 is dc.dynamic Function())){
wrapper_f$2=maybe_f$2;
}else{
wrapper_f$2=(){
if((maybe_f$2 is dc.Function)){
return (maybe_f$2 as dc.Function)();
}
if((maybe_f$2 is lcoc_core.IFn$iface)){
return ((maybe_f$2 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$2, ).$_invoke$0(maybe_f$2, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$2=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$2=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$3;
if((k$7857_$AUTO_$2 is lcoc_core.IHash$iface)){
cast$3=(((k$7857_$AUTO_$2 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$3=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$2, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$2, )) as dc.int);
}
final dc.dynamic coll7013$2=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$3;
if((coll7013$2 is lcoc_core.ICollection$iface)){
$if_$3=((coll7013$2 as lcoc_core.ICollection$iface).$_conj$1("returns nil for garbage", ));
}else{
$if_$3=((lcoc_core.ICollection.extensions(coll7013$2, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$2, "returns nil for garbage", ));
}
final lcoc_core.BitmapNode $19=(node$7856_$AUTO_$2.inode_assoc_transient(0, cast$3, k$7857_$AUTO_$2, lcoc_core.Volatile($if_$3, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$2;
if((lcoc_core.PersistentHashMap(null, $19, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$2=(lcoc_core.PersistentHashMap(null, $19, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$2=((lcoc_core.PersistentHashMap(null, $19, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$2, zoneValues: casted$2, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
late final dc.dynamic Function() wrapper_f$3;
if((maybe_f$3 is dc.dynamic Function())){
wrapper_f$3=maybe_f$3;
}else{
wrapper_f$3=(){
if((maybe_f$3 is dc.Function)){
return (maybe_f$3 as dc.Function)();
}
if((maybe_f$3 is lcoc_core.IFn$iface)){
return ((maybe_f$3 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$3, ).$_invoke$0(maybe_f$3, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$3=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$3=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$4;
if((k$7857_$AUTO_$3 is lcoc_core.IHash$iface)){
cast$4=(((k$7857_$AUTO_$3 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$4=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$3, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$3, )) as dc.int);
}
final dc.dynamic coll7013$3=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$4;
if((coll7013$3 is lcoc_core.ICollection$iface)){
$if_$4=((coll7013$3 as lcoc_core.ICollection$iface).$_conj$1("libras-dictionary.api-test/parse-ines-body-test", ));
}else{
$if_$4=((lcoc_core.ICollection.extensions(coll7013$3, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$3, "libras-dictionary.api-test/parse-ines-body-test", ));
}
final lcoc_core.BitmapNode $20=(node$7856_$AUTO_$3.inode_assoc_transient(0, cast$4, k$7857_$AUTO_$3, lcoc_core.Volatile($if_$4, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$3;
if((lcoc_core.PersistentHashMap(null, $20, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$3=(lcoc_core.PersistentHashMap(null, $20, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$3=((lcoc_core.PersistentHashMap(null, $20, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$3, zoneValues: casted$3, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
if(((false != lcoc_test.$STAR_in_test$STAR_) && (null != lcoc_test.$STAR_in_test$STAR_))){
return thunk$9142_$AUTO_$1();
}
return t_test.group(null, (){
return t_test.test("libras-dictionary.api-test/parse-ines-body-test", (){
dc.dynamic maybe_f$4(){
return thunk$9142_$AUTO_$1();
}
late final dc.dynamic Function() wrapper_f$4;
if((maybe_f$4 is dc.dynamic Function())){
wrapper_f$4=maybe_f$4;
}else{
wrapper_f$4=(){
if((maybe_f$4 is dc.Function)){
return (maybe_f$4 as dc.Function)();
}
if((maybe_f$4 is lcoc_core.IFn$iface)){
return ((maybe_f$4 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$4, ).$_invoke$0(maybe_f$4, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$4=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$4=(lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", ));
late final dc.int cast$5;
if((k$7857_$AUTO_$4 is lcoc_core.IHash$iface)){
cast$5=(((k$7857_$AUTO_$4 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$5=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$4, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$4, )) as dc.int);
}
final lcoc_core.BitmapNode $21=(node$7856_$AUTO_$4.inode_assoc_transient(0, cast$5, k$7857_$AUTO_$4, lcoc_core.Volatile(lcoc_core.$_EMPTY_VECTOR, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$4;
if((lcoc_core.PersistentHashMap(null, $21, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$4=(lcoc_core.PersistentHashMap(null, $21, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$4=((lcoc_core.PersistentHashMap(null, $21, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$4, zoneValues: casted$4, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}, );
}, tags: <dc.String>[], );
}

// END parse-ines-body-test

// BEGIN rank-results-test
dc.dynamic rank_results_test(){
dc.dynamic thunk$9142_$AUTO_$1(){
final dc.dynamic vec$9302_$1=lcoc_test.$STAR_in_test$STAR_;
dc.dynamic maybe_f$2(){
dc.dynamic mk$1(dc.dynamic t$1, ){
return (lcold_models.make_dict_item.$_invoke$4(const lcoc_core.Keyword(null, "title", 3035382670, ), t$1, const lcoc_core.Keyword(null, "source", 10120462, ), "INES", ));
}
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(3, mk$1("Casamento", ), ));
(fl$1[1]=mk$1("Zebra casa", ));
(fl$1[2]=mk$1("Casa", ));
final lcoc_core.PersistentVector results$1=lcoc_core.PersistentVector(null, 3, 5, arg$1, fl$1, -1, );
final dc.dynamic ranked$1=lcold_state.rank_results(results$1, "casa", );
dc.dynamic maybe_f$1(){
late final lcoc_core.PersistentHashMap? $try_$1;
try {
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(3, "Casa", ));
(fl$2[1]="Casamento");
(fl$2[2]="Zebra casa");
final dc.dynamic values$9083_$AUTO_$1=(lcoc_core.list.$_invoke$2(lcoc_core.PersistentVector(null, 3, 5, arg$2, fl$2, -1, ), (lcoc_core.mapv.$_invoke$2(const lcoc_core.Keyword(null, "title", 3035382670, ), ranked$1, )), ));
final dc.dynamic result$9084_$AUTO_$1=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$1, ));
if(((false != result$9084_$AUTO_$1) && (null != result$9084_$AUTO_$1))){
$try_$1=null;
}else{
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$3[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$3[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$3[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$1, ), )));
(fl$3[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$3[5]=null);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$3, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$1, st$9107_$AUTO_$1) {
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$4[1]=t$9106_$AUTO_$1);
(fl$4[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$4[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$4[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$4[5]=st$9107_$AUTO_$1);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$4, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$1=lcoc_test.result($try_$1, );
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(3, "Casa", ));
(fl$6[1]="Casamento");
(fl$6[2]="Zebra casa");
(fl$5[1]=lcoc_core.PersistentVector(null, 3, 5, arg$3, fl$6, -1, ));
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "mapv", )), ));
(fl$7[1]=const lcoc_core.Keyword(null, "title", 3035382670, ));
(fl$7[2]=(lcoc_core.symbol.$_invoke$2(null, "ranked", )));
final lcoc_core.PersistentList $1=lcoc_core.$_list_lit(fl$7, );
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$8[1]=102);
(fl$8[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$8[3]=68);
(fl$8[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$8[5]=102);
(fl$8[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$8[7]=48);
final dc.dynamic $2=lcoc_core.with_meta($1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$8, ), -1, ), );
(fl$5[2]=$2);
final lcoc_core.PersistentList $3=lcoc_core.$_list_lit(fl$5, );
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$9[1]=102);
(fl$9[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$9[3]=69);
(fl$9[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$9[5]=102);
(fl$9[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$9[7]=11);
final dc.dynamic $4=lcoc_core.with_meta($3, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$9, ), -1, ), );
final dc.dynamic $5=lcoc_test.cljd_test_matcher($4, );
return t_test.expect(r$9105_$AUTO_$1, $5, );
}
late final dc.dynamic Function() wrapper_f$1;
if((maybe_f$1 is dc.dynamic Function())){
wrapper_f$1=maybe_f$1;
}else{
wrapper_f$1=(){
if((maybe_f$1 is dc.Function)){
return (maybe_f$1 as dc.Function)();
}
if((maybe_f$1 is lcoc_core.IFn$iface)){
return ((maybe_f$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$1, ).$_invoke$0(maybe_f$1, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$1=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$1;
if((k$7857_$AUTO_$1 is lcoc_core.IHash$iface)){
cast$1=(((k$7857_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$1, )) as dc.int);
}
final dc.dynamic coll7013$1=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$1;
if((coll7013$1 is lcoc_core.ICollection$iface)){
$if_$1=((coll7013$1 as lcoc_core.ICollection$iface).$_conj$1("exact title first, then prefix, then rest", ));
}else{
$if_$1=((lcoc_core.ICollection.extensions(coll7013$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$1, "exact title first, then prefix, then rest", ));
}
final lcoc_core.BitmapNode $6=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$1, k$7857_$AUTO_$1, lcoc_core.Volatile($if_$1, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $6, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $6, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $6, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
late final dc.dynamic Function() wrapper_f$2;
if((maybe_f$2 is dc.dynamic Function())){
wrapper_f$2=maybe_f$2;
}else{
wrapper_f$2=(){
if((maybe_f$2 is dc.Function)){
return (maybe_f$2 as dc.Function)();
}
if((maybe_f$2 is lcoc_core.IFn$iface)){
return ((maybe_f$2 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$2, ).$_invoke$0(maybe_f$2, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$2=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$2=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$2;
if((k$7857_$AUTO_$2 is lcoc_core.IHash$iface)){
cast$2=(((k$7857_$AUTO_$2 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$2=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$2, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$2, )) as dc.int);
}
final dc.dynamic coll7013$2=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$2;
if((coll7013$2 is lcoc_core.ICollection$iface)){
$if_$2=((coll7013$2 as lcoc_core.ICollection$iface).$_conj$1("libras-dictionary.api-test/rank-results-test", ));
}else{
$if_$2=((lcoc_core.ICollection.extensions(coll7013$2, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$2, "libras-dictionary.api-test/rank-results-test", ));
}
final lcoc_core.BitmapNode $7=(node$7856_$AUTO_$2.inode_assoc_transient(0, cast$2, k$7857_$AUTO_$2, lcoc_core.Volatile($if_$2, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$2;
if((lcoc_core.PersistentHashMap(null, $7, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$2=(lcoc_core.PersistentHashMap(null, $7, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$2=((lcoc_core.PersistentHashMap(null, $7, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$2, zoneValues: casted$2, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
if(((false != lcoc_test.$STAR_in_test$STAR_) && (null != lcoc_test.$STAR_in_test$STAR_))){
return thunk$9142_$AUTO_$1();
}
return t_test.group(null, (){
return t_test.test("libras-dictionary.api-test/rank-results-test", (){
dc.dynamic maybe_f$3(){
return thunk$9142_$AUTO_$1();
}
late final dc.dynamic Function() wrapper_f$3;
if((maybe_f$3 is dc.dynamic Function())){
wrapper_f$3=maybe_f$3;
}else{
wrapper_f$3=(){
if((maybe_f$3 is dc.Function)){
return (maybe_f$3 as dc.Function)();
}
if((maybe_f$3 is lcoc_core.IFn$iface)){
return ((maybe_f$3 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$3, ).$_invoke$0(maybe_f$3, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$3=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$3=(lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", ));
late final dc.int cast$3;
if((k$7857_$AUTO_$3 is lcoc_core.IHash$iface)){
cast$3=(((k$7857_$AUTO_$3 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$3=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$3, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$3, )) as dc.int);
}
final lcoc_core.BitmapNode $8=(node$7856_$AUTO_$3.inode_assoc_transient(0, cast$3, k$7857_$AUTO_$3, lcoc_core.Volatile(lcoc_core.$_EMPTY_VECTOR, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$3;
if((lcoc_core.PersistentHashMap(null, $8, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$3=(lcoc_core.PersistentHashMap(null, $8, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$3=((lcoc_core.PersistentHashMap(null, $8, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$3, zoneValues: casted$3, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}, );
}, tags: <dc.String>[], );
}

// END rank-results-test

// BEGIN suggestions-for-test
dc.dynamic suggestions_for_test(){
dc.dynamic thunk$9142_$AUTO_$1(){
final dc.dynamic vec$9293_$1=lcoc_test.$STAR_in_test$STAR_;
dc.dynamic maybe_f$5(){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, "palavra", ));
(fl$2[1]="CASA");
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(4, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 524288, 524288, fl$2, ), -1, ), ));
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(2, "palavra", ));
(fl$3[1]="CASACO");
(fl$1[1]=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 524288, 524288, fl$3, ), -1, ));
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(2, "palavra", ));
(fl$4[1]="MACACO");
(fl$1[2]=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 524288, 524288, fl$4, ), -1, ));
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(2, "palavra", ));
(fl$5[1]="BOLA");
(fl$1[3]=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 524288, 524288, fl$5, ), -1, ));
(lcoc_core.reset$BANG_(lcold_api.ines_cache, lcoc_core.PersistentVector(null, 4, 5, arg$1, fl$1, -1, ), ));
dc.dynamic maybe_f$1(){
late final lcoc_core.PersistentHashMap? $try_$1;
try {
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(2, "CASA", ));
(fl$6[1]="CASACO");
final dc.dynamic values$9083_$AUTO_$1=(lcoc_core.list.$_invoke$2(lcoc_core.PersistentVector(null, 2, 5, arg$2, fl$6, -1, ), lcold_state.suggestions_for("cas", 6, ), ));
final dc.dynamic result$9084_$AUTO_$1=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$1, ));
if(((false != result$9084_$AUTO_$1) && (null != result$9084_$AUTO_$1))){
$try_$1=null;
}else{
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$7[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$7[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$7[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$1, ), )));
(fl$7[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$7[5]=null);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$7, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$1, st$9107_$AUTO_$1) {
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$8[1]=t$9106_$AUTO_$1);
(fl$8[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$8[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$8[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$8[5]=st$9107_$AUTO_$1);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$8, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$1=lcoc_test.result($try_$1, );
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(2, "CASA", ));
(fl$10[1]="CASACO");
(fl$9[1]=lcoc_core.PersistentVector(null, 2, 5, arg$3, fl$10, -1, ));
final dc.List<dc.dynamic> fl$11=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2("st", "suggestions-for", )), ));
(fl$11[1]="cas");
(fl$11[2]=6);
final lcoc_core.PersistentList $1=lcoc_core.$_list_lit(fl$11, );
final dc.List<dc.dynamic> fl$12=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$12[1]=88);
(fl$12[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$12[3]=58);
(fl$12[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$12[5]=88);
(fl$12[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$12[7]=30);
final dc.dynamic $2=lcoc_core.with_meta($1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$12, ), -1, ), );
(fl$9[2]=$2);
final lcoc_core.PersistentList $3=lcoc_core.$_list_lit(fl$9, );
final dc.List<dc.dynamic> fl$13=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$13[1]=88);
(fl$13[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$13[3]=59);
(fl$13[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$13[5]=88);
(fl$13[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$13[7]=9);
final dc.dynamic $4=lcoc_core.with_meta($3, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$13, ), -1, ), );
final dc.dynamic $5=lcoc_test.cljd_test_matcher($4, );
return t_test.expect(r$9105_$AUTO_$1, $5, );
}
late final dc.dynamic Function() wrapper_f$1;
if((maybe_f$1 is dc.dynamic Function())){
wrapper_f$1=maybe_f$1;
}else{
wrapper_f$1=(){
if((maybe_f$1 is dc.Function)){
return (maybe_f$1 as dc.Function)();
}
if((maybe_f$1 is lcoc_core.IFn$iface)){
return ((maybe_f$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$1, ).$_invoke$0(maybe_f$1, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$1=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$1;
if((k$7857_$AUTO_$1 is lcoc_core.IHash$iface)){
cast$1=(((k$7857_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$1, )) as dc.int);
}
final dc.dynamic coll7013$1=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$1;
if((coll7013$1 is lcoc_core.ICollection$iface)){
$if_$1=((coll7013$1 as lcoc_core.ICollection$iface).$_conj$1("prefix matches come before substring matches", ));
}else{
$if_$1=((lcoc_core.ICollection.extensions(coll7013$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$1, "prefix matches come before substring matches", ));
}
final lcoc_core.BitmapNode $6=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$1, k$7857_$AUTO_$1, lcoc_core.Volatile($if_$1, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $6, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $6, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $6, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$2(){
late final lcoc_core.PersistentHashMap? $try_$2;
try {
final lcoc_core.VectorNode arg$4=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$14=(dc.List<dc.dynamic>.filled(1, "MACACO", ));
final dc.dynamic values$9083_$AUTO_$2=(lcoc_core.list.$_invoke$2(lcoc_core.PersistentVector(null, 1, 5, arg$4, fl$14, -1, ), lcold_state.suggestions_for("aca", 6, ), ));
final dc.dynamic result$9084_$AUTO_$2=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$2, ));
if(((false != result$9084_$AUTO_$2) && (null != result$9084_$AUTO_$2))){
$try_$2=null;
}else{
final dc.List<dc.dynamic> fl$15=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$15[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$15[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$15[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$2, ), )));
(fl$15[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$15[5]=null);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$15, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$2, st$9107_$AUTO_$2) {
final dc.List<dc.dynamic> fl$16=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$16[1]=t$9106_$AUTO_$2);
(fl$16[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$16[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$16[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$16[5]=st$9107_$AUTO_$2);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$16, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$2=lcoc_test.result($try_$2, );
final dc.List<dc.dynamic> fl$17=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
final lcoc_core.VectorNode arg$5=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$18=(dc.List<dc.dynamic>.filled(1, "MACACO", ));
(fl$17[1]=lcoc_core.PersistentVector(null, 1, 5, arg$5, fl$18, -1, ));
final dc.List<dc.dynamic> fl$19=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2("st", "suggestions-for", )), ));
(fl$19[1]="aca");
(fl$19[2]=6);
final lcoc_core.PersistentList $7=lcoc_core.$_list_lit(fl$19, );
final dc.List<dc.dynamic> fl$20=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$20[1]=90);
(fl$20[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$20[3]=51);
(fl$20[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$20[5]=90);
(fl$20[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$20[7]=23);
final dc.dynamic $8=lcoc_core.with_meta($7, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$20, ), -1, ), );
(fl$17[2]=$8);
final lcoc_core.PersistentList $9=lcoc_core.$_list_lit(fl$17, );
final dc.List<dc.dynamic> fl$21=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$21[1]=90);
(fl$21[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$21[3]=52);
(fl$21[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$21[5]=90);
(fl$21[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$21[7]=9);
final dc.dynamic $10=lcoc_core.with_meta($9, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$21, ), -1, ), );
final dc.dynamic $11=lcoc_test.cljd_test_matcher($10, );
return t_test.expect(r$9105_$AUTO_$2, $11, );
}
late final dc.dynamic Function() wrapper_f$2;
if((maybe_f$2 is dc.dynamic Function())){
wrapper_f$2=maybe_f$2;
}else{
wrapper_f$2=(){
if((maybe_f$2 is dc.Function)){
return (maybe_f$2 as dc.Function)();
}
if((maybe_f$2 is lcoc_core.IFn$iface)){
return ((maybe_f$2 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$2, ).$_invoke$0(maybe_f$2, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$2=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$2=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$2;
if((k$7857_$AUTO_$2 is lcoc_core.IHash$iface)){
cast$2=(((k$7857_$AUTO_$2 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$2=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$2, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$2, )) as dc.int);
}
final dc.dynamic coll7013$2=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$2;
if((coll7013$2 is lcoc_core.ICollection$iface)){
$if_$2=((coll7013$2 as lcoc_core.ICollection$iface).$_conj$1("substring matches included", ));
}else{
$if_$2=((lcoc_core.ICollection.extensions(coll7013$2, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$2, "substring matches included", ));
}
final lcoc_core.BitmapNode $12=(node$7856_$AUTO_$2.inode_assoc_transient(0, cast$2, k$7857_$AUTO_$2, lcoc_core.Volatile($if_$2, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$2;
if((lcoc_core.PersistentHashMap(null, $12, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$2=(lcoc_core.PersistentHashMap(null, $12, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$2=((lcoc_core.PersistentHashMap(null, $12, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$2, zoneValues: casted$2, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$3(){
late final lcoc_core.PersistentHashMap? $try_$3;
try {
final dc.dynamic values$9083_$AUTO_$3=(lcoc_core.list.$_invoke$2(lcoc_core.$_EMPTY_VECTOR, lcold_state.suggestions_for("c", 6, ), ));
final dc.dynamic result$9084_$AUTO_$3=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$3, ));
if(((false != result$9084_$AUTO_$3) && (null != result$9084_$AUTO_$3))){
$try_$3=null;
}else{
final dc.List<dc.dynamic> fl$22=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$22[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$22[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$22[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$3, ), )));
(fl$22[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$22[5]=null);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$22, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$3, st$9107_$AUTO_$3) {
final dc.List<dc.dynamic> fl$23=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$23[1]=t$9106_$AUTO_$3);
(fl$23[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$23[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$23[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$23[5]=st$9107_$AUTO_$3);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$23, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$3=lcoc_test.result($try_$3, );
final dc.List<dc.dynamic> fl$24=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
final lcoc_core.PersistentVector o7173$1=lcoc_core.$_EMPTY_VECTOR;
late final dc.dynamic $if_$3;
if((o7173$1 is lcoc_core.IWithMeta$iface)){
$if_$3=((o7173$1 as lcoc_core.IWithMeta$iface).$_with_meta$1(null, ));
}else{
$if_$3=((lcoc_core.IWithMeta.extensions(o7173$1, ) as lcoc_core.IWithMeta$ext).$_with_meta$1(o7173$1, null, ));
}
(fl$24[1]=$if_$3);
final dc.List<dc.dynamic> fl$25=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2("st", "suggestions-for", )), ));
(fl$25[1]="c");
(fl$25[2]=6);
final lcoc_core.PersistentList $13=lcoc_core.$_list_lit(fl$25, );
final dc.List<dc.dynamic> fl$26=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$26[1]=92);
(fl$26[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$26[3]=41);
(fl$26[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$26[5]=92);
(fl$26[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$26[7]=15);
final dc.dynamic $14=lcoc_core.with_meta($13, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$26, ), -1, ), );
(fl$24[2]=$14);
final lcoc_core.PersistentList $15=lcoc_core.$_list_lit(fl$24, );
final dc.List<dc.dynamic> fl$27=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$27[1]=92);
(fl$27[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$27[3]=42);
(fl$27[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$27[5]=92);
(fl$27[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$27[7]=9);
final dc.dynamic $16=lcoc_core.with_meta($15, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$27, ), -1, ), );
final dc.dynamic $17=lcoc_test.cljd_test_matcher($16, );
return t_test.expect(r$9105_$AUTO_$3, $17, );
}
late final dc.dynamic Function() wrapper_f$3;
if((maybe_f$3 is dc.dynamic Function())){
wrapper_f$3=maybe_f$3;
}else{
wrapper_f$3=(){
if((maybe_f$3 is dc.Function)){
return (maybe_f$3 as dc.Function)();
}
if((maybe_f$3 is lcoc_core.IFn$iface)){
return ((maybe_f$3 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$3, ).$_invoke$0(maybe_f$3, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$3=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$3=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$3;
if((k$7857_$AUTO_$3 is lcoc_core.IHash$iface)){
cast$3=(((k$7857_$AUTO_$3 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$3=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$3, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$3, )) as dc.int);
}
final dc.dynamic coll7013$3=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$4;
if((coll7013$3 is lcoc_core.ICollection$iface)){
$if_$4=((coll7013$3 as lcoc_core.ICollection$iface).$_conj$1("short queries yield nothing", ));
}else{
$if_$4=((lcoc_core.ICollection.extensions(coll7013$3, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$3, "short queries yield nothing", ));
}
final lcoc_core.BitmapNode $18=(node$7856_$AUTO_$3.inode_assoc_transient(0, cast$3, k$7857_$AUTO_$3, lcoc_core.Volatile($if_$4, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$3;
if((lcoc_core.PersistentHashMap(null, $18, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$3=(lcoc_core.PersistentHashMap(null, $18, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$3=((lcoc_core.PersistentHashMap(null, $18, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$3, zoneValues: casted$3, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$4(){
late final lcoc_core.PersistentHashMap? $try_$4;
try {
final dc.dynamic coll7048$1=lcold_state.suggestions_for("cas", 1, );
late final dc.int cast$4;
if((coll7048$1 is lcoc_core.ICounted$iface)){
cast$4=(((coll7048$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$4=(((lcoc_core.ICounted.extensions(coll7048$1, ) as lcoc_core.ICounted$ext).$_count$0(coll7048$1, )) as dc.int);
}
final dc.dynamic values$9083_$AUTO_$4=(lcoc_core.list.$_invoke$2(1, cast$4, ));
final dc.dynamic result$9084_$AUTO_$4=(lcoc_core.apply.$_invoke$2(lcoc_core.$EQ_, values$9083_$AUTO_$4, ));
if(((false != result$9084_$AUTO_$4) && (null != result$9084_$AUTO_$4))){
$try_$4=null;
}else{
final dc.List<dc.dynamic> fl$28=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$28[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$28[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$28[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "=", )), values$9083_$AUTO_$4, ), )));
(fl$28[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$28[5]=null);
$try_$4=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$28, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$4, st$9107_$AUTO_$4) {
final dc.List<dc.dynamic> fl$29=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$29[1]=t$9106_$AUTO_$4);
(fl$29[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$29[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$29[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$29[5]=st$9107_$AUTO_$4);
$try_$4=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$29, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$4=lcoc_test.result($try_$4, );
final dc.List<dc.dynamic> fl$30=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "=", )), ));
(fl$30[1]=1);
final dc.List<dc.dynamic> fl$31=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "count", )), ));
final dc.List<dc.dynamic> fl$32=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2("st", "suggestions-for", )), ));
(fl$32[1]="cas");
(fl$32[2]=1);
final lcoc_core.PersistentList $19=lcoc_core.$_list_lit(fl$32, );
final dc.List<dc.dynamic> fl$33=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$33[1]=94);
(fl$33[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$33[3]=49);
(fl$33[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$33[5]=94);
(fl$33[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$33[7]=21);
final dc.dynamic $20=lcoc_core.with_meta($19, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$33, ), -1, ), );
(fl$31[1]=$20);
final lcoc_core.PersistentList $21=lcoc_core.$_list_lit(fl$31, );
final dc.List<dc.dynamic> fl$34=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$34[1]=94);
(fl$34[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$34[3]=50);
(fl$34[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$34[5]=94);
(fl$34[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$34[7]=14);
final dc.dynamic $22=lcoc_core.with_meta($21, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$34, ), -1, ), );
(fl$30[2]=$22);
final lcoc_core.PersistentList $23=lcoc_core.$_list_lit(fl$30, );
final dc.List<dc.dynamic> fl$35=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$35[1]=94);
(fl$35[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$35[3]=51);
(fl$35[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$35[5]=94);
(fl$35[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$35[7]=9);
final dc.dynamic $24=lcoc_core.with_meta($23, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$35, ), -1, ), );
final dc.dynamic $25=lcoc_test.cljd_test_matcher($24, );
return t_test.expect(r$9105_$AUTO_$4, $25, );
}
late final dc.dynamic Function() wrapper_f$4;
if((maybe_f$4 is dc.dynamic Function())){
wrapper_f$4=maybe_f$4;
}else{
wrapper_f$4=(){
if((maybe_f$4 is dc.Function)){
return (maybe_f$4 as dc.Function)();
}
if((maybe_f$4 is lcoc_core.IFn$iface)){
return ((maybe_f$4 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$4, ).$_invoke$0(maybe_f$4, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$4=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$4=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$5;
if((k$7857_$AUTO_$4 is lcoc_core.IHash$iface)){
cast$5=(((k$7857_$AUTO_$4 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$5=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$4, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$4, )) as dc.int);
}
final dc.dynamic coll7013$4=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$5;
if((coll7013$4 is lcoc_core.ICollection$iface)){
$if_$5=((coll7013$4 as lcoc_core.ICollection$iface).$_conj$1("limit respected", ));
}else{
$if_$5=((lcoc_core.ICollection.extensions(coll7013$4, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$4, "limit respected", ));
}
final lcoc_core.BitmapNode $26=(node$7856_$AUTO_$4.inode_assoc_transient(0, cast$5, k$7857_$AUTO_$4, lcoc_core.Volatile($if_$5, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$4;
if((lcoc_core.PersistentHashMap(null, $26, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$4=(lcoc_core.PersistentHashMap(null, $26, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$4=((lcoc_core.PersistentHashMap(null, $26, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$4, zoneValues: casted$4, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
return lcoc_core.reset$BANG_(lcold_api.ines_cache, null, );
}
late final dc.dynamic Function() wrapper_f$5;
if((maybe_f$5 is dc.dynamic Function())){
wrapper_f$5=maybe_f$5;
}else{
wrapper_f$5=(){
if((maybe_f$5 is dc.Function)){
return (maybe_f$5 as dc.Function)();
}
if((maybe_f$5 is lcoc_core.IFn$iface)){
return ((maybe_f$5 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$5, ).$_invoke$0(maybe_f$5, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$5=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$5=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$6;
if((k$7857_$AUTO_$5 is lcoc_core.IHash$iface)){
cast$6=(((k$7857_$AUTO_$5 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$6=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$5, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$5, )) as dc.int);
}
final dc.dynamic coll7013$5=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$6;
if((coll7013$5 is lcoc_core.ICollection$iface)){
$if_$6=((coll7013$5 as lcoc_core.ICollection$iface).$_conj$1("libras-dictionary.api-test/suggestions-for-test", ));
}else{
$if_$6=((lcoc_core.ICollection.extensions(coll7013$5, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$5, "libras-dictionary.api-test/suggestions-for-test", ));
}
final lcoc_core.BitmapNode $27=(node$7856_$AUTO_$5.inode_assoc_transient(0, cast$6, k$7857_$AUTO_$5, lcoc_core.Volatile($if_$6, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$5;
if((lcoc_core.PersistentHashMap(null, $27, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$5=(lcoc_core.PersistentHashMap(null, $27, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$5=((lcoc_core.PersistentHashMap(null, $27, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$5, zoneValues: casted$5, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
if(((false != lcoc_test.$STAR_in_test$STAR_) && (null != lcoc_test.$STAR_in_test$STAR_))){
return thunk$9142_$AUTO_$1();
}
return t_test.group(null, (){
return t_test.test("libras-dictionary.api-test/suggestions-for-test", (){
dc.dynamic maybe_f$6(){
return thunk$9142_$AUTO_$1();
}
late final dc.dynamic Function() wrapper_f$6;
if((maybe_f$6 is dc.dynamic Function())){
wrapper_f$6=maybe_f$6;
}else{
wrapper_f$6=(){
if((maybe_f$6 is dc.Function)){
return (maybe_f$6 as dc.Function)();
}
if((maybe_f$6 is lcoc_core.IFn$iface)){
return ((maybe_f$6 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$6, ).$_invoke$0(maybe_f$6, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$6=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$6=(lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", ));
late final dc.int cast$7;
if((k$7857_$AUTO_$6 is lcoc_core.IHash$iface)){
cast$7=(((k$7857_$AUTO_$6 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$7=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$6, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$6, )) as dc.int);
}
final lcoc_core.BitmapNode $28=(node$7856_$AUTO_$6.inode_assoc_transient(0, cast$7, k$7857_$AUTO_$6, lcoc_core.Volatile(lcoc_core.$_EMPTY_VECTOR, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$6;
if((lcoc_core.PersistentHashMap(null, $28, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$6=(lcoc_core.PersistentHashMap(null, $28, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$6=((lcoc_core.PersistentHashMap(null, $28, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$6, zoneValues: casted$6, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}, );
}, tags: <dc.String>[], );
}

// END suggestions-for-test

// BEGIN word-bound-regex-test
dc.dynamic word_bound_regex_test(){
dc.dynamic thunk$9142_$AUTO_$1(){
final dc.dynamic vec$9256_$1=lcoc_test.$STAR_in_test$STAR_;
dc.dynamic maybe_f$4(){
final dc.RegExp r$1=(lcold_api.word_bound_regex("casa", ) as dc.RegExp);
dc.dynamic maybe_f$1(){
late final lcoc_core.PersistentHashMap? $try_$1;
try {
final dc.bool value$9086_$AUTO_$1=(r$1.hasMatch("casa", ));
if(value$9086_$AUTO_$1){
$try_$1=null;
}else{
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$1[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$1[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$1[3]=value$9086_$AUTO_$1);
(fl$1[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$1[5]=null);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$1, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$1, st$9107_$AUTO_$1) {
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$2[1]=t$9106_$AUTO_$1);
(fl$2[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$2[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$2[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$2[5]=st$9107_$AUTO_$1);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$2, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$1=lcoc_test.result($try_$1, );
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, ".hasMatch", )), ));
(fl$3[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
(fl$3[2]="casa");
final lcoc_core.PersistentList $1=lcoc_core.$_list_lit(fl$3, );
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$4[1]=16);
(fl$4[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$4[3]=31);
(fl$4[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$4[5]=16);
(fl$4[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$4[7]=11);
final dc.dynamic $2=lcoc_core.with_meta($1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$4, ), -1, ), );
final dc.dynamic $3=lcoc_test.cljd_test_matcher($2, );
(t_test.expect(r$9105_$AUTO_$1, $3, ));
late final lcoc_core.PersistentHashMap? $try_$2;
try {
final dc.bool value$9086_$AUTO_$2=(r$1.hasMatch("minha casa nova", ));
if(value$9086_$AUTO_$2){
$try_$2=null;
}else{
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$5[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$5[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$5[3]=value$9086_$AUTO_$2);
(fl$5[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$5[5]=null);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$5, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$2, st$9107_$AUTO_$2) {
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$6[1]=t$9106_$AUTO_$2);
(fl$6[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$6[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$6[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$6[5]=st$9107_$AUTO_$2);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$6, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$2=lcoc_test.result($try_$2, );
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, ".hasMatch", )), ));
(fl$7[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
(fl$7[2]="minha casa nova");
final lcoc_core.PersistentList $4=lcoc_core.$_list_lit(fl$7, );
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$8[1]=17);
(fl$8[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$8[3]=42);
(fl$8[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$8[5]=17);
(fl$8[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$8[7]=11);
final dc.dynamic $5=lcoc_core.with_meta($4, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$8, ), -1, ), );
final dc.dynamic $6=lcoc_test.cljd_test_matcher($5, );
return t_test.expect(r$9105_$AUTO_$2, $6, );
}
late final dc.dynamic Function() wrapper_f$1;
if((maybe_f$1 is dc.dynamic Function())){
wrapper_f$1=maybe_f$1;
}else{
wrapper_f$1=(){
if((maybe_f$1 is dc.Function)){
return (maybe_f$1 as dc.Function)();
}
if((maybe_f$1 is lcoc_core.IFn$iface)){
return ((maybe_f$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$1, ).$_invoke$0(maybe_f$1, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$1=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$1;
if((k$7857_$AUTO_$1 is lcoc_core.IHash$iface)){
cast$1=(((k$7857_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$1, )) as dc.int);
}
final dc.dynamic coll7013$1=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$1;
if((coll7013$1 is lcoc_core.ICollection$iface)){
$if_$1=((coll7013$1 as lcoc_core.ICollection$iface).$_conj$1("matches the whole word", ));
}else{
$if_$1=((lcoc_core.ICollection.extensions(coll7013$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$1, "matches the whole word", ));
}
final lcoc_core.BitmapNode $7=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$1, k$7857_$AUTO_$1, lcoc_core.Volatile($if_$1, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $7, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $7, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $7, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$2(){
late final lcoc_core.PersistentHashMap? $try_$3;
try {
final dc.dynamic values$9083_$AUTO_$1=(lcoc_core.list.$_invoke$1((r$1.hasMatch("casarao", )), ));
final dc.dynamic result$9084_$AUTO_$1=(lcoc_core.apply.$_invoke$2(lcoc_core.not, values$9083_$AUTO_$1, ));
if(((false != result$9084_$AUTO_$1) && (null != result$9084_$AUTO_$1))){
$try_$3=null;
}else{
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$9[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$9[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$9[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "not", )), values$9083_$AUTO_$1, ), )));
(fl$9[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$9[5]=null);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$9, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$3, st$9107_$AUTO_$3) {
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$10[1]=t$9106_$AUTO_$3);
(fl$10[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$10[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$10[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$10[5]=st$9107_$AUTO_$3);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$10, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$3=lcoc_test.result($try_$3, );
final dc.List<dc.dynamic> fl$11=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "not", )), ));
final dc.List<dc.dynamic> fl$12=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, ".hasMatch", )), ));
(fl$12[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
(fl$12[2]="casarao");
final lcoc_core.PersistentList $8=lcoc_core.$_list_lit(fl$12, );
final dc.List<dc.dynamic> fl$13=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$13[1]=19);
(fl$13[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$13[3]=39);
(fl$13[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$13[5]=19);
(fl$13[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$13[7]=16);
final dc.dynamic $9=lcoc_core.with_meta($8, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$13, ), -1, ), );
(fl$11[1]=$9);
final lcoc_core.PersistentList $10=lcoc_core.$_list_lit(fl$11, );
final dc.List<dc.dynamic> fl$14=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$14[1]=19);
(fl$14[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$14[3]=40);
(fl$14[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$14[5]=19);
(fl$14[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$14[7]=11);
final dc.dynamic $11=lcoc_core.with_meta($10, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$14, ), -1, ), );
final dc.dynamic $12=lcoc_test.cljd_test_matcher($11, );
(t_test.expect(r$9105_$AUTO_$3, $12, ));
late final lcoc_core.PersistentHashMap? $try_$4;
try {
final dc.dynamic values$9083_$AUTO_$2=(lcoc_core.list.$_invoke$1((r$1.hasMatch("carcasa", )), ));
final dc.dynamic result$9084_$AUTO_$2=(lcoc_core.apply.$_invoke$2(lcoc_core.not, values$9083_$AUTO_$2, ));
if(((false != result$9084_$AUTO_$2) && (null != result$9084_$AUTO_$2))){
$try_$4=null;
}else{
final dc.List<dc.dynamic> fl$15=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$15[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$15[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$15[3]=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "not", )), lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, "not", )), values$9083_$AUTO_$2, ), )));
(fl$15[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$15[5]=null);
$try_$4=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$15, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$4, st$9107_$AUTO_$4) {
final dc.List<dc.dynamic> fl$16=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$16[1]=t$9106_$AUTO_$4);
(fl$16[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$16[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$16[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$16[5]=st$9107_$AUTO_$4);
$try_$4=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$16, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$4=lcoc_test.result($try_$4, );
final dc.List<dc.dynamic> fl$17=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "not", )), ));
final dc.List<dc.dynamic> fl$18=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, ".hasMatch", )), ));
(fl$18[1]=(lcoc_core.symbol.$_invoke$2(null, "r", )));
(fl$18[2]="carcasa");
final lcoc_core.PersistentList $13=lcoc_core.$_list_lit(fl$18, );
final dc.List<dc.dynamic> fl$19=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$19[1]=20);
(fl$19[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$19[3]=39);
(fl$19[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$19[5]=20);
(fl$19[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$19[7]=16);
final dc.dynamic $14=lcoc_core.with_meta($13, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$19, ), -1, ), );
(fl$17[1]=$14);
final lcoc_core.PersistentList $15=lcoc_core.$_list_lit(fl$17, );
final dc.List<dc.dynamic> fl$20=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$20[1]=20);
(fl$20[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$20[3]=40);
(fl$20[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$20[5]=20);
(fl$20[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$20[7]=11);
final dc.dynamic $16=lcoc_core.with_meta($15, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$20, ), -1, ), );
final dc.dynamic $17=lcoc_test.cljd_test_matcher($16, );
return t_test.expect(r$9105_$AUTO_$4, $17, );
}
late final dc.dynamic Function() wrapper_f$2;
if((maybe_f$2 is dc.dynamic Function())){
wrapper_f$2=maybe_f$2;
}else{
wrapper_f$2=(){
if((maybe_f$2 is dc.Function)){
return (maybe_f$2 as dc.Function)();
}
if((maybe_f$2 is lcoc_core.IFn$iface)){
return ((maybe_f$2 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$2, ).$_invoke$0(maybe_f$2, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$2=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$2=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$2;
if((k$7857_$AUTO_$2 is lcoc_core.IHash$iface)){
cast$2=(((k$7857_$AUTO_$2 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$2=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$2, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$2, )) as dc.int);
}
final dc.dynamic coll7013$2=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$2;
if((coll7013$2 is lcoc_core.ICollection$iface)){
$if_$2=((coll7013$2 as lcoc_core.ICollection$iface).$_conj$1("does not match inside another word", ));
}else{
$if_$2=((lcoc_core.ICollection.extensions(coll7013$2, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$2, "does not match inside another word", ));
}
final lcoc_core.BitmapNode $18=(node$7856_$AUTO_$2.inode_assoc_transient(0, cast$2, k$7857_$AUTO_$2, lcoc_core.Volatile($if_$2, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$2;
if((lcoc_core.PersistentHashMap(null, $18, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$2=(lcoc_core.PersistentHashMap(null, $18, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$2=((lcoc_core.PersistentHashMap(null, $18, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$2, zoneValues: casted$2, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
dc.dynamic maybe_f$3(){
late final lcoc_core.PersistentHashMap? $try_$5;
try {
final dc.bool value$9086_$AUTO_$3=((lcold_api.word_bound_regex("Ação", ) as dc.RegExp).hasMatch("acao urgente", ));
if(value$9086_$AUTO_$3){
$try_$5=null;
}else{
final dc.List<dc.dynamic> fl$21=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$21[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$21[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$21[3]=value$9086_$AUTO_$3);
(fl$21[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$21[5]=null);
$try_$5=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$21, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$5, st$9107_$AUTO_$5) {
final dc.List<dc.dynamic> fl$22=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$22[1]=t$9106_$AUTO_$5);
(fl$22[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$22[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$22[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$22[5]=st$9107_$AUTO_$5);
$try_$5=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$22, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$5=lcoc_test.result($try_$5, );
final dc.List<dc.dynamic> fl$23=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, ".hasMatch", )), ));
final dc.List<dc.dynamic> fl$24=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2("api", "word-bound-regex", )), ));
(fl$24[1]="Ação");
final lcoc_core.PersistentList $19=lcoc_core.$_list_lit(fl$24, );
final dc.List<dc.dynamic> fl$25=(dc.List<dc.dynamic>.filled(10, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$25[1]=22);
(fl$25[2]=const lcoc_core.Keyword(null, "tag", 2780644040, ));
(fl$25[3]=(lcoc_core.symbol.$_invoke$2(null, "RegExp", )));
(fl$25[4]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$25[5]=59);
(fl$25[6]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$25[7]=22);
(fl$25[8]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$25[9]=22);
final dc.dynamic $20=lcoc_core.with_meta($19, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(5, 26888, 26888, fl$25, ), -1, ), );
(fl$23[1]=$20);
(fl$23[2]="acao urgente");
final lcoc_core.PersistentList $21=lcoc_core.$_list_lit(fl$23, );
final dc.List<dc.dynamic> fl$26=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$26[1]=22);
(fl$26[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$26[3]=75);
(fl$26[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$26[5]=22);
(fl$26[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$26[7]=11);
final dc.dynamic $22=lcoc_core.with_meta($21, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$26, ), -1, ), );
final dc.dynamic $23=lcoc_test.cljd_test_matcher($22, );
return t_test.expect(r$9105_$AUTO_$5, $23, );
}
late final dc.dynamic Function() wrapper_f$3;
if((maybe_f$3 is dc.dynamic Function())){
wrapper_f$3=maybe_f$3;
}else{
wrapper_f$3=(){
if((maybe_f$3 is dc.Function)){
return (maybe_f$3 as dc.Function)();
}
if((maybe_f$3 is lcoc_core.IFn$iface)){
return ((maybe_f$3 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$3, ).$_invoke$0(maybe_f$3, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$3=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$3=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$3;
if((k$7857_$AUTO_$3 is lcoc_core.IHash$iface)){
cast$3=(((k$7857_$AUTO_$3 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$3=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$3, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$3, )) as dc.int);
}
final dc.dynamic coll7013$3=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$3;
if((coll7013$3 is lcoc_core.ICollection$iface)){
$if_$3=((coll7013$3 as lcoc_core.ICollection$iface).$_conj$1("query is normalized", ));
}else{
$if_$3=((lcoc_core.ICollection.extensions(coll7013$3, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$3, "query is normalized", ));
}
final lcoc_core.BitmapNode $24=(node$7856_$AUTO_$3.inode_assoc_transient(0, cast$3, k$7857_$AUTO_$3, lcoc_core.Volatile($if_$3, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$3;
if((lcoc_core.PersistentHashMap(null, $24, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$3=(lcoc_core.PersistentHashMap(null, $24, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$3=((lcoc_core.PersistentHashMap(null, $24, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$3, zoneValues: casted$3, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
late final dc.dynamic Function() wrapper_f$4;
if((maybe_f$4 is dc.dynamic Function())){
wrapper_f$4=maybe_f$4;
}else{
wrapper_f$4=(){
if((maybe_f$4 is dc.Function)){
return (maybe_f$4 as dc.Function)();
}
if((maybe_f$4 is lcoc_core.IFn$iface)){
return ((maybe_f$4 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$4, ).$_invoke$0(maybe_f$4, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$4=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$4=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$4;
if((k$7857_$AUTO_$4 is lcoc_core.IHash$iface)){
cast$4=(((k$7857_$AUTO_$4 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$4=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$4, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$4, )) as dc.int);
}
final dc.dynamic coll7013$4=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$4;
if((coll7013$4 is lcoc_core.ICollection$iface)){
$if_$4=((coll7013$4 as lcoc_core.ICollection$iface).$_conj$1("libras-dictionary.api-test/word-bound-regex-test", ));
}else{
$if_$4=((lcoc_core.ICollection.extensions(coll7013$4, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$4, "libras-dictionary.api-test/word-bound-regex-test", ));
}
final lcoc_core.BitmapNode $25=(node$7856_$AUTO_$4.inode_assoc_transient(0, cast$4, k$7857_$AUTO_$4, lcoc_core.Volatile($if_$4, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$4;
if((lcoc_core.PersistentHashMap(null, $25, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$4=(lcoc_core.PersistentHashMap(null, $25, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$4=((lcoc_core.PersistentHashMap(null, $25, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$4, zoneValues: casted$4, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
if(((false != lcoc_test.$STAR_in_test$STAR_) && (null != lcoc_test.$STAR_in_test$STAR_))){
return thunk$9142_$AUTO_$1();
}
return t_test.group(null, (){
return t_test.test("libras-dictionary.api-test/word-bound-regex-test", (){
dc.dynamic maybe_f$5(){
return thunk$9142_$AUTO_$1();
}
late final dc.dynamic Function() wrapper_f$5;
if((maybe_f$5 is dc.dynamic Function())){
wrapper_f$5=maybe_f$5;
}else{
wrapper_f$5=(){
if((maybe_f$5 is dc.Function)){
return (maybe_f$5 as dc.Function)();
}
if((maybe_f$5 is lcoc_core.IFn$iface)){
return ((maybe_f$5 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$5, ).$_invoke$0(maybe_f$5, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$5=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$5=(lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", ));
late final dc.int cast$5;
if((k$7857_$AUTO_$5 is lcoc_core.IHash$iface)){
cast$5=(((k$7857_$AUTO_$5 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$5=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$5, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$5, )) as dc.int);
}
final lcoc_core.BitmapNode $26=(node$7856_$AUTO_$5.inode_assoc_transient(0, cast$5, k$7857_$AUTO_$5, lcoc_core.Volatile(lcoc_core.$_EMPTY_VECTOR, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$5;
if((lcoc_core.PersistentHashMap(null, $26, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$5=(lcoc_core.PersistentHashMap(null, $26, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$5=((lcoc_core.PersistentHashMap(null, $26, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$5, zoneValues: casted$5, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}, );
}, tags: <dc.String>[], );
}

// END word-bound-regex-test

// BEGIN youtube-search-url-test
dc.dynamic youtube_search_url_test(){
dc.dynamic thunk$9142_$AUTO_$1(){
final dc.dynamic vec$9276_$1=lcoc_test.$STAR_in_test$STAR_;
dc.dynamic maybe_f$1(){
final dc.dynamic url$1=lcold_api.youtube_search_url("bom dia", );
late final lcoc_core.PersistentHashMap? $try_$1;
try {
final dc.bool value$9086_$AUTO_$1=((url$1 as dc.String).startsWith("https://www.youtube.com/results?search_query=", ));
if(value$9086_$AUTO_$1){
$try_$1=null;
}else{
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$1[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$1[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$1[3]=value$9086_$AUTO_$1);
(fl$1[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$1[5]=null);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$1, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$1, st$9107_$AUTO_$1) {
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$2[1]=t$9106_$AUTO_$1);
(fl$2[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$2[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$2[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$2[5]=st$9107_$AUTO_$1);
$try_$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$2, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$1=lcoc_test.result($try_$1, );
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, ".startsWith", )), ));
(fl$3[1]=(lcoc_core.symbol.$_invoke$2(null, "url", )));
(fl$3[2]="https://www.youtube.com/results?search_query=");
final lcoc_core.PersistentList $1=lcoc_core.$_list_lit(fl$3, );
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$4[1]=66);
(fl$4[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$4[3]=82);
(fl$4[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$4[5]=66);
(fl$4[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$4[7]=9);
final dc.dynamic $2=lcoc_core.with_meta($1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$4, ), -1, ), );
final dc.dynamic $3=lcoc_test.cljd_test_matcher($2, );
(t_test.expect(r$9105_$AUTO_$1, $3, ));
late final lcoc_core.PersistentHashMap? $try_$2;
try {
final dc.bool value$9086_$AUTO_$2=((url$1 as dc.String).contains("em+libras", ));
if(value$9086_$AUTO_$2){
$try_$2=null;
}else{
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$5[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$5[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$5[3]=value$9086_$AUTO_$2);
(fl$5[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$5[5]=null);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$5, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$2, st$9107_$AUTO_$2) {
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$6[1]=t$9106_$AUTO_$2);
(fl$6[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$6[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$6[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$6[5]=st$9107_$AUTO_$2);
$try_$2=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$6, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$2=lcoc_test.result($try_$2, );
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, ".contains", )), ));
(fl$7[1]=(lcoc_core.symbol.$_invoke$2(null, "url", )));
(fl$7[2]="em+libras");
final lcoc_core.PersistentList $4=lcoc_core.$_list_lit(fl$7, );
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$8[1]=67);
(fl$8[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$8[3]=44);
(fl$8[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$8[5]=67);
(fl$8[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$8[7]=9);
final dc.dynamic $5=lcoc_core.with_meta($4, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$8, ), -1, ), );
final dc.dynamic $6=lcoc_test.cljd_test_matcher($5, );
(t_test.expect(r$9105_$AUTO_$2, $6, ));
late final lcoc_core.PersistentHashMap? $try_$3;
try {
final dc.bool value$9086_$AUTO_$3=((url$1 as dc.String).contains("bom+dia", ));
if(value$9086_$AUTO_$3){
$try_$3=null;
}else{
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "type", 3318123983, ), ));
(fl$9[1]=const lcoc_core.Keyword(null, "fail", 4066245304, ));
(fl$9[2]=const lcoc_core.Keyword(null, "actual", 852479220, ));
(fl$9[3]=value$9086_$AUTO_$3);
(fl$9[4]=const lcoc_core.Keyword(null, "message", 1042898137, ));
(fl$9[5]=null);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 34635776, 34635776, fl$9, ), -1, );
}
} on dc.Object catch (t$9106_$AUTO_$3, st$9107_$AUTO_$3) {
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "exception", 2303443619, ), ));
(fl$10[1]=t$9106_$AUTO_$3);
(fl$10[2]=const lcoc_core.Keyword(null, "type", 3318123983, ));
(fl$10[3]=const lcoc_core.Keyword(null, "error", 465527971, ));
(fl$10[4]=const lcoc_core.Keyword(null, "stacktrace", 1805465879, ));
(fl$10[5]=st$9107_$AUTO_$3);
$try_$3=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8421384, 8421384, fl$10, ), -1, );
}
final dc.dynamic r$9105_$AUTO_$3=lcoc_test.result($try_$3, );
final dc.List<dc.dynamic> fl$11=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, ".contains", )), ));
(fl$11[1]=(lcoc_core.symbol.$_invoke$2(null, "url", )));
(fl$11[2]="bom+dia");
final lcoc_core.PersistentList $7=lcoc_core.$_list_lit(fl$11, );
final dc.List<dc.dynamic> fl$12=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$12[1]=68);
(fl$12[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$12[3]=42);
(fl$12[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$12[5]=68);
(fl$12[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$12[7]=9);
final dc.dynamic $8=lcoc_core.with_meta($7, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$12, ), -1, ), );
final dc.dynamic $9=lcoc_test.cljd_test_matcher($8, );
return t_test.expect(r$9105_$AUTO_$3, $9, );
}
late final dc.dynamic Function() wrapper_f$1;
if((maybe_f$1 is dc.dynamic Function())){
wrapper_f$1=maybe_f$1;
}else{
wrapper_f$1=(){
if((maybe_f$1 is dc.Function)){
return (maybe_f$1 as dc.Function)();
}
if((maybe_f$1 is lcoc_core.IFn$iface)){
return ((maybe_f$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$1, ).$_invoke$0(maybe_f$1, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$1=(lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", ));
late final dc.int cast$1;
if((k$7857_$AUTO_$1 is lcoc_core.IHash$iface)){
cast$1=(((k$7857_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$1, )) as dc.int);
}
final dc.dynamic coll7013$1=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic $if_$1;
if((coll7013$1 is lcoc_core.ICollection$iface)){
$if_$1=((coll7013$1 as lcoc_core.ICollection$iface).$_conj$1("libras-dictionary.api-test/youtube-search-url-test", ));
}else{
$if_$1=((lcoc_core.ICollection.extensions(coll7013$1, ) as lcoc_core.ICollection$ext).$_conj$1(coll7013$1, "libras-dictionary.api-test/youtube-search-url-test", ));
}
final lcoc_core.BitmapNode $10=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$1, k$7857_$AUTO_$1, lcoc_core.Volatile($if_$1, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $10, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $10, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $10, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
if(((false != lcoc_test.$STAR_in_test$STAR_) && (null != lcoc_test.$STAR_in_test$STAR_))){
return thunk$9142_$AUTO_$1();
}
return t_test.group(null, (){
return t_test.test("libras-dictionary.api-test/youtube-search-url-test", (){
dc.dynamic maybe_f$2(){
return thunk$9142_$AUTO_$1();
}
late final dc.dynamic Function() wrapper_f$2;
if((maybe_f$2 is dc.dynamic Function())){
wrapper_f$2=maybe_f$2;
}else{
wrapper_f$2=(){
if((maybe_f$2 is dc.Function)){
return (maybe_f$2 as dc.Function)();
}
if((maybe_f$2 is lcoc_core.IFn$iface)){
return ((maybe_f$2 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(maybe_f$2, ).$_invoke$0(maybe_f$2, ));
};
}
final lcoc_core.BitmapNode node$7856_$AUTO_$2=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
final dc.dynamic k$7857_$AUTO_$2=(lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", ));
late final dc.int cast$2;
if((k$7857_$AUTO_$2 is lcoc_core.IHash$iface)){
cast$2=(((k$7857_$AUTO_$2 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$2=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$2, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$2, )) as dc.int);
}
final lcoc_core.BitmapNode $11=(node$7856_$AUTO_$2.inode_assoc_transient(0, cast$2, k$7857_$AUTO_$2, lcoc_core.Volatile(lcoc_core.$_EMPTY_VECTOR, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$2;
if((lcoc_core.PersistentHashMap(null, $11, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$2=(lcoc_core.PersistentHashMap(null, $11, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$2=((lcoc_core.PersistentHashMap(null, $11, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$2, zoneValues: casted$2, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}, );
}, tags: <dc.String>[], );
}

// END youtube-search-url-test
