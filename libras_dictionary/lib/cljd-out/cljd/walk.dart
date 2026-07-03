// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "walk.dart" as lcoc_walk;
import "core.dart" as lcoc_core;
import "../../../test/cljd-out/libras-dictionary/api-test_test.dart" as lcolda_test;

// BEGIN keywordize-keys
dc.dynamic keywordize_keys(dc.dynamic m$1, ){
lcoc_core.PersistentVector f$1(dc.dynamic p$9020_$1, ){
final dc.dynamic k$1=(lcoc_core.nth.$_invoke$3(p$9020_$1, 0, null, ));
final dc.dynamic v$1=(lcoc_core.nth.$_invoke$3(p$9020_$1, 1, null, ));
if((k$1 is dc.String)){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, (lcoc_core.keyword.$_invoke$1(k$1, )), ));
(fl$1[1]=v$1);
return lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, );
}
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, k$1, ));
(fl$2[1]=v$1);
return lcoc_core.PersistentVector(null, 2, 5, arg$2, fl$2, -1, );
}
return lcoc_walk.postwalk((dc.dynamic x$1, ){
if(lcoc_core.map$QMARK_(x$1, )){
return (lcoc_core.into.$_invoke$2(lcoc_core.$_EMPTY_MAP, (lcoc_core.map.$_invoke$2(f$1, x$1, )), ));
}
return x$1;
}, m$1, );
}

// END keywordize-keys

// BEGIN postwalk
dc.dynamic postwalk(dc.dynamic f$1, dc.dynamic form$1, ){
return lcoc_walk.walk((lcoc_core.partial.$_invoke$2(lcoc_walk.postwalk, f$1, )), f$1, form$1, );
}

// END postwalk

// BEGIN postwalk-demo
dc.dynamic postwalk_demo(dc.dynamic form$1, ){
return lcoc_walk.postwalk((dc.dynamic x$1, ){
(lcoc_core.print.$_invoke$1("Walked: ", ));
(lcoc_core.prn.$_invoke$1(x$1, ));
return x$1;
}, form$1, );
}

// END postwalk-demo

// BEGIN postwalk-replace
dc.dynamic postwalk_replace(dc.dynamic smap$1, dc.dynamic form$1, ){
return lcoc_walk.postwalk((dc.dynamic x$1, ){
if(lcoc_core.contains$QMARK_(smap$1, x$1, )){
if((smap$1 is dc.Function)){
return (smap$1 as dc.Function)(x$1, );
}
if((smap$1 is lcoc_core.IFn$iface)){
return ((smap$1 as lcoc_core.IFn$iface).$_invoke$1(x$1, ));
}
return (lcoc_core.IFn.extensions(smap$1, ).$_invoke$1(smap$1, x$1, ));
}
return x$1;
}, form$1, );
}

// END postwalk-replace

// BEGIN prewalk
dc.dynamic prewalk(dc.dynamic f$1, dc.dynamic form$1, ){
final dc.dynamic arg$1=(lcoc_core.partial.$_invoke$2(lcoc_walk.prewalk, f$1, ));
late final dc.dynamic $if_$1;
if((f$1 is dc.Function)){
$if_$1=(f$1 as dc.Function)(form$1, );
}else if((f$1 is lcoc_core.IFn$iface)){
$if_$1=((f$1 as lcoc_core.IFn$iface).$_invoke$1(form$1, ));
}else{
$if_$1=(lcoc_core.IFn.extensions(f$1, ).$_invoke$1(f$1, form$1, ));
}
return lcoc_walk.walk(arg$1, lcoc_core.identity, $if_$1, );
}

// END prewalk

// BEGIN prewalk-demo
dc.dynamic prewalk_demo(dc.dynamic form$1, ){
return lcoc_walk.prewalk((dc.dynamic x$1, ){
(lcoc_core.print.$_invoke$1("Walked: ", ));
(lcoc_core.prn.$_invoke$1(x$1, ));
return x$1;
}, form$1, );
}

