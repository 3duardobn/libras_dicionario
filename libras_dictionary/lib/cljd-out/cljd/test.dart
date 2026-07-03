// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "test.dart" as lcoc_test;
import "core.dart" as lcoc_core;
import "template.dart" as lcoc_template;
import "string.dart" as lcoc_string;
import "package:test/test.dart" as t_test;
import "dart:async" as da;
import "../../../test/cljd-out/libras-dictionary/api-test_test.dart" as lcolda_test;

// BEGIN *groups*
dc.dynamic $STAR_groups$STAR_$root=lcoc_core.$_EMPTY_LIST;
dc.dynamic get $STAR_groups$STAR_ => (lcoc_core.get_dynamic_binding((lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", )), $STAR_groups$STAR_$root, ) as dc.dynamic);
set $STAR_groups$STAR_(dc.dynamic v) => lcoc_core.set_dynamic_binding$BANG_((lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", )), v, );

// END *groups*

// BEGIN *in-test*
dc.dynamic $STAR_in_test$STAR_$root=null;
dc.dynamic get $STAR_in_test$STAR_ => (lcoc_core.get_dynamic_binding((lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", )), $STAR_in_test$STAR_$root, ) as dc.dynamic);
set $STAR_in_test$STAR_(dc.dynamic v) => lcoc_core.set_dynamic_binding$BANG_((lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", )), v, );

// END *in-test*

// BEGIN ->Result
dc.dynamic $_$GT_Result(dc.dynamic m$1, dc.dynamic s$1, ){
return lcoc_test.Result(m$1, s$1, );
}

// END ->Result

// BEGIN Result
class Result extends dc.Object {
final m;
final s;

const Result(this.m, this.s, ):super();

dc.String toString(){
return s;
}
}

// END Result

// BEGIN are
lcoc_core.IFn$iface are=lcoc_test.ifn_are_M__18695hm$1(null, );

// END are

// BEGIN assert-any
dc.dynamic assert_any(dc.dynamic msg$1, dc.dynamic form$1, ){
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "value__9165__auto__", )), )), (lcoc_core.list.$_invoke$1(form$1, )), ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$1, ));
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-not", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "value__9165__auto__", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$6((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "type", 3318123983, ), )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "fail", 4066245304, ), )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "message", 1042898137, ), )), (lcoc_core.list.$_invoke$1(msg$1, )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "actual", 852479220, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "value__9165__auto__", )), )), ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $2=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$2, ));
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$3(arg$2, arg$1, $3, ));
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$3(arg$3, $5, $4, ));
if((o6974$4 is lcoc_core.ISeqable$iface)){
return ((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}

// END assert-any

// BEGIN assert-expr
dc.dynamic assert_expr(dc.dynamic env$1, dc.dynamic msg$1, dc.dynamic form$1, ){
late final dc.dynamic test$6640_$AUTO_$1;
if((null == form$1)){
test$6640_$AUTO_$1=const lcoc_core.Keyword(null, "always-fail", 2822575472, );
}else if(((lcoc_core.ISeq.satisfies(form$1, )) as dc.bool)){
test$6640_$AUTO_$1=lcoc_core.first(form$1, );
}else{
test$6640_$AUTO_$1=const lcoc_core.Keyword(null, "default", 3376916406, );
}
late final dc.int hash$1;
if((test$6640_$AUTO_$1 is lcoc_core.IHash$iface)){
hash$1=(((test$6640_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$1=(((lcoc_core.IHash.extensions(test$6640_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(test$6640_$AUTO_$1, )) as dc.int);
}
switch(hash$1){
case 2822575472:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "always-fail", 2822575472, ), test$6640_$AUTO_$1, ))){
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$4((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "type", 3318123983, ), )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "fail", 4066245304, ), )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "message", 1042898137, ), )), (lcoc_core.list.$_invoke$1(msg$1, )), ));
late final dc.dynamic $if_$2;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$2, ));
}
continue _default$1;
case 4061197181:
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "thrown?", )), test$6640_$AUTO_$1, ))){
final dc.dynamic klass$1=lcoc_core.second(form$1, );
final dc.dynamic body$1=lcoc_core.nthnext(form$1, 2, );
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "try", )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "type", 3318123983, ), ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "fail", 4066245304, ), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "message", 1042898137, ), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1(msg$1, ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "actual", 852479220, ), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "do", )), )), body$1, ));
late final dc.dynamic $if_$3;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$6(arg$5, arg$4, arg$3, arg$2, arg$1, $1, ));
late final dc.dynamic $if_$4;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $2=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$4, ));
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($2, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$4((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "catch", )), )), (lcoc_core.list.$_invoke$1(klass$1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "e__9166__auto__", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$5;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($if_$5, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$3(arg$6, $4, $3, ));
if((o6974$5 is lcoc_core.ISeqable$iface)){
return ((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
continue _default$1;
case 1075939923:
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "instance?", )), test$6640_$AUTO_$1, ))){
final dc.dynamic klass$2=(lcoc_core.nth.$_invoke$2(form$1, 1, ));
final dc.dynamic arg$14=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "object__9167__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.nth.$_invoke$2(form$1, 2, )), )), ));
late final dc.dynamic $if_$6;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $5=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$6, ));
final dc.dynamic $12=(lcoc_core.list.$_invoke$1($5, ));
final dc.dynamic arg$13=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-not", )), ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart", "is?", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "object__9167__auto__", )), )), (lcoc_core.list.$_invoke$1(klass$2, )), ));
late final dc.dynamic $if_$7;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($if_$7, ));
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "type", 3318123983, ), ));
final dc.dynamic arg$11=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "fail", 4066245304, ), ));
final dc.dynamic arg$10=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "message", 1042898137, ), ));
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1(msg$1, ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "expected", 2118774118, ), ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "quote", )), )), (lcoc_core.list.$_invoke$1(form$1, )), ));
late final dc.dynamic $if_$8;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($if_$8, ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "actual", 852479220, ), ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-runtimeType", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "object__9167__auto__", )), )), ));
late final dc.dynamic $if_$9;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$9=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$9=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$9, ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$8(arg$12, arg$11, arg$10, arg$9, arg$8, $7, arg$7, $6, ));
late final dc.dynamic $if_$10;
if((o6974$10 is lcoc_core.ISeqable$iface)){
$if_$10=((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$10=((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}
final dc.dynamic $8=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$10, ));
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($8, ));
final dc.dynamic o6974$11=(lcoc_core.concat.$_invoke$3(arg$13, $10, $9, ));
late final dc.dynamic $if_$11;
if((o6974$11 is lcoc_core.ISeqable$iface)){
$if_$11=((o6974$11 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$11=((lcoc_core.ISeqable.extensions(o6974$11, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$11, ));
}
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($if_$11, ));
final dc.dynamic o6974$12=(lcoc_core.concat.$_invoke$3(arg$14, $12, $11, ));
if((o6974$12 is lcoc_core.ISeqable$iface)){
return ((o6974$12 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$12, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$12, ));
}
continue _default$1;
case 96021379:
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "thrown-with-msg?", )), test$6640_$AUTO_$1, ))){
final dc.dynamic klass$3=(lcoc_core.nth.$_invoke$2(form$1, 1, ));
final dc.dynamic re$1=(lcoc_core.nth.$_invoke$2(form$1, 2, ));
final dc.dynamic body$2=lcoc_core.nthnext(form$1, 3, );
final dc.dynamic arg$32=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "try", )), ));
final dc.dynamic arg$20=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "type", 3318123983, ), ));
final dc.dynamic arg$19=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "fail", 4066245304, ), ));
final dc.dynamic arg$18=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "message", 1042898137, ), ));
final dc.dynamic arg$17=(lcoc_core.list.$_invoke$1(msg$1, ));
final dc.dynamic arg$16=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "expected", 2118774118, ), ));
final dc.dynamic o6974$13=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "quote", )), )), (lcoc_core.list.$_invoke$1(form$1, )), ));
late final dc.dynamic $if_$12;
if((o6974$13 is lcoc_core.ISeqable$iface)){
$if_$12=((o6974$13 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$12=((lcoc_core.ISeqable.extensions(o6974$13, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$13, ));
}
final dc.dynamic $14=(lcoc_core.list.$_invoke$1($if_$12, ));
final dc.dynamic arg$15=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "actual", 852479220, ), ));
final dc.dynamic o6974$14=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "do", )), )), body$2, ));
late final dc.dynamic $if_$13;
if((o6974$14 is lcoc_core.ISeqable$iface)){
$if_$13=((o6974$14 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$13=((lcoc_core.ISeqable.extensions(o6974$14, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$14, ));
}
final dc.dynamic $13=(lcoc_core.list.$_invoke$1($if_$13, ));
final dc.dynamic o6974$15=(lcoc_core.concat.$_invoke$8(arg$20, arg$19, arg$18, arg$17, arg$16, $14, arg$15, $13, ));
late final dc.dynamic $if_$14;
if((o6974$15 is lcoc_core.ISeqable$iface)){
$if_$14=((o6974$15 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$14=((lcoc_core.ISeqable.extensions(o6974$15, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$15, ));
}
final dc.dynamic $15=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$14, ));
final dc.dynamic $23=(lcoc_core.list.$_invoke$1($15, ));
final dc.dynamic arg$31=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "catch", )), ));
final dc.dynamic arg$30=(lcoc_core.list.$_invoke$1(klass$3, ));
final dc.dynamic arg$29=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "e__9168__auto__", )), ));
final dc.dynamic arg$28=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-not", )), ));
final dc.dynamic arg$22=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "re-find", )), ));
final dc.dynamic arg$21=(lcoc_core.list.$_invoke$1(re$1, ));
final dc.dynamic o6974$16=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "ex-message", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "e__9168__auto__", )), )), ));
late final dc.dynamic $if_$15;
if((o6974$16 is lcoc_core.ISeqable$iface)){
$if_$15=((o6974$16 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$15=((lcoc_core.ISeqable.extensions(o6974$16, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$16, ));
}
final dc.dynamic $16=(lcoc_core.list.$_invoke$1($if_$15, ));
final dc.dynamic o6974$17=(lcoc_core.concat.$_invoke$3(arg$22, arg$21, $16, ));
late final dc.dynamic $if_$16;
if((o6974$17 is lcoc_core.ISeqable$iface)){
$if_$16=((o6974$17 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$16=((lcoc_core.ISeqable.extensions(o6974$17, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$17, ));
}
final dc.dynamic $20=(lcoc_core.list.$_invoke$1($if_$16, ));
final dc.dynamic arg$27=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "type", 3318123983, ), ));
final dc.dynamic arg$26=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "fail", 4066245304, ), ));
final dc.dynamic arg$25=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "message", 1042898137, ), ));
final dc.dynamic arg$24=(lcoc_core.list.$_invoke$1(msg$1, ));
final dc.dynamic arg$23=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "expected", 2118774118, ), ));
final dc.dynamic o6974$18=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "quote", )), )), (lcoc_core.list.$_invoke$1(form$1, )), ));
late final dc.dynamic $if_$17;
if((o6974$18 is lcoc_core.ISeqable$iface)){
$if_$17=((o6974$18 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$17=((lcoc_core.ISeqable.extensions(o6974$18, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$18, ));
}
final dc.dynamic $17=(lcoc_core.list.$_invoke$1($if_$17, ));
final dc.dynamic o6974$19=(lcoc_core.concat.$_invoke$8(arg$27, arg$26, arg$25, arg$24, arg$23, $17, (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "actual", 852479220, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "e__9168__auto__", )), )), ));
late final dc.dynamic $if_$18;
if((o6974$19 is lcoc_core.ISeqable$iface)){
$if_$18=((o6974$19 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$18=((lcoc_core.ISeqable.extensions(o6974$19, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$19, ));
}
final dc.dynamic $18=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$18, ));
final dc.dynamic $19=(lcoc_core.list.$_invoke$1($18, ));
final dc.dynamic o6974$20=(lcoc_core.concat.$_invoke$3(arg$28, $20, $19, ));
late final dc.dynamic $if_$19;
if((o6974$20 is lcoc_core.ISeqable$iface)){
$if_$19=((o6974$20 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$19=((lcoc_core.ISeqable.extensions(o6974$20, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$20, ));
}
final dc.dynamic $21=(lcoc_core.list.$_invoke$1($if_$19, ));
final dc.dynamic o6974$21=(lcoc_core.concat.$_invoke$4(arg$31, arg$30, arg$29, $21, ));
late final dc.dynamic $if_$20;
if((o6974$21 is lcoc_core.ISeqable$iface)){
$if_$20=((o6974$21 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$20=((lcoc_core.ISeqable.extensions(o6974$21, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$21, ));
}
final dc.dynamic $22=(lcoc_core.list.$_invoke$1($if_$20, ));
final dc.dynamic o6974$22=(lcoc_core.concat.$_invoke$3(arg$32, $23, $22, ));
if((o6974$22 is lcoc_core.ISeqable$iface)){
return ((o6974$22 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$22, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$22, ));
}
continue _default$1;
_default$1: default:
final dc.bool and$6836_$AUTO_$1=((lcoc_core.ISequential.satisfies(form$1, )) as dc.bool);
late final dc.dynamic $if_$1;
if(and$6836_$AUTO_$1){
$if_$1=lcoc_test.function$QMARK_(env$1, lcoc_core.first(form$1, ), );
}else{
$if_$1=and$6836_$AUTO_$1;
}
if(((false != $if_$1) && (null != $if_$1))){
return lcoc_test.assert_predicate(msg$1, form$1, );
}
return lcoc_test.assert_any(msg$1, form$1, );
}
}

// END assert-expr

// BEGIN assert-predicate
dc.dynamic assert_predicate(dc.dynamic msg$1, dc.dynamic form$1, ){
final dc.dynamic args$1=lcoc_core.rest(form$1, );
final dc.dynamic pred$1=lcoc_core.first(form$1, );
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "values__9163__auto__", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "list", )), )), args$1, ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$1, ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "result__9164__auto__", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "apply", )), )), (lcoc_core.list.$_invoke$1(pred$1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "values__9163__auto__", )), )), ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$4(arg$2, $2, arg$1, $1, ));
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $3=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$3, ));
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($3, ));
final dc.dynamic arg$11=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-not", )), ));
final dc.dynamic arg$10=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "result__9164__auto__", )), ));
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "type", 3318123983, ), ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "fail", 4066245304, ), ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "message", 1042898137, ), ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1(msg$1, ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "actual", 852479220, ), ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "list", )), ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "quote", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "not", )), )), ));
late final dc.dynamic $if_$4;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "cons", )), ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "quote", )), )), (lcoc_core.list.$_invoke$1(pred$1, )), ));
late final dc.dynamic $if_$5;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($if_$5, ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$3(arg$3, $4, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "values__9163__auto__", )), )), ));
late final dc.dynamic $if_$6;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($if_$6, ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$3(arg$4, $6, $5, ));
late final dc.dynamic $if_$7;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($if_$7, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$6(arg$9, arg$8, arg$7, arg$6, arg$5, $7, ));
late final dc.dynamic $if_$8;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $8=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$8, ));
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($8, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$3(arg$11, arg$10, $9, ));
late final dc.dynamic $if_$9;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$9=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$9=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($if_$9, ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$3(arg$12, $11, $10, ));
if((o6974$10 is lcoc_core.ISeqable$iface)){
return ((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}

// END assert-predicate

// BEGIN cljd-test-matcher
dc.dynamic cljd_test_matcher(dc.dynamic form$1, ){
return lcoc_test.reify_cljd_test_matcher_M__1fzc03$1(null, form$1, );
}

// END cljd-test-matcher

// BEGIN defrunner-main
dc.dynamic defrunner_main(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, ){
final dc.dynamic nses$1=(const lcoc_core.Keyword(null, "nses", 3771051699, ).$_invoke$1($AMPERSAND_env$1, ));
late final dc.dynamic nses$2;
if(((lcoc_core.ISeq.satisfies(nses$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(nses$1, );
if(((false != test$1) && (null != test$1))){
nses$2=lcoc_core.seq_to_map_for_destructuring(nses$1, );
}else{
late final dc.dynamic $if_$1;
if((nses$1 is lcoc_core.ISeqable$iface)){
$if_$1=((nses$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(nses$1, ) as lcoc_core.ISeqable$ext).$_seq$0(nses$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
nses$2=lcoc_core.first(nses$1, );
}else{
nses$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
nses$2=nses$1;
}
late final dc.dynamic current_ns$1;
if((nses$2 is lcoc_core.ILookup$iface)){
current_ns$1=((nses$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "current-ns", 1862637831, ), ));
}else{
current_ns$1=((lcoc_core.ILookup.extensions(nses$2, ) as lcoc_core.ILookup$ext).$_lookup$1(nses$2, const lcoc_core.Keyword(null, "current-ns", 1862637831, ), ));
}
late final dc.dynamic the_ns$1;
if((nses$2 is dc.Function)){
the_ns$1=(nses$2 as dc.Function)(current_ns$1, );
}else if((nses$2 is lcoc_core.IFn$iface)){
the_ns$1=((nses$2 as lcoc_core.IFn$iface).$_invoke$1(current_ns$1, ));
}else{
the_ns$1=(lcoc_core.IFn.extensions(nses$2, ).$_invoke$1(nses$2, current_ns$1, ));
}
final dc.dynamic tests$1=(lcoc_core.keep.$_invoke$2((dc.dynamic p$9193_$1, ){
final dc.dynamic k$1=(lcoc_core.nth.$_invoke$3(p$9193_$1, 0, null, ));
final dc.dynamic v$1=(lcoc_core.nth.$_invoke$3(p$9193_$1, 1, null, ));
final dc.bool and$6836_$AUTO_$1=lcoc_core.symbol$QMARK_(k$1, );
late final dc.dynamic $if_$2;
if(and$6836_$AUTO_$1){
$if_$2=(const lcoc_core.Keyword("cljd.test", "test", 426335942, ).$_invoke$1((const lcoc_core.Keyword(null, "meta", 569132720, ).$_invoke$1(v$1, )), ));
}else{
$if_$2=and$6836_$AUTO_$1;
}
if(((false != $if_$2) && (null != $if_$2))){
return (lcoc_core.list.$_invoke$1(k$1, ));
}
return null;
}, the_ns$1, ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "defn", )), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-cljd-test-runner-entry-point", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$0());
late final dc.dynamic $if_$3;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$3, ));
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic arg$1=(lcoc_core.symbol.$_invoke$2(null, "cljd-test-once-fixtures", ));
late final dc.dynamic $if_$4;
if((the_ns$1 is dc.Function)){
$if_$4=(the_ns$1 as dc.Function)(arg$1, );
}else if((the_ns$1 is lcoc_core.IFn$iface)){
$if_$4=((the_ns$1 as lcoc_core.IFn$iface).$_invoke$1(arg$1, ));
}else{
$if_$4=(lcoc_core.IFn.extensions(the_ns$1, ).$_invoke$1(the_ns$1, arg$1, ));
}
late final dc.dynamic $if_$5;
if(((false != $if_$4) && (null != $if_$4))){
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "register-once-fixtures", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "cljd-test-once-fixtures", )), )), ));
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
}else{
$if_$5=null;
}
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($if_$5, ));
final dc.dynamic arg$2=(lcoc_core.symbol.$_invoke$2(null, "cljd-test-each-fixtures", ));
late final dc.dynamic $if_$6;
if((the_ns$1 is dc.Function)){
$if_$6=(the_ns$1 as dc.Function)(arg$2, );
}else if((the_ns$1 is lcoc_core.IFn$iface)){
$if_$6=((the_ns$1 as lcoc_core.IFn$iface).$_invoke$1(arg$2, ));
}else{
$if_$6=(lcoc_core.IFn.extensions(the_ns$1, ).$_invoke$1(the_ns$1, arg$2, ));
}
late final dc.dynamic $if_$7;
if(((false != $if_$6) && (null != $if_$6))){
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "register-each-fixtures", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "cljd-test-each-fixtures", )), )), ));
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
}else{
$if_$7=null;
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$7, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$6(arg$4, arg$3, $4, $3, $2, tests$1, ));
if((o6974$5 is lcoc_core.ISeqable$iface)){
return ((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}

// END defrunner-main

// BEGIN deftest
lcoc_core.IFn$iface deftest=lcoc_test.ifn_deftest_M__18695hm$1(null, );

// END deftest

// BEGIN deftest-
lcoc_core.IFn$iface deftest_=lcoc_test.ifn_deftest__M__18695hm$1(null, );

// END deftest-

// BEGIN fixture-callbacks
dc.dynamic fixture_callbacks(dc.dynamic f$1, ){
final lcoc_core.Volatile v$1=lcoc_core.Volatile(null, );
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, (){
late final dc.dynamic setval$1;
if((f$1 is dc.Function)){
setval$1=(f$1 as dc.Function)();
}else if((f$1 is lcoc_core.IFn$iface)){
setval$1=((f$1 as lcoc_core.IFn$iface).$_invoke$0());
}else{
setval$1=(lcoc_core.IFn.extensions(f$1, ).$_invoke$0(f$1, ));
}
v$1.value=setval$1;
return setval$1;
}, ));
(fl$1[1]=(){
final dc.dynamic arg$1=lcoc_core.deref(v$1, );
if((f$1 is dc.Function)){
return (f$1 as dc.Function)(arg$1, );
}
if((f$1 is lcoc_core.IFn$iface)){
return ((f$1 as lcoc_core.IFn$iface).$_invoke$1(arg$1, ));
}
return (lcoc_core.IFn.extensions(f$1, ).$_invoke$1(f$1, arg$1, ));
});
return lcoc_core.PersistentVector(null, 2, 5, arg$2, fl$1, -1, );
}

