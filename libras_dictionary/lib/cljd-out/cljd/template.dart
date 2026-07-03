// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "template.dart" as lcoc_template;
import "core.dart" as lcoc_core;
import "walk.dart" as lcoc_walk;
import "../../../test/cljd-out/libras-dictionary/api-test_test.dart" as lcolda_test;

// BEGIN apply-template
dc.dynamic apply_template(dc.dynamic argv$1, dc.dynamic expr$1, dc.dynamic values$1, ){
assert((){
late final dc.bool $if_$1;
if(lcoc_core.vector$QMARK_(argv$1, )){
$if_$1=true;
}else{
$if_$1=false;
}
return $if_$1;
}(), (){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "vector?", )), ));
(fl$1[1]=(lcoc_core.symbol.$_invoke$2(null, "argv", )));
final lcoc_core.PersistentList $1=lcoc_core.$_list_lit(fl$1, );
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$2[1]=45);
(fl$2[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$2[3]=25);
(fl$2[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$2[5]=45);
(fl$2[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$2[7]=11);
final dc.dynamic $2=lcoc_core.with_meta($1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$2, ), -1, ), );
final dc.String $3=(lcoc_core.pr_str.$_invoke$1($2, ));
final dc.String $4=(lcoc_core.str.$_invoke$2("Assert failed: ", $3, ));
return $4;
}()); // assert

assert((){
late final dc.bool $if_$2;
if(lcoc_core.every$QMARK_(lcoc_core.symbol$QMARK_, argv$1, )){
$if_$2=true;
}else{
$if_$2=false;
}
return $if_$2;
}(), (){
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "every?", )), ));
(fl$3[1]=(lcoc_core.symbol.$_invoke$2(null, "symbol?", )));
(fl$3[2]=(lcoc_core.symbol.$_invoke$2(null, "argv", )));
final lcoc_core.PersistentList $5=lcoc_core.$_list_lit(fl$3, );
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$4[1]=46);
(fl$4[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$4[3]=32);
(fl$4[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$4[5]=46);
(fl$4[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$4[7]=11);
final dc.dynamic $6=lcoc_core.with_meta($5, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$4, ), -1, ), );
final dc.String $7=(lcoc_core.pr_str.$_invoke$1($6, ));
final dc.String $8=(lcoc_core.str.$_invoke$2("Assert failed: ", $7, ));
return $8;
}()); // assert

return lcoc_walk.postwalk_replace(lcoc_core.zipmap(argv$1, values$1, ), expr$1, );
}

// END apply-template

// BEGIN do-template
lcoc_core.IFn$iface do_template=lcoc_template.ifn_do_template_M__18695hm$1(null, );

// END do-template

// BEGIN ifn_do_template_M__18695hm$1
class ifn_do_template_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_do_template_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_template.ifn_do_template_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic argv$1, dc.dynamic expr$1, dc.dynamic values$1, ){
late final dc.int c$1;
if((argv$1 is lcoc_core.ICounted$iface)){
c$1=(((argv$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
c$1=(((lcoc_core.ICounted.extensions(argv$1, ) as lcoc_core.ICounted$ext).$_count$0(argv$1, )) as dc.int);
}
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "do", )), )), (lcoc_core.map.$_invoke$2((dc.dynamic a$1, ){
return lcoc_template.apply_template(argv$1, expr$1, a$1, );
}, (lcoc_core.partition.$_invoke$2(c$1, values$1, )), )), ));
if((o6974$1 is lcoc_core.ISeqable$iface)){
return ((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_do_template_M__18695hm$1