// END prewalk-demo

// BEGIN prewalk-replace
dc.dynamic prewalk_replace(dc.dynamic smap$1, dc.dynamic form$1, ){
return lcoc_walk.prewalk((dc.dynamic x$1, ){
if(lcoc_core.contains$QMARK_(smap$1, x$1, )){
if((smap$1 is dc.Function)){
return (smap$1 as dc.Function)(x$1, );
}
if((smap$1 is lcoc_core.IFn$iface)){
return ((smap$1 as lcoc_core.IFn$iface).$_invoke$1(x$1, ));
}
return (lcoc_core.IFn.extensions(smap$1, ).$_invoke$1(smap$1, x$1, ));
}
return x$1;
}, form$1, );
}

// END prewalk-replace

// BEGIN stringify-keys
dc.dynamic stringify_keys(dc.dynamic m$1, ){
lcoc_core.PersistentVector f$1(dc.dynamic p$9024_$1, ){
final dc.dynamic k$1=(lcoc_core.nth.$_invoke$3(p$9024_$1, 0, null, ));
final dc.dynamic v$1=(lcoc_core.nth.$_invoke$3(p$9024_$1, 1, null, ));
if(lcoc_core.keyword$QMARK_(k$1, )){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, lcoc_core.name(k$1, ), ));
(fl$1[1]=v$1);
return lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, );
}
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, k$1, ));
(fl$2[1]=v$1);
return lcoc_core.PersistentVector(null, 2, 5, arg$2, fl$2, -1, );
}
return lcoc_walk.postwalk((dc.dynamic x$1, ){
if(lcoc_core.map$QMARK_(x$1, )){
return (lcoc_core.into.$_invoke$2(lcoc_core.$_EMPTY_MAP, (lcoc_core.map.$_invoke$2(f$1, x$1, )), ));
}
return x$1;
}, m$1, );
}

// END stringify-keys