// END fixture-callbacks

// BEGIN function?
dc.dynamic function$QMARK_(dc.dynamic env$1, dc.dynamic sym$1, ){
final dc.bool and$6836_$AUTO_$1=lcoc_core.symbol$QMARK_(sym$1, );
if(and$6836_$AUTO_$1){
final dc.dynamic some$6849_$AUTO_$1=lcoc_test.resolve_symbol(env$1, sym$1, );
if((null == some$6849_$AUTO_$1)){
return null;
}
final dc.dynamic test$1=(const lcoc_core.Keyword(null, "macro", 2712250679, ).$_invoke$1((const lcoc_core.Keyword(null, "meta", 569132720, ).$_invoke$1(some$6849_$AUTO_$1, )), ));
if(((false != test$1) && (null != test$1))){
return false;
}
return true;
}
return and$6836_$AUTO_$1;
}

// END function?

// BEGIN ifn_$is__M__18695hm$1
class ifn_$is__M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuXX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_$is__M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_test.ifn_$is__M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$3(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic form$1, ){
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "is", )), )), (lcoc_core.list.$_invoke$1(form$1, )), (lcoc_core.list.$_invoke$1(null, )), ));
if((o6974$1 is lcoc_core.ISeqable$iface)){
return ((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}

dc.dynamic $_invoke$4(dc.dynamic $AMPERSAND_form$2, dc.dynamic $AMPERSAND_env$2, dc.dynamic form$2, dc.dynamic msg$1, ){
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "r__9174__auto__", )), ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "result", )), ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "try", )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1(lcoc_test.assert_expr($AMPERSAND_env$2, msg$1, form$2, ), ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "catch", )), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart:core", "Object", )), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "t__9175__auto__", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "st__9176__auto__", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$6((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "type", 3318123983, ), )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "error", 465527971, ), )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "exception", 2303443619, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "t__9175__auto__", )), )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "stacktrace", 1805465879, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "st__9176__auto__", )), )), ));
late final dc.dynamic $if_$1;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$1, ));
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$5(arg$4, arg$3, arg$2, arg$1, $2, ));
late final dc.dynamic $if_$2;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$3(arg$6, arg$5, $3, ));
late final dc.dynamic $if_$3;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$2(arg$7, $4, ));
late final dc.dynamic $if_$4;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$2(arg$8, $5, ));
late final dc.dynamic $if_$5;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $6=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$5, ));
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($6, ));
final dc.dynamic arg$11=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:t_test", "expect", )), ));
final dc.dynamic arg$10=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "r__9174__auto__", )), ));
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "cljd-test-matcher", )), ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "quote", )), )), (lcoc_core.list.$_invoke$1(form$2, )), ));
late final dc.dynamic $if_$6;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($if_$6, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$2(arg$9, $7, ));
late final dc.dynamic $if_$7;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $8=(lcoc_core.list.$_invoke$1($if_$7, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$3(arg$11, arg$10, $8, ));
late final dc.dynamic $if_$8;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($if_$8, ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$3(arg$12, $10, $9, ));
if((o6974$10 is lcoc_core.ISeqable$iface)){
return ((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_$is__M__18695hm$1

// BEGIN ifn_are_M__18695hm$1
class ifn_are_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_are_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_test.ifn_are_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic argv$1, dc.dynamic expr$1, dc.dynamic args$1, ){
late final dc.dynamic $if_$1;
if((argv$1 is lcoc_core.ISeqable$iface)){
$if_$1=((argv$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(argv$1, ) as lcoc_core.ISeqable$ext).$_seq$0(argv$1, ));
}
late final dc.bool and$6836_$AUTO_$1;
if(((false != $if_$1) && (null != $if_$1))){
and$6836_$AUTO_$1=false;
}else{
and$6836_$AUTO_$1=true;
}
late final dc.bool or$6718_$AUTO_$1;
if(and$6836_$AUTO_$1){
late final dc.dynamic $if_$2;
if((args$1 is lcoc_core.ISeqable$iface)){
$if_$2=((args$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(args$1, ) as lcoc_core.ISeqable$ext).$_seq$0(args$1, ));
}
if(((false != $if_$2) && (null != $if_$2))){
or$6718_$AUTO_$1=false;
}else{
or$6718_$AUTO_$1=true;
}
}else{
or$6718_$AUTO_$1=and$6836_$AUTO_$1;
}
late final dc.bool $if_$3;
if(or$6718_$AUTO_$1){
$if_$3=or$6718_$AUTO_$1;
}else{
late final dc.int cast$1;
if((argv$1 is lcoc_core.ICounted$iface)){
cast$1=(((argv$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(argv$1, ) as lcoc_core.ICounted$ext).$_count$0(argv$1, )) as dc.int);
}
final dc.bool and$6836_$AUTO_$2=(0 < cast$1);
if(and$6836_$AUTO_$2){
late final dc.int cast$2;
if((args$1 is lcoc_core.ICounted$iface)){
cast$2=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$2=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.int);
}
final dc.bool and$6836_$AUTO_$3=(0 < cast$2);
if(and$6836_$AUTO_$3){
late final dc.num cast$3;
if((args$1 is lcoc_core.ICounted$iface)){
cast$3=(((args$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.num);
}else{
cast$3=(((lcoc_core.ICounted.extensions(args$1, ) as lcoc_core.ICounted$ext).$_count$0(args$1, )) as dc.num);
}
late final dc.num cast$4;
if((argv$1 is lcoc_core.ICounted$iface)){
cast$4=(((argv$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.num);
}else{
cast$4=(((lcoc_core.ICounted.extensions(argv$1, ) as lcoc_core.ICounted$ext).$_count$0(argv$1, )) as dc.num);
}
final dc.num $1=(cast$3 % cast$4);
$if_$3=(0 == $1);
}else{
$if_$3=and$6836_$AUTO_$3;
}
}else{
$if_$3=and$6836_$AUTO_$2;
}
}
if($if_$3){
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.template", "do-template", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1(argv$1, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "is", )), )), (lcoc_core.list.$_invoke$1(expr$1, )), ));
late final dc.dynamic $if_$4;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$4(arg$2, arg$1, $2, args$1, ));
if((o6974$4 is lcoc_core.ISeqable$iface)){
return ((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
throw lcoc_core.argument_error("The number of args doesn't match are's argv.", );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_are_M__18695hm$1

// BEGIN ifn_deftest_M__18695hm$1
class ifn_deftest_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_deftest_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_test.ifn_deftest_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic test_name$1, dc.dynamic opts$PLUS_body$1, ){
late final dc.dynamic test_name$2;
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, "main", )), test_name$1, ))){
test_name$2=(lcoc_core.vary_meta.$_invoke$4(test_name$1, lcoc_core.assoc, const lcoc_core.Keyword("dart", "name", 1786841347, ), (lcoc_core.symbol.$_invoke$2(null, "main\$reserved", )), ));
}else{
test_name$2=test_name$1;
}
final dc.dynamic opts$1=(lcoc_core.take_while.$_invoke$2((dc.dynamic p$9203_$1, ){
final dc.dynamic k$1=(lcoc_core.nth.$_invoke$3(p$9203_$1, 0, null, ));
return lcoc_core.keyword$QMARK_(k$1, );
}, (lcoc_core.partition.$_invoke$2(2, opts$PLUS_body$1, )), ));
late final dc.int cast$1;
if((opts$1 is lcoc_core.ICounted$iface)){
cast$1=(((opts$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(opts$1, ) as lcoc_core.ICounted$ext).$_count$0(opts$1, )) as dc.int);
}
final dc.int $1=(2 * cast$1);
final dc.dynamic body$1=(lcoc_core.drop.$_invoke$2($1, opts$PLUS_body$1, ));
final dc.dynamic opts$2=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_MAP, (lcoc_core.map.$_invoke$1(lcoc_core.vec, )), opts$1, ));
late final dc.dynamic opts$3;
if(((lcoc_core.ISeq.satisfies(opts$2, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(opts$2, );
if(((false != test$1) && (null != test$1))){
opts$3=lcoc_core.seq_to_map_for_destructuring(opts$2, );
}else{
late final dc.dynamic $if_$1;
if((opts$2 is lcoc_core.ISeqable$iface)){
$if_$1=((opts$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(opts$2, ) as lcoc_core.ISeqable$ext).$_seq$0(opts$2, ));
}
if(((false != $if_$1) && (null != $if_$1))){
opts$3=lcoc_core.first(opts$2, );
}else{
opts$3=lcoc_core.$_EMPTY_MAP;
}
}
}else{
opts$3=opts$2;
}
late final dc.dynamic tags$1;
if((opts$3 is lcoc_core.ILookup$iface)){
tags$1=((opts$3 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "tags", 676314338, ), ));
}else{
tags$1=((lcoc_core.ILookup.extensions(opts$3, ) as lcoc_core.ILookup$ext).$_lookup$1(opts$3, const lcoc_core.Keyword(null, "tags", 676314338, ), ));
}
final dc.dynamic arg$2=(lcoc_core.symbol.$_invoke$2(null, "dart", ));
final dc.dynamic arg$1=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.map.$_invoke$1(lcoc_core.name, )), tags$1, ));
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "tag", 2780644040, ), ));
(fl$1[1]=(lcoc_core.symbol.$_invoke$2("dart:core", "String", )));
final dc.dynamic $2=lcoc_core.with_meta(arg$1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 256, 256, fl$1, ), -1, ), );
final dc.dynamic dart_tags$1=lcoc_core.tagged_literal(arg$2, $2, );
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2("\$lib:t_test", "test", )), ));
(fl$2[1]=lcoc_core.$_EMPTY_VECTOR);
final dc.dynamic vec$9200_$1=(const lcoc_core.Keyword(null, "runner", 1618262474, ).$_invoke$2(opts$3, lcoc_core.PersistentVector(null, 2, 5, arg$3, fl$2, -1, ), ));
final dc.dynamic runner$1=(lcoc_core.nth.$_invoke$3(vec$9200_$1, 0, null, ));
final dc.dynamic runner_args$1=(lcoc_core.nth.$_invoke$3(vec$9200_$1, 1, null, ));
final dc.dynamic nses$1=(const lcoc_core.Keyword(null, "nses", 3771051699, ).$_invoke$1($AMPERSAND_env$1, ));
late final dc.dynamic nses$2;
if(((lcoc_core.ISeq.satisfies(nses$1, )) as dc.bool)){
final dc.dynamic test$2=lcoc_core.next(nses$1, );
if(((false != test$2) && (null != test$2))){
nses$2=lcoc_core.seq_to_map_for_destructuring(nses$1, );
}else{
late final dc.dynamic $if_$2;
if((nses$1 is lcoc_core.ISeqable$iface)){
$if_$2=((nses$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(nses$1, ) as lcoc_core.ISeqable$ext).$_seq$0(nses$1, ));
}
if(((false != $if_$2) && (null != $if_$2))){
nses$2=lcoc_core.first(nses$1, );
}else{
nses$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
nses$2=nses$1;
}
late final dc.dynamic current_ns$1;
if((nses$2 is lcoc_core.ILookup$iface)){
current_ns$1=((nses$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "current-ns", 1862637831, ), ));
}else{
current_ns$1=((lcoc_core.ILookup.extensions(nses$2, ) as lcoc_core.ILookup$ext).$_lookup$1(nses$2, const lcoc_core.Keyword(null, "current-ns", 1862637831, ), ));
}
late final dc.dynamic the_ns$1;
if((nses$2 is dc.Function)){
the_ns$1=(nses$2 as dc.Function)(current_ns$1, );
}else if((nses$2 is lcoc_core.IFn$iface)){
the_ns$1=((nses$2 as lcoc_core.IFn$iface).$_invoke$1(current_ns$1, ));
}else{
the_ns$1=(lcoc_core.IFn.extensions(nses$2, ).$_invoke$1(nses$2, current_ns$1, ));
}
final dc.dynamic arg$22=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "do", )), ));
final dc.dynamic arg$21=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "defn", )), ));
final dc.dynamic arg$20=(lcoc_core.list.$_invoke$1((lcoc_core.vary_meta.$_invoke$4(test_name$2, lcoc_core.assoc, const lcoc_core.Keyword("cljd.test", "test", 426335942, ), true, )), ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$0());
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $3=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$3, ));
final dc.dynamic $26=(lcoc_core.list.$_invoke$1($3, ));
final dc.dynamic arg$19=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "name__9197__auto__", )), ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((lcoc_core.str.$_invoke$3((const lcoc_core.Keyword(null, "current-ns", 1862637831, ).$_invoke$1((const lcoc_core.Keyword(null, "nses", 3771051699, ).$_invoke$1($AMPERSAND_env$1, )), )), "/", test_name$2, )), ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "thunk__9198__auto__", )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$0());
late final dc.dynamic $if_$4;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $4=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$4, ));
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($4, ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(runner_args$1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", )), )), ));
late final dc.dynamic $if_$5;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $5=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$5, ));
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($5, ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "testing", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "name__9197__auto__", )), )), body$1, ));
late final dc.dynamic $if_$6;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$6, ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$3(arg$4, $7, $6, ));
late final dc.dynamic $if_$7;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $8=(lcoc_core.list.$_invoke$1($if_$7, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$3(arg$5, $9, $8, ));
late final dc.dynamic $if_$8;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($if_$8, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$4(arg$8, arg$7, arg$6, $10, ));
late final dc.dynamic $if_$9;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$9=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$9=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $11=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$9, ));
final dc.dynamic $24=(lcoc_core.list.$_invoke$1($11, ));
final dc.dynamic arg$18=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "if", )), ));
final dc.dynamic arg$17=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", )), ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "thunk__9198__auto__", )), )), ));
late final dc.dynamic $if_$10;
if((o6974$10 is lcoc_core.ISeqable$iface)){
$if_$10=((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$10=((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}
final dc.dynamic $22=(lcoc_core.list.$_invoke$1($if_$10, ));
final dc.dynamic arg$16=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:t_test", "group", )), ));
final dc.dynamic arg$15=(lcoc_core.list.$_invoke$1(null, ));
final dc.dynamic arg$14=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$11=(lcoc_core.concat.$_invoke$0());
late final dc.dynamic $if_$11;
if((o6974$11 is lcoc_core.ISeqable$iface)){
$if_$11=((o6974$11 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$11=((lcoc_core.ISeqable.extensions(o6974$11, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$11, ));
}
final dc.dynamic $12=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$11, ));
final dc.dynamic $19=(lcoc_core.list.$_invoke$1($12, ));
final dc.dynamic arg$13=(lcoc_core.list.$_invoke$1(runner$1, ));
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "name__9197__auto__", )), ));
final dc.dynamic arg$11=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic arg$10=(lcoc_core.list.$_invoke$1(runner_args$1, ));
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "binding", )), ));
final dc.dynamic o6974$12=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "*in-test*", )), )), (lcoc_core.list.$_invoke$1(runner_args$1, )), ));
late final dc.dynamic $if_$12;
if((o6974$12 is lcoc_core.ISeqable$iface)){
$if_$12=((o6974$12 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$12=((lcoc_core.ISeqable.extensions(o6974$12, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$12, ));
}
final dc.dynamic $13=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$12, ));
final dc.dynamic $15=(lcoc_core.list.$_invoke$1($13, ));
final dc.dynamic o6974$13=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "thunk__9198__auto__", )), )), ));
late final dc.dynamic $if_$13;
if((o6974$13 is lcoc_core.ISeqable$iface)){
$if_$13=((o6974$13 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$13=((lcoc_core.ISeqable.extensions(o6974$13, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$13, ));
}
final dc.dynamic $14=(lcoc_core.list.$_invoke$1($if_$13, ));
final dc.dynamic o6974$14=(lcoc_core.concat.$_invoke$3(arg$9, $15, $14, ));
late final dc.dynamic $if_$14;
if((o6974$14 is lcoc_core.ISeqable$iface)){
$if_$14=((o6974$14 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$14=((lcoc_core.ISeqable.extensions(o6974$14, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$14, ));
}
final dc.dynamic $16=(lcoc_core.list.$_invoke$1($if_$14, ));
final dc.dynamic o6974$15=(lcoc_core.concat.$_invoke$3(arg$11, arg$10, $16, ));
late final dc.dynamic $if_$15;
if((o6974$15 is lcoc_core.ISeqable$iface)){
$if_$15=((o6974$15 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$15=((lcoc_core.ISeqable.extensions(o6974$15, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$15, ));
}
final dc.dynamic $17=(lcoc_core.list.$_invoke$1($if_$15, ));
final dc.dynamic o6974$16=(lcoc_core.concat.$_invoke$3(arg$13, arg$12, $17, ));
late final dc.dynamic $if_$16;
if((o6974$16 is lcoc_core.ISeqable$iface)){
$if_$16=((o6974$16 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$16=((lcoc_core.ISeqable.extensions(o6974$16, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$16, ));
}
final dc.dynamic $18=(lcoc_core.list.$_invoke$1($if_$16, ));
final dc.dynamic o6974$17=(lcoc_core.concat.$_invoke$3(arg$14, $19, $18, ));
late final dc.dynamic $if_$17;
if((o6974$17 is lcoc_core.ISeqable$iface)){
$if_$17=((o6974$17 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$17=((lcoc_core.ISeqable.extensions(o6974$17, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$17, ));
}
final dc.dynamic $20=(lcoc_core.list.$_invoke$1($if_$17, ));
final dc.dynamic o6974$18=(lcoc_core.concat.$_invoke$5(arg$16, arg$15, $20, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".tags", )), )), (lcoc_core.list.$_invoke$1(dart_tags$1, )), ));
late final dc.dynamic $if_$18;
if((o6974$18 is lcoc_core.ISeqable$iface)){
$if_$18=((o6974$18 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$18=((lcoc_core.ISeqable.extensions(o6974$18, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$18, ));
}
final dc.dynamic $21=(lcoc_core.list.$_invoke$1($if_$18, ));
final dc.dynamic o6974$19=(lcoc_core.concat.$_invoke$4(arg$18, arg$17, $22, $21, ));
late final dc.dynamic $if_$19;
if((o6974$19 is lcoc_core.ISeqable$iface)){
$if_$19=((o6974$19 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$19=((lcoc_core.ISeqable.extensions(o6974$19, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$19, ));
}
final dc.dynamic $23=(lcoc_core.list.$_invoke$1($if_$19, ));
final dc.dynamic o6974$20=(lcoc_core.concat.$_invoke$3(arg$19, $24, $23, ));
late final dc.dynamic $if_$20;
if((o6974$20 is lcoc_core.ISeqable$iface)){
$if_$20=((o6974$20 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$20=((lcoc_core.ISeqable.extensions(o6974$20, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$20, ));
}
final dc.dynamic $25=(lcoc_core.list.$_invoke$1($if_$20, ));
final dc.dynamic o6974$21=(lcoc_core.concat.$_invoke$4(arg$21, arg$20, $26, $25, ));
late final dc.dynamic $if_$21;
if((o6974$21 is lcoc_core.ISeqable$iface)){
$if_$21=((o6974$21 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$21=((lcoc_core.ISeqable.extensions(o6974$21, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$21, ));
}
final dc.dynamic $28=(lcoc_core.list.$_invoke$1($if_$21, ));
final dc.dynamic o6974$22=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "defrunner-main", )), )), ));
late final dc.dynamic $if_$22;
if((o6974$22 is lcoc_core.ISeqable$iface)){
$if_$22=((o6974$22 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$22=((lcoc_core.ISeqable.extensions(o6974$22, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$22, ));
}
final dc.dynamic $27=(lcoc_core.list.$_invoke$1($if_$22, ));
final dc.dynamic o6974$23=(lcoc_core.concat.$_invoke$3(arg$22, $28, $27, ));
if((o6974$23 is lcoc_core.ISeqable$iface)){
return ((o6974$23 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$23, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$23, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_deftest_M__18695hm$1

// BEGIN ifn_deftest__M__18695hm$1
class ifn_deftest__M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_deftest__M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_test.ifn_deftest__M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic name$1, dc.dynamic body$1, ){
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "deftest", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.vary_meta.$_invoke$4(name$1, lcoc_core.assoc, const lcoc_core.Keyword(null, "private", 3017064578, ), true, )), )), body$1, ));
if((o6974$1 is lcoc_core.ISeqable$iface)){
return ((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_deftest__M__18695hm$1

// BEGIN ifn_testing_M__18695hm$1
class ifn_testing_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_testing_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_test.ifn_testing_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic string$1, dc.dynamic body$1, ){
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "binding", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "conj", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "*groups*", )), )), (lcoc_core.list.$_invoke$1(string$1, )), ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$1, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$2(arg$1, $1, ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $2=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$2, ));
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$3(arg$2, $3, body$1, ));
if((o6974$3 is lcoc_core.ISeqable$iface)){
return ((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_testing_M__18695hm$1

// BEGIN ifn_use_fixtures_M__18695hm$1
class ifn_use_fixtures_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_use_fixtures_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_test.ifn_use_fixtures_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic type$1, dc.dynamic fns$1, ){
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "do", )), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "def", )), ));
late final dc.int hash$1;
if((type$1 is lcoc_core.IHash$iface)){
hash$1=(((type$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$1=(((lcoc_core.IHash.extensions(type$1, ) as lcoc_core.IHash$ext).$_hash$0(type$1, )) as dc.int);
}
late final dc.dynamic $case_$1;
switch(hash$1){
case 3948758237:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "once", 3948758237, ), type$1, ))){
$case_$1=(lcoc_core.symbol.$_invoke$2(null, "cljd-test-once-fixtures", ));
}else{
continue _default$1;
}
break;
case 3851976400:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "each", 3851976400, ), type$1, ))){
$case_$1=(lcoc_core.symbol.$_invoke$2(null, "cljd-test-each-fixtures", ));
}else{
continue _default$1;
}
break;
_default$1: default:
throw lcoc_core.argument_error("First argument to cljs.test/use-fixtures must be :once or :each", );
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($case_$1, ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "map", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "fixture-callbacks", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$1(fns$1, ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$1, ));
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$3(arg$2, arg$1, $2, ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$3(arg$3, $4, $3, ));
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.test", "defrunner-main", )), )), ));
late final dc.dynamic $if_$4;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$3(arg$4, $6, $5, ));
if((o6974$5 is lcoc_core.ISeqable$iface)){
return ((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_use_fixtures_M__18695hm$1

// BEGIN is
lcoc_core.IFn$iface $is_=lcoc_test.ifn_$is__M__18695hm$1(null, );

// END is

// BEGIN register-each-fixtures
dc.dynamic register_each_fixtures(dc.dynamic fixtures_callbacks$1, ){
final dc.Iterator it$7838_$AUTO_$1=(lcoc_core.iterator.$_invoke$1(fixtures_callbacks$1, ));
do {
if((it$7838_$AUTO_$1.moveNext())){
final dc.dynamic vec$9187_$1=it$7838_$AUTO_$1.current;
final dc.dynamic setUp$1=(lcoc_core.nth.$_invoke$3(vec$9187_$1, 0, null, ));
final dc.dynamic tearDown$1=(lcoc_core.nth.$_invoke$3(vec$9187_$1, 1, null, ));
late final da.FutureOr<dc.dynamic> Function() wrapper_f$1;
if((setUp$1 is da.FutureOr<dc.dynamic> Function())){
wrapper_f$1=setUp$1;
}else{
wrapper_f$1=(){
if((setUp$1 is dc.Function)){
return (setUp$1 as dc.Function)();
}
if((setUp$1 is lcoc_core.IFn$iface)){
return ((setUp$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(setUp$1, ).$_invoke$0(setUp$1, ));
};
}
(t_test.setUp(wrapper_f$1, ));
late final da.FutureOr<dc.dynamic> Function() wrapper_f$2;
if((tearDown$1 is da.FutureOr<dc.dynamic> Function())){
wrapper_f$2=tearDown$1;
}else{
wrapper_f$2=(){
if((tearDown$1 is dc.Function)){
return (tearDown$1 as dc.Function)();
}
if((tearDown$1 is lcoc_core.IFn$iface)){
return ((tearDown$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(tearDown$1, ).$_invoke$0(tearDown$1, ));
};
}
(t_test.tearDown(wrapper_f$2, ));
continue;
}else{
}
break;
} while(true);
return null;
}

// END register-each-fixtures

// BEGIN register-fixtures
dc.dynamic register_fixtures(dc.dynamic fixtures_callbacks$1, ){
return lcoc_test.register_once_fixtures(fixtures_callbacks$1, );
}

// END register-fixtures

// BEGIN register-once-fixtures
dc.dynamic register_once_fixtures(dc.dynamic fixtures_callbacks$1, ){
final dc.Iterator it$7838_$AUTO_$1=(lcoc_core.iterator.$_invoke$1(fixtures_callbacks$1, ));
do {
if((it$7838_$AUTO_$1.moveNext())){
final dc.dynamic vec$9181_$1=it$7838_$AUTO_$1.current;
final dc.dynamic setUp$1=(lcoc_core.nth.$_invoke$3(vec$9181_$1, 0, null, ));
final dc.dynamic tearDown$1=(lcoc_core.nth.$_invoke$3(vec$9181_$1, 1, null, ));
late final da.FutureOr<dc.dynamic> Function() wrapper_f$1;
if((setUp$1 is da.FutureOr<dc.dynamic> Function())){
wrapper_f$1=setUp$1;
}else{
wrapper_f$1=(){
if((setUp$1 is dc.Function)){
return (setUp$1 as dc.Function)();
}
if((setUp$1 is lcoc_core.IFn$iface)){
return ((setUp$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(setUp$1, ).$_invoke$0(setUp$1, ));
};
}
(t_test.setUpAll(wrapper_f$1, ));
late final da.FutureOr<dc.dynamic> Function() wrapper_f$2;
if((tearDown$1 is da.FutureOr<dc.dynamic> Function())){
wrapper_f$2=tearDown$1;
}else{
wrapper_f$2=(){
if((tearDown$1 is dc.Function)){
return (tearDown$1 as dc.Function)();
}
if((tearDown$1 is lcoc_core.IFn$iface)){
return ((tearDown$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(tearDown$1, ).$_invoke$0(tearDown$1, ));
};
}
(t_test.tearDownAll(wrapper_f$2, ));
continue;
}else{
}
break;
} while(true);
return null;
}

// END register-once-fixtures

// BEGIN reify_cljd_test_matcher_M__1fzc03$1
class reify_cljd_test_matcher_M__1fzc03$1 extends t_test.Matcher implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface {
final meta$1;
final _0;

reify_cljd_test_matcher_M__1fzc03$1(this.meta$1, this._0, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_test.reify_cljd_test_matcher_M__1fzc03$1(m$2647_$AUTO_$1, _0, );
}

t_test.Description describe(t_test.Description description$1, ){
(description$1.add((lcoc_core.pr_str.$_invoke$1(_0, )), ));
return description$1;
}

dc.bool matches(dc.dynamic r$1, dc.Map match_state$1, ){
final dc.dynamic some$6849_$AUTO_$1=(r$1 as lcoc_test.Result).m;
if((null == some$6849_$AUTO_$1)){
return true;
}
(t_test.addStateInfo(match_state$1, (some$6849_$AUTO_$1 as dc.Map<dc.dynamic, dc.dynamic>), ));
return false;
}

t_test.Description describeMismatch(dc.dynamic r$2, t_test.Description mismatch_description$1, dc.Map match_state$2, dc.bool verbose$1, ){
final dc.dynamic test$1=(const lcoc_core.Keyword(null, "type", 3318123983, ).$_invoke$1(match_state$2, ));
if(((false != test$1) && (null != test$1))){
final dc.StringBuffer s$7932_$AUTO_$1=dc.StringBuffer();
dc.dynamic maybe_f$1(){
final dc.dynamic temp$6864_$AUTO_$1=(const lcoc_core.Keyword(null, "message", 1042898137, ).$_invoke$1(match_state$2, ));
if(((false != temp$6864_$AUTO_$1) && (null != temp$6864_$AUTO_$1))){
(lcoc_core.println.$_invoke$1(temp$6864_$AUTO_$1, ));
}else{
}
final dc.dynamic test$6640_$AUTO_$1=(const lcoc_core.Keyword(null, "type", 3318123983, ).$_invoke$1(match_state$2, ));
late final dc.int hash$1;
if((test$6640_$AUTO_$1 is lcoc_core.IHash$iface)){
hash$1=(((test$6640_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$1=(((lcoc_core.IHash.extensions(test$6640_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(test$6640_$AUTO_$1, )) as dc.int);
}
switch(hash$1){
case 4066245304:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "fail", 4066245304, ), test$6640_$AUTO_$1, ))){
}else{
continue _default$1;
}
break;
case 465527971:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "error", 465527971, ), test$6640_$AUTO_$1, ))){
(lcoc_core.prn.$_invoke$1((const lcoc_core.Keyword(null, "exception", 2303443619, ).$_invoke$1(match_state$2, )), ));
(lcoc_core.prn.$_invoke$1((const lcoc_core.Keyword(null, "stacktrace", 1805465879, ).$_invoke$1(match_state$2, )), ));
}else{
continue _default$1;
}
break;
_default$1: default:
throw dc.ArgumentError((lcoc_core.str.$_invoke$2("No matching clause: ", (lcoc_core.pr_str.$_invoke$1(test$6640_$AUTO_$1, )), )), );
}
final dc.dynamic o6974$1=lcoc_test.$STAR_groups$STAR_;
late final dc.dynamic some$6849_$AUTO_$2;
if((o6974$1 is lcoc_core.ISeqable$iface)){
some$6849_$AUTO_$2=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
some$6849_$AUTO_$2=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
if((null == some$6849_$AUTO_$2)){
}else{
late final dc.dynamic seq$9170_$1;
if((some$6849_$AUTO_$2 is lcoc_core.ISeqable$iface)){
seq$9170_$1=((some$6849_$AUTO_$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9170_$1=((lcoc_core.ISeqable.extensions(some$6849_$AUTO_$2, ) as lcoc_core.ISeqable$ext).$_seq$0(some$6849_$AUTO_$2, ));
}
final dc.dynamic first$9171_$1=lcoc_core.first(seq$9170_$1, );
final dc.dynamic seq$9170_$2=lcoc_core.next(seq$9170_$1, );
(lcoc_core.print.$_invoke$1("occured in: ", ));
if(((false != seq$9170_$2) && (null != seq$9170_$2))){
(lcoc_core.newline());
}else{
}
(lcoc_core.println.$_invoke$1(first$9171_$1, ));
final dc.Iterator it$7838_$AUTO_$1=(lcoc_core.iterator.$_invoke$1(seq$9170_$2, ));
do {
if((it$7838_$AUTO_$1.moveNext())){
final dc.dynamic g$1=it$7838_$AUTO_$1.current;
(lcoc_core.println.$_invoke$1(g$1, ));
continue;
}else{
}
break;
} while(true);
}
return (s$7932_$AUTO_$1.toString());
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
final dc.dynamic k$7857_$AUTO_$1=(lcoc_core.symbol.$_invoke$2("cljd.core", "*out*", ));
late final dc.int cast$1;
if((k$7857_$AUTO_$1 is lcoc_core.IHash$iface)){
cast$1=(((k$7857_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$1, )) as dc.int);
}
final lcoc_core.BitmapNode $1=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$1, k$7857_$AUTO_$1, lcoc_core.Volatile(s$7932_$AUTO_$1, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $1, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $1, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $1, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
final dc.String cast$2=(da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ) as dc.String);
(mismatch_description$1.add(cast$2, ));
}else{
}
return mismatch_description$1;
}
}

// END reify_cljd_test_matcher_M__1fzc03$1

// BEGIN resolve-symbol
dc.dynamic resolve_symbol(dc.dynamic env$2, dc.dynamic sym$2, ){
dc.dynamic env$1=env$2;
dc.dynamic sym$1=sym$2;
do {
final dc.dynamic nses$1=(const lcoc_core.Keyword(null, "nses", 3771051699, ).$_invoke$1(env$1, ));
late final dc.dynamic nses$2;
if(((lcoc_core.ISeq.satisfies(nses$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(nses$1, );
if(((false != test$1) && (null != test$1))){
nses$2=lcoc_core.seq_to_map_for_destructuring(nses$1, );
}else{
late final dc.dynamic $if_$1;
if((nses$1 is lcoc_core.ISeqable$iface)){
$if_$1=((nses$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(nses$1, ) as lcoc_core.ISeqable$ext).$_seq$0(nses$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
nses$2=lcoc_core.first(nses$1, );
}else{
nses$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
nses$2=nses$1;
}
late final dc.dynamic libs$1;
if((nses$2 is lcoc_core.ILookup$iface)){
libs$1=((nses$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "libs", 2518896040, ), ));
}else{
libs$1=((lcoc_core.ILookup.extensions(nses$2, ) as lcoc_core.ILookup$ext).$_lookup$1(nses$2, const lcoc_core.Keyword(null, "libs", 2518896040, ), ));
}
final dc.dynamic arg$1=(const lcoc_core.Keyword(null, "current-ns", 1862637831, ).$_invoke$1(nses$2, ));
late final dc.dynamic current_ns$1;
if((nses$2 is dc.Function)){
current_ns$1=(nses$2 as dc.Function)(arg$1, );
}else if((nses$2 is lcoc_core.IFn$iface)){
current_ns$1=((nses$2 as lcoc_core.IFn$iface).$_invoke$1(arg$1, ));
}else{
current_ns$1=(lcoc_core.IFn.extensions(nses$2, ).$_invoke$1(nses$2, arg$1, ));
}
late final dc.dynamic current_ns$2;
if(((lcoc_core.ISeq.satisfies(current_ns$1, )) as dc.bool)){
final dc.dynamic test$2=lcoc_core.next(current_ns$1, );
if(((false != test$2) && (null != test$2))){
current_ns$2=lcoc_core.seq_to_map_for_destructuring(current_ns$1, );
}else{
late final dc.dynamic $if_$2;
if((current_ns$1 is lcoc_core.ISeqable$iface)){
$if_$2=((current_ns$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(current_ns$1, ) as lcoc_core.ISeqable$ext).$_seq$0(current_ns$1, ));
}
if(((false != $if_$2) && (null != $if_$2))){
current_ns$2=lcoc_core.first(current_ns$1, );
}else{
current_ns$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
current_ns$2=current_ns$1;
}
late final dc.dynamic mappings$1;
if((current_ns$2 is lcoc_core.ILookup$iface)){
mappings$1=((current_ns$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "mappings", 3822896347, ), ));
}else{
mappings$1=((lcoc_core.ILookup.extensions(current_ns$2, ) as lcoc_core.ILookup$ext).$_lookup$1(current_ns$2, const lcoc_core.Keyword(null, "mappings", 3822896347, ), ));
}
late final dc.dynamic aliases$1;
if((current_ns$2 is lcoc_core.ILookup$iface)){
aliases$1=((current_ns$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "aliases", 1919774076, ), ));
}else{
aliases$1=((lcoc_core.ILookup.extensions(current_ns$2, ) as lcoc_core.ILookup$ext).$_lookup$1(current_ns$2, const lcoc_core.Keyword(null, "aliases", 1919774076, ), ));
}
late final dc.dynamic $if_$3;
if((env$1 is dc.Function)){
$if_$3=(env$1 as dc.Function)(sym$1, );
}else if((env$1 is lcoc_core.IFn$iface)){
$if_$3=((env$1 as lcoc_core.IFn$iface).$_invoke$1(sym$1, ));
}else{
$if_$3=(lcoc_core.IFn.extensions(env$1, ).$_invoke$1(env$1, sym$1, ));
}
if(((false != $if_$3) && (null != $if_$3))){
return null;
}
late final dc.dynamic or$6718_$AUTO_$1;
if((current_ns$2 is dc.Function)){
or$6718_$AUTO_$1=(current_ns$2 as dc.Function)(sym$1, );
}else if((current_ns$2 is lcoc_core.IFn$iface)){
or$6718_$AUTO_$1=((current_ns$2 as lcoc_core.IFn$iface).$_invoke$1(sym$1, ));
}else{
or$6718_$AUTO_$1=(lcoc_core.IFn.extensions(current_ns$2, ).$_invoke$1(current_ns$2, sym$1, ));
}
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
return or$6718_$AUTO_$1;
}
late final dc.dynamic some$6849_$AUTO_$1;
if((mappings$1 is dc.Function)){
some$6849_$AUTO_$1=(mappings$1 as dc.Function)(sym$1, );
}else if((mappings$1 is lcoc_core.IFn$iface)){
some$6849_$AUTO_$1=((mappings$1 as lcoc_core.IFn$iface).$_invoke$1(sym$1, ));
}else{
some$6849_$AUTO_$1=(lcoc_core.IFn.extensions(mappings$1, ).$_invoke$1(mappings$1, sym$1, ));
}
if((null == some$6849_$AUTO_$1)){
late final dc.String? sym_ns$1;
if((sym$1 is lcoc_core.INamed$iface)){
sym_ns$1=(((sym$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
sym_ns$1=(((lcoc_core.INamed.extensions(sym$1, ) as lcoc_core.INamed$ext).$_namespace$0(sym$1, )) as dc.String?);
}
late final dc.String? lib_ns$1;
if((lcoc_core.$EQ_.$_invoke$2("clojure.core", sym_ns$1, ))){
lib_ns$1="cljd.core";
}else{
late final dc.dynamic some_$GT_$7772_$AUTO_$1;
if((aliases$1 is lcoc_core.ILookup$iface)){
some_$GT_$7772_$AUTO_$1=((aliases$1 as lcoc_core.ILookup$iface).$_lookup$1(sym_ns$1, ));
}else{
some_$GT_$7772_$AUTO_$1=((lcoc_core.ILookup.extensions(aliases$1, ) as lcoc_core.ILookup$ext).$_lookup$1(aliases$1, sym_ns$1, ));
}
late final dc.dynamic some_$GT_$7772_$AUTO_$2;
if((null == some_$GT_$7772_$AUTO_$1)){
some_$GT_$7772_$AUTO_$2=null;
}else if((libs$1 is dc.Function)){
some_$GT_$7772_$AUTO_$2=(libs$1 as dc.Function)(some_$GT_$7772_$AUTO_$1, );
}else if((libs$1 is lcoc_core.IFn$iface)){
some_$GT_$7772_$AUTO_$2=((libs$1 as lcoc_core.IFn$iface).$_invoke$1(some_$GT_$7772_$AUTO_$1, ));
}else{
some_$GT_$7772_$AUTO_$2=(lcoc_core.IFn.extensions(libs$1, ).$_invoke$1(libs$1, some_$GT_$7772_$AUTO_$1, ));
}
late final dc.dynamic some_$GT_$7772_$AUTO_$3;
if((null == some_$GT_$7772_$AUTO_$2)){
some_$GT_$7772_$AUTO_$3=null;
}else{
some_$GT_$7772_$AUTO_$3=(const lcoc_core.Keyword(null, "ns", 1494845879, ).$_invoke$1(some_$GT_$7772_$AUTO_$2, ));
}
if((null == some_$GT_$7772_$AUTO_$3)){
lib_ns$1=null;
}else{
lib_ns$1=lcoc_core.name(some_$GT_$7772_$AUTO_$3, );
}
}
late final dc.bool? $if_$4;
if((null == lib_ns$1)){
$if_$4=null;
}else{
$if_$4=(lcoc_core.not$EQ_.$_invoke$2(lib_ns$1, sym_ns$1, ));
}
if(((false != $if_$4) && (null != $if_$4))){
sym$1=(lcoc_core.symbol.$_invoke$2(lib_ns$1, lcoc_core.name(sym$1, ), ));
continue;
}
late final dc.dynamic some_$GT_$7772_$AUTO_$6;
if((null == sym_ns$1)){
some_$GT_$7772_$AUTO_$6=null;
}else{
some_$GT_$7772_$AUTO_$6=(lcoc_core.symbol.$_invoke$1(sym_ns$1, ));
}
late final dc.dynamic some_$GT_$7772_$AUTO_$7;
if((null == some_$GT_$7772_$AUTO_$6)){
some_$GT_$7772_$AUTO_$7=null;
}else if((nses$2 is dc.Function)){
some_$GT_$7772_$AUTO_$7=(nses$2 as dc.Function)(some_$GT_$7772_$AUTO_$6, );
}else if((nses$2 is lcoc_core.IFn$iface)){
some_$GT_$7772_$AUTO_$7=((nses$2 as lcoc_core.IFn$iface).$_invoke$1(some_$GT_$7772_$AUTO_$6, ));
}else{
some_$GT_$7772_$AUTO_$7=(lcoc_core.IFn.extensions(nses$2, ).$_invoke$1(nses$2, some_$GT_$7772_$AUTO_$6, ));
}
if((null == some_$GT_$7772_$AUTO_$7)){
return null;
}
final dc.dynamic k7145$5=(lcoc_core.symbol.$_invoke$1(lcoc_core.name(sym$1, ), ));
if((some_$GT_$7772_$AUTO_$7 is lcoc_core.ILookup$iface)){
return ((some_$GT_$7772_$AUTO_$7 as lcoc_core.ILookup$iface).$_lookup$1(k7145$5, ));
}
return ((lcoc_core.ILookup.extensions(some_$GT_$7772_$AUTO_$7, ) as lcoc_core.ILookup$ext).$_lookup$1(some_$GT_$7772_$AUTO_$7, k7145$5, ));
}
sym$1=some$6849_$AUTO_$1;
continue;
} while(true);
}

// END resolve-symbol

// BEGIN result
dc.dynamic result(dc.dynamic m$1, ){
final dc.dynamic some$6849_$AUTO_$1=(const lcoc_core.Keyword(null, "exception", 2303443619, ).$_invoke$1(m$1, ));
late final dc.String $if_$1;
if((null == some$6849_$AUTO_$1)){
$if_$1=(lcoc_core.pr_str.$_invoke$1((const lcoc_core.Keyword(null, "actual", 852479220, ).$_invoke$1(m$1, )), ));
}else{
$if_$1=(lcoc_core.str.$_invoke$2("has thrown ", some$6849_$AUTO_$1, ));
}
return lcoc_test.Result(m$1, $if_$1, );
}

// END result

// BEGIN testing
lcoc_core.IFn$iface testing=lcoc_test.ifn_testing_M__18695hm$1(null, );

// END testing

// BEGIN use-fixtures
lcoc_core.IFn$iface use_fixtures=lcoc_test.ifn_use_fixtures_M__18695hm$1(null, );

// END use-fixtures