// BEGIN walk
dc.dynamic walk(dc.dynamic inner$1, dc.dynamic outer$1, dc.dynamic form$1, ){
if(lcoc_core.list$QMARK_(form$1, )){
final dc.dynamic arg$1=(lcoc_core.apply.$_invoke$2(lcoc_core.list, (lcoc_core.map.$_invoke$2(inner$1, form$1, )), ));
if((outer$1 is dc.Function)){
return (outer$1 as dc.Function)(arg$1, );
}
if((outer$1 is lcoc_core.IFn$iface)){
return ((outer$1 as lcoc_core.IFn$iface).$_invoke$1(arg$1, ));
}
return (lcoc_core.IFn.extensions(outer$1, ).$_invoke$1(outer$1, arg$1, ));
}
if(lcoc_core.map_entry$QMARK_(form$1, )){
final dc.dynamic arg$2=lcoc_core.key(form$1, );
late final dc.dynamic $if_$2;
if((inner$1 is dc.Function)){
$if_$2=(inner$1 as dc.Function)(arg$2, );
}else if((inner$1 is lcoc_core.IFn$iface)){
$if_$2=((inner$1 as lcoc_core.IFn$iface).$_invoke$1(arg$2, ));
}else{
$if_$2=(lcoc_core.IFn.extensions(inner$1, ).$_invoke$1(inner$1, arg$2, ));
}
final dc.dynamic arg$3=lcoc_core.val(form$1, );
late final dc.dynamic $if_$1;
if((inner$1 is dc.Function)){
$if_$1=(inner$1 as dc.Function)(arg$3, );
}else if((inner$1 is lcoc_core.IFn$iface)){
$if_$1=((inner$1 as lcoc_core.IFn$iface).$_invoke$1(arg$3, ));
}else{
$if_$1=(lcoc_core.IFn.extensions(inner$1, ).$_invoke$1(inner$1, arg$3, ));
}
if((outer$1 is dc.Function)){
return (outer$1 as dc.Function)(dc.MapEntry($if_$2, $if_$1, ), );
}
if((outer$1 is lcoc_core.IFn$iface)){
return ((outer$1 as lcoc_core.IFn$iface).$_invoke$1(dc.MapEntry($if_$2, $if_$1, ), ));
}
return (lcoc_core.IFn.extensions(outer$1, ).$_invoke$1(outer$1, dc.MapEntry($if_$2, $if_$1, ), ));
}
if(((lcoc_core.ISeq.satisfies(form$1, )) as dc.bool)){
final dc.dynamic arg$4=(lcoc_core.doall.$_invoke$1((lcoc_core.map.$_invoke$2(inner$1, form$1, )), ));
if((outer$1 is dc.Function)){
return (outer$1 as dc.Function)(arg$4, );
}
if((outer$1 is lcoc_core.IFn$iface)){
return ((outer$1 as lcoc_core.IFn$iface).$_invoke$1(arg$4, ));
}
return (lcoc_core.IFn.extensions(outer$1, ).$_invoke$1(outer$1, arg$4, ));
}
if(((lcoc_core.IRecord.satisfies(form$1, )) as dc.bool)){
dc.dynamic f7029$1(dc.dynamic r$1, dc.dynamic x$1, ){
late final dc.dynamic o7014$1;
if((inner$1 is dc.Function)){
o7014$1=(inner$1 as dc.Function)(x$1, );
}else if((inner$1 is lcoc_core.IFn$iface)){
o7014$1=((inner$1 as lcoc_core.IFn$iface).$_invoke$1(x$1, ));
}else{
o7014$1=(lcoc_core.IFn.extensions(inner$1, ).$_invoke$1(inner$1, x$1, ));
}
if((r$1 is lcoc_core.ICollection$iface)){
return ((r$1 as lcoc_core.ICollection$iface).$_conj$1(o7014$1, ));
}
return ((lcoc_core.ICollection.extensions(r$1, ) as lcoc_core.ICollection$ext).$_conj$1(r$1, o7014$1, ));
}
late final dc.dynamic $if_$3;
if((form$1 is lcoc_core.IReduce$iface)){
$if_$3=((form$1 as lcoc_core.IReduce$iface).$_reduce$2(f7029$1, form$1, ));
}else{
$if_$3=((lcoc_core.IReduce.extensions(form$1, ) as lcoc_core.IReduce$ext).$_reduce$2(form$1, f7029$1, form$1, ));
}
if((outer$1 is dc.Function)){
return (outer$1 as dc.Function)($if_$3, );
}
if((outer$1 is lcoc_core.IFn$iface)){
return ((outer$1 as lcoc_core.IFn$iface).$_invoke$1($if_$3, ));
}
return (lcoc_core.IFn.extensions(outer$1, ).$_invoke$1(outer$1, $if_$3, ));
}
if(lcoc_core.coll$QMARK_(form$1, )){
final dc.dynamic arg$5=(lcoc_core.into.$_invoke$2(lcoc_core.empty(form$1, ), (lcoc_core.map.$_invoke$2(inner$1, form$1, )), ));
if((outer$1 is dc.Function)){
return (outer$1 as dc.Function)(arg$5, );
}
if((outer$1 is lcoc_core.IFn$iface)){
return ((outer$1 as lcoc_core.IFn$iface).$_invoke$1(arg$5, ));
}
return (lcoc_core.IFn.extensions(outer$1, ).$_invoke$1(outer$1, arg$5, ));
}
if((outer$1 is dc.Function)){
return (outer$1 as dc.Function)(form$1, );
}
if((outer$1 is lcoc_core.IFn$iface)){
return ((outer$1 as lcoc_core.IFn$iface).$_invoke$1(form$1, ));
}
return (lcoc_core.IFn.extensions(outer$1, ).$_invoke$1(outer$1, form$1, ));
}

// END walk
