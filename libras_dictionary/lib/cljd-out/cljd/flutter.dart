// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "package:flutter/src/gestures/hit_test.dart" as fsg_hit_test;
import "core.dart" as lcoc_core;
import "package:flutter/foundation.dart" as f_foundation;
import "dart:ui" as d_ui;
import "dart:async" as da;
import "package:flutter/widgets.dart" as f_widgets;
import "string.dart" as lcoc_string;
import "package:flutter/src/foundation/diagnostics.dart" as fsf_diagnostics;
import "flutter.dart" as lcoc_flutter;
import "package:flutter/rendering.dart" as f_rendering;
import "dart:math" as d_math;
import "package:flutter/material.dart" as f_material;
import "flutter/repl-impl.dart" as lcocfr_impl;

// BEGIN $
dc.dynamic $DOLLAR_(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic expr$1, ){
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "cell", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$0());
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$1, ));
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$3(arg$1, $2, (lcoc_core.list.$_invoke$1(expr$1, )), ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$2(arg$2, $3, ));
if((o6974$3 is lcoc_core.ISeqable$iface)){
return ((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}

// END $

// BEGIN $C$dc$DOT_Future$$lcoc_flutter$DOT_Subscribable$D$$cext
class $C$dc$DOT_Future$$lcoc_flutter$DOT_Subscribable$D$$cext extends dc.Object implements lcoc_flutter.Subscribable$ext {

const $C$dc$DOT_Future$$lcoc_flutter$DOT_Subscribable$D$$cext():super();

dc.dynamic $_subscribe$1(dc.dynamic future$1, dc.dynamic f$3, ){
final dc.Future future$2=(future$1 as dc.Future);
final lcoc_core.Volatile sub$5=lcoc_core.Volatile(true, );
(future$2.then((dc.dynamic p1$9429_$SHARP_$1, ){
final dc.dynamic test$1=lcoc_core.deref(sub$5, );
if(((false != test$1) && (null != test$1))){
if((f$3 is dc.Function)){
return (f$3 as dc.Function)(p1$9429_$SHARP_$1, );
}
if((f$3 is lcoc_core.IFn$iface)){
return ((f$3 as lcoc_core.IFn$iface).$_invoke$1(p1$9429_$SHARP_$1, ));
}
return (lcoc_core.IFn.extensions(f$3, ).$_invoke$1(f$3, p1$9429_$SHARP_$1, ));
}
return null;
}, ));
return sub$5;
}

dc.dynamic $_call_with_immediate_value$2(dc.dynamic future$3, dc.dynamic sub$6, dc.dynamic f$BANG_$5, ){
final dc.Future future$4=(future$3 as dc.Future);
return false;
}

dc.dynamic $_unsubscribe$1(dc.dynamic future$5, dc.dynamic sub$7, ){
final dc.Future future$6=(future$5 as dc.Future);
final lcoc_core.Volatile v$7342_$AUTO_$1=(sub$7 as lcoc_core.Volatile);
const dc.bool setval$1=false;
v$7342_$AUTO_$1.value=setval$1;
return setval$1;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$dc$DOT_Future$$lcoc_flutter$DOT_Subscribable$D$$cext

// BEGIN $C$dc$DOT_Null$$lcoc_flutter$DOT_Subscribable$D$$cext
class $C$dc$DOT_Null$$lcoc_flutter$DOT_Subscribable$D$$cext extends dc.Object implements lcoc_flutter.Subscribable$ext {

const $C$dc$DOT_Null$$lcoc_flutter$DOT_Subscribable$D$$cext():super();

dc.dynamic $_subscribe$1(dc.dynamic n$1, dc.dynamic f$BANG_$1, ){
final dc.Null n$2=null;
return null;
}

dc.dynamic $_call_with_immediate_value$2(dc.dynamic n$3, dc.dynamic sub$1, dc.dynamic f$BANG_$2, ){
final dc.Null n$4=null;
return false;
}

dc.dynamic $_unsubscribe$1(dc.dynamic n$5, dc.dynamic $UNDERSCORE_$1, ){
final dc.Null n$6=null;
return null;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$dc$DOT_Null$$lcoc_flutter$DOT_Subscribable$D$$cext

// BEGIN $C$dc$DOT_Stream$$lcoc_flutter$DOT_Subscribable$D$$cext
class $C$dc$DOT_Stream$$lcoc_flutter$DOT_Subscribable$D$$cext extends dc.Object implements lcoc_flutter.Subscribable$ext {

const $C$dc$DOT_Stream$$lcoc_flutter$DOT_Subscribable$D$$cext():super();

dc.dynamic $_subscribe$1(dc.dynamic s$1, dc.dynamic f$2, ){
final dc.Stream s$2=(s$1 as dc.Stream);
return (s$2.listen((dc.dynamic x$5, ){
if((f$2 is dc.Function)){
((f$2 as dc.Function)(x$5, ));
}else if((f$2 is lcoc_core.IFn$iface)){
((f$2 as lcoc_core.IFn$iface).$_invoke$1(x$5, ));
}else{
(lcoc_core.IFn.extensions(f$2, ).$_invoke$1(f$2, x$5, ));
}
return null;
}, cancelOnError: true, ));
}

dc.dynamic $_call_with_immediate_value$2(dc.dynamic s$3, dc.dynamic sub$3, dc.dynamic f$BANG_$4, ){
final dc.Stream s$4=(s$3 as dc.Stream);
return false;
}

dc.dynamic $_unsubscribe$1(dc.dynamic s$5, dc.dynamic sub$4, ){
final dc.Stream s$6=(s$5 as dc.Stream);
return ((sub$4 as da.StreamSubscription).cancel());
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$dc$DOT_Stream$$lcoc_flutter$DOT_Subscribable$D$$cext

// BEGIN $C$dc$DOT_int$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$dc$DOT_int$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$dc$DOT_int$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$22, ){
final dc.int end$23=(end$22 as dc.int);
return f_widgets.IntTween(end: end$23, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$dc$DOT_int$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_foundation$DOT_Listenable$$lcoc_flutter$DOT_Subscribable$D$$cext
class $C$f_foundation$DOT_Listenable$$lcoc_flutter$DOT_Subscribable$D$$cext extends dc.Object implements lcoc_flutter.Subscribable$ext {

const $C$f_foundation$DOT_Listenable$$lcoc_flutter$DOT_Subscribable$D$$cext():super();

dc.dynamic $_subscribe$1(dc.dynamic l$1, dc.dynamic f$5, ){
final f_foundation.Listenable l$2=(l$1 as f_foundation.Listenable);
final lcoc_core.Volatile vn$1=lcoc_core.Volatile(0, );
dc.dynamic doto$7753_$AUTO_$4(){
final dc.num setval$2=(1 + (vn$1.value as dc.num));
vn$1.value=setval$2;
if((f$5 is dc.Function)){
return (f$5 as dc.Function)(setval$2, );
}
if((f$5 is lcoc_core.IFn$iface)){
return ((f$5 as lcoc_core.IFn$iface).$_invoke$1(setval$2, ));
}
return (lcoc_core.IFn.extensions(f$5, ).$_invoke$1(f$5, setval$2, ));
}
(l$2.addListener(doto$7753_$AUTO_$4, ));
return doto$7753_$AUTO_$4;
}

dc.dynamic $_call_with_immediate_value$2(dc.dynamic l$3, dc.dynamic sub$9, dc.dynamic f$BANG_$7, ){
final f_foundation.Listenable l$4=(l$3 as f_foundation.Listenable);
return false;
}

dc.dynamic $_unsubscribe$1(dc.dynamic l$5, dc.dynamic listener$2, ){
final f_foundation.Listenable l$6=(l$5 as f_foundation.Listenable);
late final void Function() wrapper_f$2;
if((listener$2 is void Function())){
wrapper_f$2=listener$2;
}else{
wrapper_f$2=(){
if((listener$2 is dc.Function)){
return (listener$2 as dc.Function)();
}
if((listener$2 is lcoc_core.IFn$iface)){
return ((listener$2 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(listener$2, ).$_invoke$0(listener$2, ));
};
}
return (l$6.removeListener(wrapper_f$2, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_foundation$DOT_Listenable$$lcoc_flutter$DOT_Subscribable$D$$cext

// BEGIN $C$f_foundation$DOT_ValueListenable$$lcoc_core$DOT_IDeref$D$$cext
class $C$f_foundation$DOT_ValueListenable$$lcoc_core$DOT_IDeref$D$$cext extends dc.Object implements lcoc_core.IDeref$ext {

const $C$f_foundation$DOT_ValueListenable$$lcoc_core$DOT_IDeref$D$$cext():super();

dc.dynamic $_deref$0(dc.dynamic vl$1, ){
final f_foundation.ValueListenable vl$2=(vl$1 as f_foundation.ValueListenable);
return vl$2.value;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_foundation$DOT_ValueListenable$$lcoc_core$DOT_IDeref$D$$cext

// BEGIN $C$f_foundation$DOT_ValueListenable$$lcoc_flutter$DOT_Subscribable$D$$cext
class $C$f_foundation$DOT_ValueListenable$$lcoc_flutter$DOT_Subscribable$D$$cext extends dc.Object implements lcoc_flutter.Subscribable$ext {

const $C$f_foundation$DOT_ValueListenable$$lcoc_flutter$DOT_Subscribable$D$$cext():super();

dc.dynamic $_subscribe$1(dc.dynamic vl$1, dc.dynamic f$4, ){
final f_foundation.ValueListenable vl$2=(vl$1 as f_foundation.ValueListenable);
dc.dynamic doto$7753_$AUTO_$3(){
final dc.dynamic arg$2=vl$2.value;
if((f$4 is dc.Function)){
return (f$4 as dc.Function)(arg$2, );
}
if((f$4 is lcoc_core.IFn$iface)){
return ((f$4 as lcoc_core.IFn$iface).$_invoke$1(arg$2, ));
}
return (lcoc_core.IFn.extensions(f$4, ).$_invoke$1(f$4, arg$2, ));
}
(vl$2.addListener(doto$7753_$AUTO_$3, ));
return doto$7753_$AUTO_$3;
}

dc.dynamic $_call_with_immediate_value$2(dc.dynamic vl$3, dc.dynamic sub$8, dc.dynamic f$BANG_$6, ){
final f_foundation.ValueListenable vl$4=(vl$3 as f_foundation.ValueListenable);
final dc.dynamic arg$3=vl$4.value;
if((f$BANG_$6 is dc.Function)){
((f$BANG_$6 as dc.Function)(arg$3, ));
}else if((f$BANG_$6 is lcoc_core.IFn$iface)){
((f$BANG_$6 as lcoc_core.IFn$iface).$_invoke$1(arg$3, ));
}else{
(lcoc_core.IFn.extensions(f$BANG_$6, ).$_invoke$1(f$BANG_$6, arg$3, ));
}
return true;
}

dc.dynamic $_unsubscribe$1(dc.dynamic vl$5, dc.dynamic listener$1, ){
final f_foundation.ValueListenable vl$6=(vl$5 as f_foundation.ValueListenable);
late final void Function() wrapper_f$1;
if((listener$1 is void Function())){
wrapper_f$1=listener$1;
}else{
wrapper_f$1=(){
if((listener$1 is dc.Function)){
return (listener$1 as dc.Function)();
}
if((listener$1 is lcoc_core.IFn$iface)){
return ((listener$1 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(listener$1, ).$_invoke$0(listener$1, ));
};
}
return (vl$6.removeListener(wrapper_f$1, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_foundation$DOT_ValueListenable$$lcoc_flutter$DOT_Subscribable$D$$cext

// BEGIN $C$f_foundation$DOT_ValueNotifier$$lcoc_core$DOT_IReset$D$$cext
class $C$f_foundation$DOT_ValueNotifier$$lcoc_core$DOT_IReset$D$$cext extends dc.Object implements lcoc_core.IReset$ext {

const $C$f_foundation$DOT_ValueNotifier$$lcoc_core$DOT_IReset$D$$cext():super();

dc.dynamic $_reset$BANG_$1(dc.dynamic vn$1, dc.dynamic new_value$1, ){
final f_foundation.ValueNotifier vn$2=(vn$1 as f_foundation.ValueNotifier);
vn$2.value=new_value$1;
return new_value$1;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_foundation$DOT_ValueNotifier$$lcoc_core$DOT_IReset$D$$cext

// BEGIN $C$f_material$DOT_ShapeBorder$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_material$DOT_ShapeBorder$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_material$DOT_ShapeBorder$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$30, ){
final f_material.ShapeBorder end$31=(end$30 as f_material.ShapeBorder);
return f_material.ShapeBorderTween(end: end$31, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_material$DOT_ShapeBorder$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_material$DOT_ThemeData$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_material$DOT_ThemeData$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_material$DOT_ThemeData$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$36, ){
final f_material.ThemeData end$37=(end$36 as f_material.ThemeData);
return f_material.ThemeDataTween(end: end$37, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_material$DOT_ThemeData$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_Alignment$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_Alignment$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_Alignment$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$4, ){
final f_widgets.Alignment end$5=(end$4 as f_widgets.Alignment);
return f_widgets.AlignmentTween(end: end$5, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_Alignment$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_AlignmentGeometry$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_AlignmentGeometry$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_AlignmentGeometry$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$2, ){
final f_widgets.AlignmentGeometry end$3=(end$2 as f_widgets.AlignmentGeometry);
return f_widgets.AlignmentGeometryTween(end: end$3, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_AlignmentGeometry$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_Border$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_Border$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_Border$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$8, ){
final f_widgets.Border end$9=(end$8 as f_widgets.Border);
return f_widgets.BorderTween(end: end$9, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_Border$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_BorderRadius$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_BorderRadius$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_BorderRadius$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$6, ){
final f_widgets.BorderRadius end$7=(end$6 as f_widgets.BorderRadius);
return f_widgets.BorderRadiusTween(end: end$7, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_BorderRadius$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_BoxConstraints$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_BoxConstraints$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_BoxConstraints$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$10, ){
final f_widgets.BoxConstraints end$11=(end$10 as f_widgets.BoxConstraints);
return f_widgets.BoxConstraintsTween(end: end$11, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_BoxConstraints$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_Color$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_Color$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_Color$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$12, ){
final f_widgets.Color end$13=(end$12 as f_widgets.Color);
return f_widgets.ColorTween(end: end$13, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_Color$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_Decoration$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_Decoration$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_Decoration$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$14, ){
final f_widgets.Decoration end$15=(end$14 as f_widgets.Decoration);
return f_widgets.DecorationTween(end: end$15, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_Decoration$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_EdgeInsets$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_EdgeInsets$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_EdgeInsets$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$18, ){
final f_widgets.EdgeInsets end$19=(end$18 as f_widgets.EdgeInsets);
return f_widgets.EdgeInsetsTween(end: end$19, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_EdgeInsets$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_EdgeInsetsGeometry$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_EdgeInsetsGeometry$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_EdgeInsetsGeometry$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$16, ){
final f_widgets.EdgeInsetsGeometry end$17=(end$16 as f_widgets.EdgeInsetsGeometry);
return f_widgets.EdgeInsetsGeometryTween(end: end$17, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_EdgeInsetsGeometry$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_FractionalOffset$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_FractionalOffset$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_FractionalOffset$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$20, ){
final f_widgets.FractionalOffset end$21=(end$20 as f_widgets.FractionalOffset);
return f_widgets.FractionalOffsetTween(end: end$21, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_FractionalOffset$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_Matrix4$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_Matrix4$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_Matrix4$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$24, ){
final f_widgets.Matrix4 end$25=(end$24 as f_widgets.Matrix4);
return f_widgets.Matrix4Tween(end: end$25, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_Matrix4$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_Rect$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_Rect$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_Rect$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$26, ){
final f_widgets.Rect end$27=(end$26 as f_widgets.Rect);
return f_widgets.RectTween(end: end$27, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_Rect$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_RelativeRect$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_RelativeRect$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_RelativeRect$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$28, ){
final f_widgets.RelativeRect end$29=(end$28 as f_widgets.RelativeRect);
return f_widgets.RelativeRectTween(end: end$29, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_RelativeRect$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_Size$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_Size$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_Size$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$32, ){
final f_widgets.Size end$33=(end$32 as f_widgets.Size);
return f_widgets.SizeTween(end: end$33, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_Size$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$f_widgets$DOT_TextStyle$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$f_widgets$DOT_TextStyle$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$f_widgets$DOT_TextStyle$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$34, ){
final f_widgets.TextStyle end$35=(end$34 as f_widgets.TextStyle);
return f_widgets.TextStyleTween(end: end$35, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$f_widgets$DOT_TextStyle$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$fallback$$lcoc_flutter$DOT_ITweenable$D$$cext
class $C$fallback$$lcoc_flutter$DOT_ITweenable$D$$cext extends dc.Object implements lcoc_flutter.ITweenable$ext {

const $C$fallback$$lcoc_flutter$DOT_ITweenable$D$$cext():super();

dc.dynamic $_tween$0(dc.dynamic end$1, ){
return f_widgets.Tween(end: end$1, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$fallback$$lcoc_flutter$DOT_ITweenable$D$$cext

// BEGIN $C$lcoc_core$DOT_Atom$$lcoc_flutter$DOT_Subscribable$D$$cext
class $C$lcoc_core$DOT_Atom$$lcoc_flutter$DOT_Subscribable$D$$cext extends dc.Object implements lcoc_flutter.Subscribable$ext {

const $C$lcoc_core$DOT_Atom$$lcoc_flutter$DOT_Subscribable$D$$cext():super();

dc.dynamic $_subscribe$1(dc.dynamic a$1, dc.dynamic f$1, ){
final lcoc_core.Atom a$2=(a$1 as lcoc_core.Atom);
dc.dynamic cb$1(dc.dynamic $UNDERSCORE_$2, dc.dynamic $UNDERSCORE_$3, dc.dynamic $UNDERSCORE_$4, dc.dynamic new_state$1, ){
if((f$1 is dc.Function)){
return (f$1 as dc.Function)(new_state$1, );
}
if((f$1 is lcoc_core.IFn$iface)){
return ((f$1 as lcoc_core.IFn$iface).$_invoke$1(new_state$1, ));
}
return (lcoc_core.IFn.extensions(f$1, ).$_invoke$1(f$1, new_state$1, ));
}
if((a$2 is lcoc_core.IWatchable$iface)){
((a$2 as lcoc_core.IWatchable$iface).$_add_watch$2(cb$1, cb$1, ));
}else{
((lcoc_core.IWatchable.extensions(a$2, ) as lcoc_core.IWatchable$ext).$_add_watch$2(a$2, cb$1, cb$1, ));
}
return cb$1;
}

dc.dynamic $_call_with_immediate_value$2(dc.dynamic a$3, dc.dynamic sub$2, dc.dynamic f$BANG_$3, ){
final lcoc_core.Atom a$4=(a$3 as lcoc_core.Atom);
final dc.dynamic arg$1=lcoc_core.deref(a$4, );
if((f$BANG_$3 is dc.Function)){
((f$BANG_$3 as dc.Function)(arg$1, ));
}else if((f$BANG_$3 is lcoc_core.IFn$iface)){
((f$BANG_$3 as lcoc_core.IFn$iface).$_invoke$1(arg$1, ));
}else{
(lcoc_core.IFn.extensions(f$BANG_$3, ).$_invoke$1(f$BANG_$3, arg$1, ));
}
return true;
}

dc.dynamic $_unsubscribe$1(dc.dynamic a$5, dc.dynamic cb$2, ){
final lcoc_core.Atom a$6=(a$5 as lcoc_core.Atom);
if((a$6 is lcoc_core.IWatchable$iface)){
((a$6 as lcoc_core.IWatchable$iface).$_remove_watch$1(cb$2, ));
}else{
((lcoc_core.IWatchable.extensions(a$6, ) as lcoc_core.IWatchable$ext).$_remove_watch$1(a$6, cb$2, ));
}
return a$6;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END $C$lcoc_core$DOT_Atom$$lcoc_flutter$DOT_Subscribable$D$$cext

// BEGIN *-repl-control-*
dc.dynamic $STAR__repl_control_$STAR_$root=null;
dc.dynamic get $STAR__repl_control_$STAR_ => (lcoc_core.get_dynamic_binding((lcoc_core.symbol.$_invoke$2("cljd.flutter", "*-repl-control-*", )), $STAR__repl_control_$STAR_$root, ) as dc.dynamic);
set $STAR__repl_control_$STAR_(dc.dynamic v) => lcoc_core.set_dynamic_binding$BANG_((lcoc_core.symbol.$_invoke$2("cljd.flutter", "*-repl-control-*", )), v, );

// END *-repl-control-*

// BEGIN *cell*
dc.dynamic $STAR_cell$STAR_$root=null;
lcoc_flutter.Cell? get $STAR_cell$STAR_ => (lcoc_core.get_dynamic_binding((lcoc_core.symbol.$_invoke$2("cljd.flutter", "*cell*", )), $STAR_cell$STAR_$root, ) as lcoc_flutter.Cell?);
set $STAR_cell$STAR_(dc.dynamic v) => lcoc_core.set_dynamic_binding$BANG_((lcoc_core.symbol.$_invoke$2("cljd.flutter", "*cell*", )), v, );

// END *cell*

// BEGIN *new-deps*
dc.dynamic $STAR_new_deps$STAR_$root=dc.Map();
dc.Map get $STAR_new_deps$STAR_ => (lcoc_core.get_dynamic_binding((lcoc_core.symbol.$_invoke$2("cljd.flutter", "*new-deps*", )), $STAR_new_deps$STAR_$root, ) as dc.Map);
set $STAR_new_deps$STAR_(dc.dynamic v) => lcoc_core.set_dynamic_binding$BANG_((lcoc_core.symbol.$_invoke$2("cljd.flutter", "*new-deps*", )), v, );

// END *new-deps*

// BEGIN *old-deps*
dc.dynamic $STAR_old_deps$STAR_$root=dc.Map();
dc.Map get $STAR_old_deps$STAR_ => (lcoc_core.get_dynamic_binding((lcoc_core.symbol.$_invoke$2("cljd.flutter", "*old-deps*", )), $STAR_old_deps$STAR_$root, ) as dc.Map);
set $STAR_old_deps$STAR_(dc.dynamic v) => lcoc_core.set_dynamic_binding$BANG_((lcoc_core.symbol.$_invoke$2("cljd.flutter", "*old-deps*", )), v, );

// END *old-deps*

// BEGIN *repls
dc.dynamic $STAR_repls=(lcoc_core.atom.$_invoke$1(lcoc_core.$_EMPTY_MAP, ));

// END *repls

// BEGIN ->Bind
dc.dynamic $_$GT_Bind(dc.dynamic k$1, dc.dynamic bindings$1, dc.dynamic child$1, ){
return lcoc_flutter.Bind(k$1, bindings$1, child$1, );
}

// END ->Bind

// BEGIN ->Cell
dc.dynamic $_$GT_Cell(dc.dynamic f$1, dc.dynamic v$4, dc.dynamic subscribers$1, dc.dynamic refreshing$4, dc.dynamic deps$4, dc.dynamic subs$1, dc.dynamic spare_map$4, ){
return lcoc_flutter.Cell(f$1, v$4, (subscribers$1 as dc.Map), (refreshing$4 as dc.int), (deps$4 as dc.Map), (subs$1 as dc.Map), (spare_map$4 as dc.Map), );
}

// END ->Cell

// BEGIN ->CustomTween
dc.dynamic $_$GT_CustomTween(dc.dynamic f$1, dc.dynamic lerpf$2, ){
return lcoc_flutter.CustomTween(f$1, lerpf$2, );
}

// END ->CustomTween

// BEGIN ->GlobalValueKey
dc.dynamic $_$GT_GlobalValueKey(dc.dynamic value$1, ){
return lcoc_flutter.GlobalValueKey(value$1, );
}

// END ->GlobalValueKey

// BEGIN ->InheritedBindings
dc.dynamic $_$GT_InheritedBindings(dc.dynamic bindings$1, dc.dynamic child$1, ){
return lcoc_flutter.InheritedBindings(bindings$1, child$1, );
}

// END ->InheritedBindings

// BEGIN ->KeepAliveState
dc.dynamic $_$GT_KeepAliveState(dc.dynamic handle$1, ){
return lcoc_flutter.KeepAliveState((handle$1 as f_foundation.ChangeNotifier?), );
}

// END ->KeepAliveState

// BEGIN ->ReplPointWidget
dc.dynamic $_$GT_ReplPointWidget(dc.dynamic source_loc$1, dc.dynamic get_envmap$1, dc.dynamic child$1, ){
return lcoc_flutter.ReplPointWidget(source_loc$1, get_envmap$1, child$1, );
}

// END ->ReplPointWidget

// BEGIN ->ReplState
dc.dynamic $_$GT_ReplState(dc.dynamic m$2, ){
return lcoc_flutter.ReplState(m$2, );
}

// END ->ReplState

// BEGIN ->ResourceState
dc.dynamic $_$GT_ResourceState(dc.dynamic k$1, dc.dynamic resource$1, ){
return lcoc_flutter.ResourceState(k$1, resource$1, );
}

// END ->ResourceState

// BEGIN ->Retriable
dc.dynamic $_$GT_Retriable(dc.dynamic thunk$1, dc.dynamic fut$1, dc.dynamic subscriptions$1, ){
return lcoc_flutter.Retriable(thunk$1, (fut$1 as dc.Future?), (subscriptions$1 as dc.Map), );
}

// END ->Retriable

// BEGIN ->SpyWidget
dc.dynamic $_$GT_SpyWidget(dc.dynamic k$1, dc.dynamic child$1, dc.dynamic f$1, ){
return lcoc_flutter.SpyWidget(k$1, child$1, f$1, );
}

// END ->SpyWidget

// BEGIN ->WatchState
dc.dynamic $_$GT_WatchState(dc.dynamic k$2, dc.dynamic subscribable$2, dc.dynamic subscription$2, dc.dynamic latest$2, ){
return lcoc_flutter.WatchState(k$2, subscribable$2, subscription$2, latest$2, );
}

// END ->WatchState

// BEGIN -build
dc.dynamic $_build(dc.dynamic $UNDERSCORE_$5, dc.dynamic state$9, dc.dynamic ctx$3, ){
if(($UNDERSCORE_$5 is lcoc_flutter.StateLifecycle$iface)){
return (($UNDERSCORE_$5 as lcoc_flutter.StateLifecycle$iface).$_build$2(state$9, ctx$3, ));
}
return ((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_$5, ) as lcoc_flutter.StateLifecycle$ext).$_build$2($UNDERSCORE_$5, state$9, ctx$3, ));
}

// END -build

// BEGIN -call-with-immediate-value
dc.dynamic $_call_with_immediate_value(dc.dynamic x$7, dc.dynamic sub$5, dc.dynamic f$BANG_$6, ){
if((x$7 is lcoc_flutter.Subscribable$iface)){
return ((x$7 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$5, f$BANG_$6, ));
}
return ((lcoc_flutter.Subscribable.extensions(x$7, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(x$7, sub$5, f$BANG_$6, ));
}

// END -call-with-immediate-value

// BEGIN -dispose-state
dc.dynamic $_dispose_state(dc.dynamic $UNDERSCORE_$8, dc.dynamic state$12, ){
if(($UNDERSCORE_$8 is lcoc_flutter.StateLifecycle$iface)){
return (($UNDERSCORE_$8 as lcoc_flutter.StateLifecycle$iface).$_dispose_state$1(state$12, ));
}
return ((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_$8, ) as lcoc_flutter.StateLifecycle$ext).$_dispose_state$1($UNDERSCORE_$8, state$12, ));
}

// END -dispose-state

// BEGIN -init-state
dc.dynamic $_init_state(dc.dynamic $UNDERSCORE_$7, dc.dynamic state$11, ){
if(($UNDERSCORE_$7 is lcoc_flutter.StateLifecycle$iface)){
return (($UNDERSCORE_$7 as lcoc_flutter.StateLifecycle$iface).$_init_state$1(state$11, ));
}
return ((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_$7, ) as lcoc_flutter.StateLifecycle$ext).$_init_state$1($UNDERSCORE_$7, state$11, ));
}

// END -init-state

// BEGIN -subscribe
dc.dynamic $_subscribe(dc.dynamic x$6, dc.dynamic f$BANG_$5, ){
if((x$6 is lcoc_flutter.Subscribable$iface)){
return ((x$6 as lcoc_flutter.Subscribable$iface).$_subscribe$1(f$BANG_$5, ));
}
return ((lcoc_flutter.Subscribable.extensions(x$6, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(x$6, f$BANG_$5, ));
}

// END -subscribe

// BEGIN -tween
dc.dynamic $_tween(dc.dynamic end$2, ){
if((end$2 is lcoc_flutter.ITweenable$iface)){
return ((end$2 as lcoc_flutter.ITweenable$iface).$_tween$0());
}
return ((lcoc_flutter.ITweenable.extensions(end$2, ) as lcoc_flutter.ITweenable$ext).$_tween$0(end$2, ));
}

// END -tween

// BEGIN -unsubscribe
dc.dynamic $_unsubscribe(dc.dynamic x$8, dc.dynamic sub$6, ){
if((x$8 is lcoc_flutter.Subscribable$iface)){
return ((x$8 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub$6, ));
}
return ((lcoc_flutter.Subscribable.extensions(x$8, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(x$8, sub$6, ));
}

// END -unsubscribe

// BEGIN -update-state
dc.dynamic $_update_state(dc.dynamic $UNDERSCORE_$6, dc.dynamic state$10, ){
if(($UNDERSCORE_$6 is lcoc_flutter.StateLifecycle$iface)){
return (($UNDERSCORE_$6 as lcoc_flutter.StateLifecycle$iface).$_update_state$1(state$10, ));
}
return ((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_$6, ) as lcoc_flutter.StateLifecycle$ext).$_update_state$1($UNDERSCORE_$6, state$10, ));
}

// END -update-state

// BEGIN -widget-cont
lcoc_core.IFn$iface $_widget_cont=lcoc_flutter.ifn_$_widget_cont_M__18695hm$1(null, );

// END -widget-cont

// BEGIN -widget-cont+ctx
lcoc_core.IFn$iface $_widget_cont$PLUS_ctx=lcoc_flutter.ifn_$_widget_cont$PLUS_ctx_M__18695hm$1(null, );

// END -widget-cont+ctx

// BEGIN <!
lcoc_core.IFn$iface $LT_$BANG_=lcoc_flutter.ifn_$LT_$BANG__M__18695hm$1(null, );

// END <!

// BEGIN Bind
class Bind extends f_widgets.StatelessWidget {
final k;
final bindings;
final child;

const Bind(this.k, this.bindings, this.child, ):super(key: (k as f_widgets.Key?), );

f_widgets.Widget build(f_widgets.BuildContext ctx$1, ){
final f_widgets.InheritedElement? elt$1=(ctx$1.getElementForInheritedWidgetOfExactType<lcoc_flutter.InheritedBindings>());
late final lcoc_flutter.InheritedBindings? some_$GT_$7772_$AUTO_$2;
if((null == elt$1)){
some_$GT_$7772_$AUTO_$2=null;
}else{
some_$GT_$7772_$AUTO_$2=((elt$1 as f_widgets.InheritedElement).widget as lcoc_flutter.InheritedBindings);
}
late final dc.dynamic parent_bindings$1;
if((null == some_$GT_$7772_$AUTO_$2)){
parent_bindings$1=null;
}else{
parent_bindings$1=(some_$GT_$7772_$AUTO_$2 as lcoc_flutter.InheritedBindings).bindings;
}
final lcoc_core.PersistentVector non_shadowed_keys$1=lcoc_core.vec(lcoc_core.keys((lcoc_core.join_with.$_invoke$4(null, lcoc_core.identity, parent_bindings$1, bindings, )), ), );
late final dc.dynamic $if_$1;
if((non_shadowed_keys$1 is lcoc_core.ISeqable$iface)){
$if_$1=((non_shadowed_keys$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(non_shadowed_keys$1, ) as lcoc_core.ISeqable$ext).$_seq$0(non_shadowed_keys$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
(ctx$1.dependOnInheritedElement((elt$1 as f_widgets.InheritedElement), aspect: (non_shadowed_keys$1 as dc.Object?), ));
}else{
}
return lcoc_flutter.InheritedBindings((lcoc_core.merge.$_invoke$2(parent_bindings$1, bindings, )), child, );
}
}

// END Bind

// BEGIN Cell
class Cell extends dc.Object implements lcoc_flutter.Subscribable$iface {
final f;
var v;
final dc.Map subscribers;
dc.int refreshing;
dc.Map deps;
final dc.Map subs;
dc.Map spare_map;

Cell(this.f, this.v, this.subscribers, this.refreshing, this.deps, this.subs, this.spare_map, ):super();

dc.dynamic subto(dc.dynamic s$1, ){
dc.dynamic f$BANG_9039$1(dc.dynamic x$1, ){
return (this.update(s$1, x$1, ));
}
late final dc.dynamic sub$1;
if((s$1 is lcoc_flutter.Subscribable$iface)){
sub$1=((s$1 as lcoc_flutter.Subscribable$iface).$_subscribe$1(f$BANG_9039$1, ));
}else{
sub$1=((lcoc_flutter.Subscribable.extensions(s$1, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(s$1, f$BANG_9039$1, ));
}
(subs[s$1]=sub$1);
return sub$1;
}

dc.dynamic refresh(){
assert((){
late final dc.bool $if_$1;
if((0 == refreshing)){
$if_$1=true;
}else{
$if_$1=false;
}
return $if_$1;
}(), (){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "zero?", )), ));
(fl$1[1]=(lcoc_core.symbol.$_invoke$2(null, "refreshing", )));
final lcoc_core.PersistentList $1=lcoc_core.$_list_lit(fl$1, );
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$2[1]=1434);
(fl$2[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$2[3]=31);
(fl$2[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$2[5]=1434);
(fl$2[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$2[7]=13);
final dc.dynamic $2=lcoc_core.with_meta($1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$2, ), -1, ), );
final dc.String $3=(lcoc_core.pr_str.$_invoke$1($2, ));
final dc.String $4=(lcoc_core.str.$_invoke$2("Assert failed: ", $3, ));
return $4;
}()); // assert

final dc.Map old_deps$1=deps;
deps=spare_map;
refreshing=1;
dc.dynamic maybe_f$1(){
try {
if((f is dc.Function)){
return (f as dc.Function)();
}
if((f is lcoc_core.IFn$iface)){
return ((f as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(f, ).$_invoke$0(f, ));
} on dc.Object catch (e$1) {
return v;
}
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
final dc.dynamic k$7857_$AUTO_$1=(lcoc_core.symbol.$_invoke$2("cljd.flutter", "*old-deps*", ));
late final dc.int cast$1;
if((k$7857_$AUTO_$1 is lcoc_core.IHash$iface)){
cast$1=(((k$7857_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$1, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$2=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$1, k$7857_$AUTO_$1, lcoc_core.Volatile(old_deps$1, ), ));
final dc.dynamic k$7857_$AUTO_$2=(lcoc_core.symbol.$_invoke$2("cljd.flutter", "*new-deps*", ));
late final dc.int cast$2;
if((k$7857_$AUTO_$2 is lcoc_core.IHash$iface)){
cast$2=(((k$7857_$AUTO_$2 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$2=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$2, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$2, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$3=(node$7856_$AUTO_$2.inode_assoc_transient(0, cast$2, k$7857_$AUTO_$2, lcoc_core.Volatile(deps, ), ));
final dc.dynamic k$7857_$AUTO_$3=(lcoc_core.symbol.$_invoke$2("cljd.flutter", "*cell*", ));
late final dc.int cast$3;
if((k$7857_$AUTO_$3 is lcoc_core.IHash$iface)){
cast$3=(((k$7857_$AUTO_$3 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$3=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$3, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$3, )) as dc.int);
}
final lcoc_core.BitmapNode $5=(node$7856_$AUTO_$3.inode_assoc_transient(0, cast$3, k$7857_$AUTO_$3, lcoc_core.Volatile(this, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $5, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $5, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $5, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
final dc.dynamic v$PRIME_$1=da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
final dc.Iterator it$7838_$AUTO_$1=(lcoc_core.iterator.$_invoke$1(old_deps$1.keys, ));
do {
if((it$7838_$AUTO_$1.moveNext())){
final dc.dynamic s$2=it$7838_$AUTO_$1.current;
final dc.dynamic? sub9052$1=(subs.remove(s$2, ));
if((s$2 is lcoc_flutter.Subscribable$iface)){
((s$2 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$1, ));
}else{
((lcoc_flutter.Subscribable.extensions(s$2, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(s$2, sub9052$1, ));
}
continue;
}else{
}
break;
} while(true);
final dc.Map doto$7753_$AUTO_$1=old_deps$1;
(doto$7753_$AUTO_$1.clear());
spare_map=doto$7753_$AUTO_$1;
if((lcoc_core.$EQ_.$_invoke$2(v, v$PRIME_$1, ))){
}else{
refreshing=2;
v=v$PRIME_$1;
final dc.Iterator it$7838_$AUTO_$2=(lcoc_core.iterator.$_invoke$1(subscribers.values, ));
do {
if((it$7838_$AUTO_$2.moveNext())){
final dc.dynamic f$BANG_$1=it$7838_$AUTO_$2.current;
try {
if((f$BANG_$1 is dc.Function)){
((f$BANG_$1 as dc.Function)(v$PRIME_$1, ));
}else if((f$BANG_$1 is lcoc_core.IFn$iface)){
((f$BANG_$1 as lcoc_core.IFn$iface).$_invoke$1(v$PRIME_$1, ));
}else{
(lcoc_core.IFn.extensions(f$BANG_$1, ).$_invoke$1(f$BANG_$1, v$PRIME_$1, ));
}
} on dc.Object catch (e$2) {
}
continue;
}else{
}
break;
} while(true);
(spare_map.forEach((dc.dynamic sub$2, dc.dynamic f$BANG_$2, ){
if(dc.identical(sub$2, f$BANG_$2, )){
return (subscribers.remove(sub$2, ));
}
return (subscribers[sub$2]=f$BANG_$2);
}, ));
(spare_map.clear());
}
const dc.int setval$6=0;
refreshing=setval$6;
return setval$6;
}

dc.dynamic update(dc.dynamic s$3, dc.dynamic x$2, ){
switch(refreshing){
case 0:
(deps[s$3]=x$2);
return (this.refresh());
case 1:
final dc.Object? arg$1=(this as dc.Object?);
late final dc.Object? $if_$2;
if((null != lcoc_flutter.$STAR_cell$STAR_)){
$if_$2=((lcoc_flutter.$STAR_cell$STAR_ as lcoc_flutter.Cell) as dc.Object);
}else{
$if_$2=null;
}
final dc.bool $6=dc.identical(arg$1, $if_$2, );
if($6){
return (deps[s$3]=x$2);
}
throw (lcoc_core.ex_info.$_invoke$2("I have no idea if it's legit", lcoc_core.$_EMPTY_MAP, ));
case 2:
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "cell", 2896365251, ), ));
(fl$3[1]=this);
throw (lcoc_core.ex_info.$_invoke$2("Circular dependency", lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 8, 8, fl$3, ), -1, ), ));
default:
throw dc.ArgumentError((lcoc_core.str.$_invoke$2("No matching clause: ", (lcoc_core.pr_str.$_invoke$1(refreshing, )), )), );
}
}

dc.dynamic $_subscribe$1(dc.dynamic f$BANG_$3, ){
switch(refreshing){
case 0:
final dc.Object sub$3=dc.Object();
if((0 == subscribers.length)){
(this.refresh());
}else{
}
(subscribers[sub$3]=f$BANG_$3);
return sub$3;
case 1:
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "cell", 2896365251, ), ));
(fl$4[1]=this);
throw (lcoc_core.ex_info.$_invoke$2("Circular dependency", lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 8, 8, fl$4, ), -1, ), ));
case 2:
final dc.Object sub$4=dc.Object();
(spare_map[sub$4]=f$BANG_$3);
return sub$4;
default:
throw dc.ArgumentError((lcoc_core.str.$_invoke$2("No matching clause: ", (lcoc_core.pr_str.$_invoke$1(refreshing, )), )), );
}
}

dc.dynamic $_call_with_immediate_value$2(dc.dynamic sub$5, dc.dynamic f$BANG_$4, ){
if(dc.identical(lcoc_flutter.NO_VALUE$v1, v, )){
return false;
}
if((f$BANG_$4 is dc.Function)){
((f$BANG_$4 as dc.Function)(v, ));
}else if((f$BANG_$4 is lcoc_core.IFn$iface)){
((f$BANG_$4 as lcoc_core.IFn$iface).$_invoke$1(v, ));
}else{
(lcoc_core.IFn.extensions(f$BANG_$4, ).$_invoke$1(f$BANG_$4, v, ));
}
return true;
}

dc.dynamic $_unsubscribe$1(dc.dynamic sub$6, ){
switch(refreshing){
case 0:
(subscribers.remove(sub$6, ));
if((0 == subscribers.length)){
(subs.forEach((dc.dynamic s$4, dc.dynamic sub$7, ){
if((s$4 is lcoc_flutter.Subscribable$iface)){
return ((s$4 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub$7, ));
}
return ((lcoc_flutter.Subscribable.extensions(s$4, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(s$4, sub$7, ));
}, ));
(subs.clear());
(deps.clear());
const dc.Null setval$7=null;
v=setval$7;
return setval$7;
}
return null;
case 1:
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "cell", 2896365251, ), ));
(fl$5[1]=this);
throw (lcoc_core.ex_info.$_invoke$2("Circular dependency", lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 8, 8, fl$5, ), -1, ), ));
case 2:
return (spare_map[sub$6]=sub$6);
default:
throw dc.ArgumentError((lcoc_core.str.$_invoke$2("No matching clause: ", (lcoc_core.pr_str.$_invoke$1(refreshing, )), )), );
}
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END Cell

// BEGIN CustomTween
class CustomTween extends f_widgets.Tween {
final f;
var lerpf;

CustomTween(this.f, this.lerpf, ):super();

set begin(dc.dynamic v$1, ){
lerpf=null;
super.begin=v$1;
return v$1;
}

set end(dc.dynamic v$2, ){
lerpf=null;
super.end=v$2;
return v$2;
}

dc.Object? lerp(dc.double t$1, ){
final dc.dynamic or$6718_$AUTO_$1=lerpf;
late final dc.dynamic lerpf$1;
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
lerpf$1=or$6718_$AUTO_$1;
}else{
final dc.Object? arg$2=this.begin;
final dc.Object? arg$1=this.end;
late final dc.dynamic setval$5;
if((f is dc.Function)){
setval$5=(f as dc.Function)(arg$2, arg$1, );
}else if((f is lcoc_core.IFn$iface)){
setval$5=((f as lcoc_core.IFn$iface).$_invoke$2(arg$2, arg$1, ));
}else{
setval$5=(lcoc_core.IFn.extensions(f, ).$_invoke$2(f, arg$2, arg$1, ));
}
lerpf=setval$5;
lerpf$1=setval$5;
}
if((lerpf$1 is dc.Function)){
return (lerpf$1 as dc.Function)(t$1, );
}
if((lerpf$1 is lcoc_core.IFn$iface)){
return ((lerpf$1 as lcoc_core.IFn$iface).$_invoke$1(t$1, ));
}
return (lcoc_core.IFn.extensions(lerpf$1, ).$_invoke$1(lerpf$1, t$1, ));
}
}

// END CustomTween

// BEGIN GlobalValueKey
class GlobalValueKey extends f_widgets.GlobalKey with lcoc_core.ToStringMixin, lcoc_core.EqualsEquivMixin implements lcoc_core.IEquiv$iface, lcoc_core.IHash$iface, lcoc_core.IPrint$iface {
final value;

const GlobalValueKey(this.value, ):super.constructor();

dc.dynamic $_equiv$1(dc.dynamic y$1, ){
final dc.bool and$6836_$AUTO_$1=(y$1 is lcoc_flutter.GlobalValueKey);
if(and$6836_$AUTO_$1){
return (lcoc_core.$EQ_.$_invoke$2(value, (y$1 as lcoc_flutter.GlobalValueKey).value, ));
}
return and$6836_$AUTO_$1;
}

dc.dynamic $_hash$0(){
late final dc.int cast$1;
if((value is lcoc_core.IHash$iface)){
cast$1=(((value as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(value, ) as lcoc_core.IHash$ext).$_hash$0(value, )) as dc.int);
}
return lcoc_core.hash_combine(2103243741, cast$1, );
}

dc.dynamic $_print$1(dc.dynamic sink$1, ){
final dc.StringSink doto$7753_$AUTO_$1=(sink$1 as dc.StringSink);
(doto$7753_$AUTO_$1.write("#object[cljd.flutter.GlobalValueKey ", ));
if((value is lcoc_core.IPrint$iface)){
((value as lcoc_core.IPrint$iface).$_print$1(doto$7753_$AUTO_$1, ));
}else{
((lcoc_core.IPrint.extensions(value, ) as lcoc_core.IPrint$ext).$_print$1(value, doto$7753_$AUTO_$1, ));
}
(doto$7753_$AUTO_$1.write("]", ));
return doto$7753_$AUTO_$1;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END GlobalValueKey

// BEGIN ITweenable
dc.dynamic ITweenable=const lcoc_flutter.ITweenable$iprot();

// END ITweenable

// BEGIN ITweenable$ext
abstract class ITweenable$ext extends dc.Object {

dc.dynamic $_tween$0(dc.dynamic end$1, );
}

// END ITweenable$ext

// BEGIN ITweenable$iface
abstract class ITweenable$iface extends dc.Object {

dc.dynamic $_tween$0();
}

// END ITweenable$iface

// BEGIN ITweenable$iprot
class ITweenable$iprot extends dc.Object implements lcoc_core.IProtocol {

const ITweenable$iprot():super();

dc.dynamic satisfies(dc.dynamic x$37, ){
final dc.bool or$6718_$AUTO_$172=(x$37 is lcoc_flutter.ITweenable$iface);
if(or$6718_$AUTO_$172){
return or$6718_$AUTO_$172;
}
final dc.bool or$6718_$AUTO_$173=(x$37 is f_material.ShapeBorder);
if(or$6718_$AUTO_$173){
return or$6718_$AUTO_$173;
}
final dc.bool or$6718_$AUTO_$174=(x$37 is f_widgets.TextStyle);
if(or$6718_$AUTO_$174){
return or$6718_$AUTO_$174;
}
final dc.bool or$6718_$AUTO_$175=(x$37 is f_widgets.Decoration);
if(or$6718_$AUTO_$175){
return or$6718_$AUTO_$175;
}
final dc.bool or$6718_$AUTO_$176=(x$37 is f_widgets.Border);
if(or$6718_$AUTO_$176){
return or$6718_$AUTO_$176;
}
final dc.bool or$6718_$AUTO_$177=(x$37 is f_widgets.EdgeInsetsGeometry);
if(or$6718_$AUTO_$177){
return or$6718_$AUTO_$177;
}
final dc.bool or$6718_$AUTO_$178=(x$37 is f_widgets.Size);
if(or$6718_$AUTO_$178){
return or$6718_$AUTO_$178;
}
final dc.bool or$6718_$AUTO_$179=(x$37 is f_widgets.Matrix4);
if(or$6718_$AUTO_$179){
return or$6718_$AUTO_$179;
}
final dc.bool or$6718_$AUTO_$180=(x$37 is f_widgets.EdgeInsets);
if(or$6718_$AUTO_$180){
return or$6718_$AUTO_$180;
}
final dc.bool or$6718_$AUTO_$181=(x$37 is f_widgets.BorderRadius);
if(or$6718_$AUTO_$181){
return or$6718_$AUTO_$181;
}
final dc.bool or$6718_$AUTO_$182=(x$37 is dc.int);
if(or$6718_$AUTO_$182){
return or$6718_$AUTO_$182;
}
final dc.bool or$6718_$AUTO_$183=(x$37 is f_widgets.FractionalOffset);
if(or$6718_$AUTO_$183){
return or$6718_$AUTO_$183;
}
final dc.bool or$6718_$AUTO_$184=(x$37 is f_widgets.RelativeRect);
if(or$6718_$AUTO_$184){
return or$6718_$AUTO_$184;
}
final dc.bool or$6718_$AUTO_$185=(x$37 is f_widgets.AlignmentGeometry);
if(or$6718_$AUTO_$185){
return or$6718_$AUTO_$185;
}
final dc.bool or$6718_$AUTO_$186=(x$37 is f_widgets.Color);
if(or$6718_$AUTO_$186){
return or$6718_$AUTO_$186;
}
final dc.bool or$6718_$AUTO_$187=(x$37 is f_widgets.BoxConstraints);
if(or$6718_$AUTO_$187){
return or$6718_$AUTO_$187;
}
final dc.bool or$6718_$AUTO_$188=(x$37 is f_widgets.Alignment);
if(or$6718_$AUTO_$188){
return or$6718_$AUTO_$188;
}
final dc.bool or$6718_$AUTO_$189=(x$37 is f_widgets.Rect);
if(or$6718_$AUTO_$189){
return or$6718_$AUTO_$189;
}
final dc.bool or$6718_$AUTO_$190=(x$37 is f_material.ThemeData);
if(or$6718_$AUTO_$190){
return or$6718_$AUTO_$190;
}
return false;
}

dc.dynamic extensions(dc.dynamic x$38, ){
if((x$38 is f_material.ShapeBorder)){
return const lcoc_flutter.$C$f_material$DOT_ShapeBorder$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.TextStyle)){
return const lcoc_flutter.$C$f_widgets$DOT_TextStyle$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.Decoration)){
return const lcoc_flutter.$C$f_widgets$DOT_Decoration$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.Border)){
return const lcoc_flutter.$C$f_widgets$DOT_Border$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.EdgeInsetsGeometry)){
return const lcoc_flutter.$C$f_widgets$DOT_EdgeInsetsGeometry$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.Size)){
return const lcoc_flutter.$C$f_widgets$DOT_Size$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.Matrix4)){
return const lcoc_flutter.$C$f_widgets$DOT_Matrix4$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.EdgeInsets)){
return const lcoc_flutter.$C$f_widgets$DOT_EdgeInsets$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.BorderRadius)){
return const lcoc_flutter.$C$f_widgets$DOT_BorderRadius$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is dc.int)){
return const lcoc_flutter.$C$dc$DOT_int$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.FractionalOffset)){
return const lcoc_flutter.$C$f_widgets$DOT_FractionalOffset$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.RelativeRect)){
return const lcoc_flutter.$C$f_widgets$DOT_RelativeRect$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.AlignmentGeometry)){
return const lcoc_flutter.$C$f_widgets$DOT_AlignmentGeometry$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.Color)){
return const lcoc_flutter.$C$f_widgets$DOT_Color$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.BoxConstraints)){
return const lcoc_flutter.$C$f_widgets$DOT_BoxConstraints$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.Alignment)){
return const lcoc_flutter.$C$f_widgets$DOT_Alignment$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_widgets.Rect)){
return const lcoc_flutter.$C$f_widgets$DOT_Rect$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
if((x$38 is f_material.ThemeData)){
return const lcoc_flutter.$C$f_material$DOT_ThemeData$$lcoc_flutter$DOT_ITweenable$D$$cext();
}
return const lcoc_flutter.$C$fallback$$lcoc_flutter$DOT_ITweenable$D$$cext();
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ITweenable$iprot

// BEGIN InheritedBindings
class InheritedBindings extends f_widgets.InheritedModel {
final bindings;
final child;

const InheritedBindings(this.bindings, this.child, ):super(child: (child as f_widgets.Widget), );

dc.bool isSupportedAspect(dc.Object name$1, ){
return true;
}

dc.bool updateShouldNotify(f_widgets.InheritedWidget prev_this$1, ){
return (lcoc_core.not$EQ_.$_invoke$2(bindings, (prev_this$1 as lcoc_flutter.InheritedBindings).bindings, ));
}

dc.bool updateShouldNotifyDependent(f_widgets.InheritedModel<dc.dynamic> prev_this$2, dc.Set<dc.dynamic> aspects$1, ){
final dc.dynamic prev_bindings$1=(prev_this$2 as lcoc_flutter.InheritedBindings).bindings;
return lcoc_core.boolean(lcoc_core.some((dc.dynamic ks$1, ){
return lcoc_core.some((dc.dynamic k$1, ){
late final dc.dynamic $if_$2;
if((prev_bindings$1 is dc.Function)){
$if_$2=(prev_bindings$1 as dc.Function)(k$1, );
}else if((prev_bindings$1 is lcoc_core.IFn$iface)){
$if_$2=((prev_bindings$1 as lcoc_core.IFn$iface).$_invoke$1(k$1, ));
}else{
$if_$2=(lcoc_core.IFn.extensions(prev_bindings$1, ).$_invoke$1(prev_bindings$1, k$1, ));
}
late final dc.dynamic $if_$1;
if((bindings is dc.Function)){
$if_$1=(bindings as dc.Function)(k$1, );
}else if((bindings is lcoc_core.IFn$iface)){
$if_$1=((bindings as lcoc_core.IFn$iface).$_invoke$1(k$1, ));
}else{
$if_$1=(lcoc_core.IFn.extensions(bindings, ).$_invoke$1(bindings, k$1, ));
}
return (lcoc_core.not$EQ_.$_invoke$2($if_$2, $if_$1, ));
}, ks$1, );
}, aspects$1, ), );
}
}

// END InheritedBindings

// BEGIN KeepAliveState
class KeepAliveState extends f_widgets.State with f_foundation.Diagnosticable {
f_foundation.ChangeNotifier? handle;

KeepAliveState(this.handle, ):super();

void initState(){
(super.initState());
final f_widgets.StatefulWidget $UNDERSCORE_9071$1=this.widget;
if(($UNDERSCORE_9071$1 is lcoc_flutter.StateLifecycle$iface)){
(($UNDERSCORE_9071$1 as lcoc_flutter.StateLifecycle$iface).$_init_state$1(this, ));
}else{
((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9071$1, ) as lcoc_flutter.StateLifecycle$ext).$_init_state$1($UNDERSCORE_9071$1, this, ));
}
return null;
}

void didUpdateWidget(f_widgets.StatefulWidget old_widget$1, ){
(super.didUpdateWidget(old_widget$1, ));
final f_widgets.StatefulWidget $UNDERSCORE_9065$1=this.widget;
if(($UNDERSCORE_9065$1 is lcoc_flutter.StateLifecycle$iface)){
(($UNDERSCORE_9065$1 as lcoc_flutter.StateLifecycle$iface).$_update_state$1(this, ));
}else{
((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9065$1, ) as lcoc_flutter.StateLifecycle$ext).$_update_state$1($UNDERSCORE_9065$1, this, ));
}
return null;
}

void dispose(){
final f_widgets.StatefulWidget $UNDERSCORE_9077$1=this.widget;
if(($UNDERSCORE_9077$1 is lcoc_flutter.StateLifecycle$iface)){
(($UNDERSCORE_9077$1 as lcoc_flutter.StateLifecycle$iface).$_dispose_state$1(this, ));
}else{
((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9077$1, ) as lcoc_flutter.StateLifecycle$ext).$_dispose_state$1($UNDERSCORE_9077$1, this, ));
}
return (super.dispose());
}

f_widgets.Widget build(f_widgets.BuildContext ctx$1, ){
final f_widgets.StatefulWidget $UNDERSCORE_9058$1=this.widget;
if(($UNDERSCORE_9058$1 is lcoc_flutter.StateLifecycle$iface)){
return (($UNDERSCORE_9058$1 as lcoc_flutter.StateLifecycle$iface).$_build$2(this, ctx$1, ));
}
return ((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9058$1, ) as lcoc_flutter.StateLifecycle$ext).$_build$2($UNDERSCORE_9058$1, this, ctx$1, ));
}

void debugFillProperties(f_foundation.DiagnosticPropertiesBuilder props$1, ){
(super.debugFillProperties(props$1, ));
return (props$1.add(f_foundation.DiagnosticsProperty("keep-alive", (handle != null), ), ));
}
}

// END KeepAliveState

// BEGIN NO-VALUE
dc.dynamic NO_VALUE$v1=dc.Object();

// END NO-VALUE

// BEGIN ReplPointWidget
class ReplPointWidget extends f_widgets.StatefulWidget {
final source_loc;
final get_envmap;
final child;

const ReplPointWidget(this.source_loc, this.get_envmap, this.child, ):super();

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.ReplState(lcoc_core.$_EMPTY_MAP, );
}
}

// END ReplPointWidget

// BEGIN ReplState
class ReplState extends f_widgets.State<lcoc_flutter.ReplPointWidget> {
var m;

ReplState(this.m, ):super();

f_widgets.Widget build(f_widgets.BuildContext ctx$1, ){
final dc.dynamic test$1=(const lcoc_core.Keyword(null, "*active-state", 1166969386, ).$_invoke$1(m, ));
if(((false != test$1) && (null != test$1))){
}else{
final dc.dynamic coll7096$1=m;
final lcoc_flutter.ReplState? some$6849_$AUTO_$1=(ctx$1.findAncestorStateOfType<lcoc_flutter.ReplState>());
late final dc.dynamic v7098$1;
if((null == some$6849_$AUTO_$1)){
final dc.dynamic test$2=(const lcoc_core.Keyword(null, "disabled", 1647692756, ).$_invoke$1(m, ));
if(((false != test$2) && (null != test$2))){
v7098$1=null;
}else{
v7098$1=(lcoc_core.atom.$_invoke$1(this, ));
}
}else{
late final dc.dynamic map$9611_$1;
if((null == some$6849_$AUTO_$1)){
map$9611_$1=null;
}else{
map$9611_$1=(some$6849_$AUTO_$1 as lcoc_flutter.ReplState).m;
}
late final dc.dynamic map$9611_$2;
if(((lcoc_core.ISeq.satisfies(map$9611_$1, )) as dc.bool)){
final dc.dynamic test$3=lcoc_core.next(map$9611_$1, );
if(((false != test$3) && (null != test$3))){
map$9611_$2=lcoc_core.seq_to_map_for_destructuring(map$9611_$1, );
}else{
late final dc.dynamic $if_$1;
if((map$9611_$1 is lcoc_core.ISeqable$iface)){
$if_$1=((map$9611_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(map$9611_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(map$9611_$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
map$9611_$2=lcoc_core.first(map$9611_$1, );
}else{
map$9611_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9611_$2=map$9611_$1;
}
late final dc.dynamic $STAR_active_state$1;
if((map$9611_$2 is lcoc_core.ILookup$iface)){
$STAR_active_state$1=((map$9611_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "*active-state", 1166969386, ), ));
}else{
$STAR_active_state$1=((lcoc_core.ILookup.extensions(map$9611_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9611_$2, const lcoc_core.Keyword(null, "*active-state", 1166969386, ), ));
}
v7098$1=$STAR_active_state$1;
}
if((coll7096$1 is lcoc_core.IAssociative$iface)){
m=((coll7096$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "*active-state", 1166969386, ), v7098$1, ));
}else{
m=((lcoc_core.IAssociative.extensions(coll7096$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(coll7096$1, const lcoc_core.Keyword(null, "*active-state", 1166969386, ), v7098$1, ));
}
}
final dc.dynamic or$6718_$AUTO_$1=(const lcoc_core.Keyword(null, "child", 1160621984, ).$_invoke$1(m, ));
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
return or$6718_$AUTO_$1;
}
return this.widget.child;
}

void reassemble(){
(super.reassemble());
final f_widgets.State active_state$1=(lcoc_core.deref((const lcoc_core.Keyword(null, "*active-state", 1166969386, ).$_invoke$1(m, )), ) as f_widgets.State);
final dc.bool active_is_mounted$1=active_state$1.mounted;
final dc.bool is_active$1=dc.identical((this as dc.Object?), active_state$1, );
assert((){
late final dc.bool $if_$2;
if(active_is_mounted$1){
$if_$2=active_is_mounted$1;
}else if(is_active$1){
$if_$2=false;
}else{
$if_$2=true;
}
late final dc.bool $if_$3;
if($if_$2){
$if_$3=true;
}else{
$if_$3=false;
}
return $if_$3;
}(), (){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(3, (lcoc_core.symbol.$_invoke$2(null, "or", )), ));
(fl$1[1]=(lcoc_core.symbol.$_invoke$2(null, "active-is-mounted", )));
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "not", )), ));
(fl$2[1]=(lcoc_core.symbol.$_invoke$2(null, "is-active", )));
final lcoc_core.PersistentList $1=lcoc_core.$_list_lit(fl$2, );
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$3[1]=1195);
(fl$3[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$3[3]=52);
(fl$3[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$3[5]=1195);
(fl$3[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$3[7]=37);
final dc.dynamic $2=lcoc_core.with_meta($1, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$3, ), -1, ), );
(fl$1[2]=$2);
final lcoc_core.PersistentList $3=lcoc_core.$_list_lit(fl$1, );
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$4[1]=1195);
(fl$4[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$4[3]=53);
(fl$4[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$4[5]=1195);
(fl$4[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$4[7]=15);
final dc.dynamic $4=lcoc_core.with_meta($3, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$4, ), -1, ), );
final dc.String $5=(lcoc_core.pr_str.$_invoke$1($4, ));
final dc.String $6=(lcoc_core.str.$_invoke$2("Assert failed: ", $5, ));
return $6;
}()); // assert

late final dc.bool $if_$4;
if(is_active$1){
$if_$4=is_active$1;
}else if(active_is_mounted$1){
$if_$4=false;
}else{
$if_$4=true;
}
if($if_$4){
if(active_is_mounted$1){
}else{
(lcoc_core.reset$BANG_((lcoc_flutter.peek_of.$_invoke$2(const lcoc_flutter.GlobalValueKey(const lcoc_core.Keyword("cljd.flutter", "app-root", 2193565623, ), ).currentContext, const lcoc_core.Keyword("cljd.flutter.repl-impl", "hud-enabled", 1353731370, ), )), null, ));
(lcoc_core.reset$BANG_((const lcoc_core.Keyword(null, "*active-state", 1166969386, ).$_invoke$1(m, )), this, ));
}
return (f_widgets.WidgetsBinding.instance.addPostFrameCallback((dc.dynamic $UNDERSCORE_$1, ){
return lcocfr_impl.repl_exec();
}, debugLabel: "repl", ));
}
return null;
}
}

// END ReplState

// BEGIN ResourceState
class ResourceState extends f_widgets.State with f_foundation.Diagnosticable {
var k;
var resource;

ResourceState(this.k, this.resource, ):super();

void initState(){
(super.initState());
final f_widgets.StatefulWidget $UNDERSCORE_9071$1=this.widget;
if(($UNDERSCORE_9071$1 is lcoc_flutter.StateLifecycle$iface)){
(($UNDERSCORE_9071$1 as lcoc_flutter.StateLifecycle$iface).$_init_state$1(this, ));
}else{
((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9071$1, ) as lcoc_flutter.StateLifecycle$ext).$_init_state$1($UNDERSCORE_9071$1, this, ));
}
return null;
}

void didUpdateWidget(f_widgets.StatefulWidget old_widget$1, ){
(super.didUpdateWidget(old_widget$1, ));
final f_widgets.StatefulWidget $UNDERSCORE_9065$1=this.widget;
if(($UNDERSCORE_9065$1 is lcoc_flutter.StateLifecycle$iface)){
(($UNDERSCORE_9065$1 as lcoc_flutter.StateLifecycle$iface).$_update_state$1(this, ));
}else{
((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9065$1, ) as lcoc_flutter.StateLifecycle$ext).$_update_state$1($UNDERSCORE_9065$1, this, ));
}
return null;
}

void dispose(){
final f_widgets.StatefulWidget $UNDERSCORE_9077$1=this.widget;
if(($UNDERSCORE_9077$1 is lcoc_flutter.StateLifecycle$iface)){
(($UNDERSCORE_9077$1 as lcoc_flutter.StateLifecycle$iface).$_dispose_state$1(this, ));
}else{
((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9077$1, ) as lcoc_flutter.StateLifecycle$ext).$_dispose_state$1($UNDERSCORE_9077$1, this, ));
}
return (super.dispose());
}

f_widgets.Widget build(f_widgets.BuildContext ctx$1, ){
final f_widgets.StatefulWidget $UNDERSCORE_9058$1=this.widget;
if(($UNDERSCORE_9058$1 is lcoc_flutter.StateLifecycle$iface)){
return (($UNDERSCORE_9058$1 as lcoc_flutter.StateLifecycle$iface).$_build$2(this, ctx$1, ));
}
return ((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9058$1, ) as lcoc_flutter.StateLifecycle$ext).$_build$2($UNDERSCORE_9058$1, this, ctx$1, ));
}

void debugFillProperties(f_foundation.DiagnosticPropertiesBuilder props$1, ){
(super.debugFillProperties(props$1, ));
return (props$1.add(f_foundation.DiagnosticsProperty("resource", resource, ), ));
}
}

// END ResourceState

// BEGIN Retriable
class Retriable extends dc.Object implements lcoc_flutter.Subscribable$iface {
final thunk;
dc.Future? fut;
final dc.Map subscriptions;

Retriable(this.thunk, this.fut, this.subscriptions, ):super();

dc.dynamic $_subscribe$1(dc.dynamic f$BANG_$1, ){
final dc.Object sub$1=dc.Object();
(subscriptions[sub$1]=f$BANG_$1);
return sub$1;
}

dc.dynamic $_call_with_immediate_value$2(dc.dynamic sub$2, dc.dynamic f$BANG_$2, ){
return false;
}

dc.dynamic $_unsubscribe$1(dc.dynamic sub$3, ){
return (subscriptions.remove(sub$3, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END Retriable

// BEGIN SpyWidget
class SpyWidget extends f_widgets.StatelessWidget {
final k;
final child;
final f;

const SpyWidget(this.k, this.child, this.f, ):super(key: (k as f_widgets.Key?), );

f_widgets.Widget build(f_widgets.BuildContext $UNDERSCORE_$1, ){
return child;
}

void debugFillProperties(fsf_diagnostics.DiagnosticPropertiesBuilder props_builder$1, ){
(super.debugFillProperties(props_builder$1, ));
if((f is dc.Function)){
((f as dc.Function)(props_builder$1, ));
}else if((f is lcoc_core.IFn$iface)){
((f as lcoc_core.IFn$iface).$_invoke$1(props_builder$1, ));
}else{
(lcoc_core.IFn.extensions(f, ).$_invoke$1(f, props_builder$1, ));
}
return null;
}
}

// END SpyWidget

// BEGIN StateLifecycle
dc.dynamic StateLifecycle=const lcoc_flutter.StateLifecycle$iprot();

// END StateLifecycle

// BEGIN StateLifecycle$ext
abstract class StateLifecycle$ext extends dc.Object {

dc.dynamic $_build$2(dc.dynamic $UNDERSCORE_$1, dc.dynamic state$5, dc.dynamic ctx$2, );

dc.dynamic $_update_state$1(dc.dynamic $UNDERSCORE_$2, dc.dynamic state$6, );

dc.dynamic $_init_state$1(dc.dynamic $UNDERSCORE_$3, dc.dynamic state$7, );

dc.dynamic $_dispose_state$1(dc.dynamic $UNDERSCORE_$4, dc.dynamic state$8, );
}

// END StateLifecycle$ext

// BEGIN StateLifecycle$iface
abstract class StateLifecycle$iface extends dc.Object {

dc.dynamic $_build$2(dc.dynamic state$1, dc.dynamic ctx$1, );

dc.dynamic $_update_state$1(dc.dynamic state$2, );

dc.dynamic $_init_state$1(dc.dynamic state$3, );

dc.dynamic $_dispose_state$1(dc.dynamic state$4, );
}

// END StateLifecycle$iface

// BEGIN StateLifecycle$iprot
class StateLifecycle$iprot extends dc.Object implements lcoc_core.IProtocol {

const StateLifecycle$iprot():super();

dc.dynamic satisfies(dc.dynamic x$1, ){
final dc.bool or$6718_$AUTO_$1=(x$1 is lcoc_flutter.StateLifecycle$iface);
if(or$6718_$AUTO_$1){
return or$6718_$AUTO_$1;
}
return false;
}

dc.dynamic extensions(dc.dynamic x$2, ){
throw dc.Exception((("No extension of protocol StateLifecycle found for type " + (x$2.runtimeType.toString())) + "."), );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END StateLifecycle$iprot

// BEGIN Subscribable
dc.dynamic Subscribable=const lcoc_flutter.Subscribable$iprot();

// END Subscribable

// BEGIN Subscribable$ext
abstract class Subscribable$ext extends dc.Object {

dc.dynamic $_subscribe$1(dc.dynamic x$1, dc.dynamic f$BANG_$3, );

dc.dynamic $_call_with_immediate_value$2(dc.dynamic x$2, dc.dynamic sub$3, dc.dynamic f$BANG_$4, );

dc.dynamic $_unsubscribe$1(dc.dynamic x$3, dc.dynamic sub$4, );
}

// END Subscribable$ext

// BEGIN Subscribable$iface
abstract class Subscribable$iface extends dc.Object {

dc.dynamic $_subscribe$1(dc.dynamic f$BANG_$1, );

dc.dynamic $_call_with_immediate_value$2(dc.dynamic sub$1, dc.dynamic f$BANG_$2, );

dc.dynamic $_unsubscribe$1(dc.dynamic sub$2, );
}

// END Subscribable$iface

// BEGIN Subscribable$iprot
class Subscribable$iprot extends dc.Object implements lcoc_core.IProtocol {

const Subscribable$iprot():super();

dc.dynamic satisfies(dc.dynamic x$12, ){
final dc.bool or$6718_$AUTO_$21=(x$12 is lcoc_flutter.Subscribable$iface);
if(or$6718_$AUTO_$21){
return or$6718_$AUTO_$21;
}
final dc.bool or$6718_$AUTO_$22=(x$12 is dc.Null);
if(or$6718_$AUTO_$22){
return or$6718_$AUTO_$22;
}
final dc.bool or$6718_$AUTO_$23=(x$12 is lcoc_core.Atom);
if(or$6718_$AUTO_$23){
return or$6718_$AUTO_$23;
}
final dc.bool or$6718_$AUTO_$24=(x$12 is dc.Stream);
if(or$6718_$AUTO_$24){
return or$6718_$AUTO_$24;
}
final dc.bool or$6718_$AUTO_$25=(x$12 is dc.Future);
if(or$6718_$AUTO_$25){
return or$6718_$AUTO_$25;
}
final dc.bool or$6718_$AUTO_$26=(x$12 is f_foundation.ValueListenable);
if(or$6718_$AUTO_$26){
return or$6718_$AUTO_$26;
}
final dc.bool or$6718_$AUTO_$27=(x$12 is f_foundation.Listenable);
if(or$6718_$AUTO_$27){
return or$6718_$AUTO_$27;
}
return false;
}

dc.dynamic extensions(dc.dynamic x$13, ){
if((x$13 is dc.Null)){
return const lcoc_flutter.$C$dc$DOT_Null$$lcoc_flutter$DOT_Subscribable$D$$cext();
}
if((x$13 is lcoc_core.Atom)){
return const lcoc_flutter.$C$lcoc_core$DOT_Atom$$lcoc_flutter$DOT_Subscribable$D$$cext();
}
if((x$13 is dc.Stream)){
return const lcoc_flutter.$C$dc$DOT_Stream$$lcoc_flutter$DOT_Subscribable$D$$cext();
}
if((x$13 is dc.Future)){
return const lcoc_flutter.$C$dc$DOT_Future$$lcoc_flutter$DOT_Subscribable$D$$cext();
}
if((x$13 is f_foundation.ValueListenable)){
return const lcoc_flutter.$C$f_foundation$DOT_ValueListenable$$lcoc_flutter$DOT_Subscribable$D$$cext();
}
if((x$13 is f_foundation.Listenable)){
return const lcoc_flutter.$C$f_foundation$DOT_Listenable$$lcoc_flutter$DOT_Subscribable$D$$cext();
}
throw dc.Exception((("No extension of protocol Subscribable found for type " + (x$13.runtimeType.toString())) + "."), );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END Subscribable$iprot

// BEGIN WatchState
class WatchState extends f_widgets.State with f_foundation.Diagnosticable implements lcoc_core.IFn$iface {
var k;
var subscribable;
var subscription;
var latest;

WatchState(this.k, this.subscribable, this.subscription, this.latest, ):super();

void initState(){
(super.initState());
final f_widgets.StatefulWidget $UNDERSCORE_9071$1=this.widget;
if(($UNDERSCORE_9071$1 is lcoc_flutter.StateLifecycle$iface)){
(($UNDERSCORE_9071$1 as lcoc_flutter.StateLifecycle$iface).$_init_state$1(this, ));
}else{
((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9071$1, ) as lcoc_flutter.StateLifecycle$ext).$_init_state$1($UNDERSCORE_9071$1, this, ));
}
return null;
}

void didUpdateWidget(f_widgets.StatefulWidget old_widget$1, ){
(super.didUpdateWidget(old_widget$1, ));
final f_widgets.StatefulWidget $UNDERSCORE_9065$1=this.widget;
if(($UNDERSCORE_9065$1 is lcoc_flutter.StateLifecycle$iface)){
(($UNDERSCORE_9065$1 as lcoc_flutter.StateLifecycle$iface).$_update_state$1(this, ));
}else{
((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9065$1, ) as lcoc_flutter.StateLifecycle$ext).$_update_state$1($UNDERSCORE_9065$1, this, ));
}
return null;
}

void dispose(){
final f_widgets.StatefulWidget $UNDERSCORE_9077$1=this.widget;
if(($UNDERSCORE_9077$1 is lcoc_flutter.StateLifecycle$iface)){
(($UNDERSCORE_9077$1 as lcoc_flutter.StateLifecycle$iface).$_dispose_state$1(this, ));
}else{
((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9077$1, ) as lcoc_flutter.StateLifecycle$ext).$_dispose_state$1($UNDERSCORE_9077$1, this, ));
}
return (super.dispose());
}

f_widgets.Widget build(f_widgets.BuildContext ctx$1, ){
final f_widgets.StatefulWidget $UNDERSCORE_9058$1=this.widget;
if(($UNDERSCORE_9058$1 is lcoc_flutter.StateLifecycle$iface)){
return (($UNDERSCORE_9058$1 as lcoc_flutter.StateLifecycle$iface).$_build$2(this, ctx$1, ));
}
return ((lcoc_flutter.StateLifecycle.extensions($UNDERSCORE_9058$1, ) as lcoc_flutter.StateLifecycle$ext).$_build$2($UNDERSCORE_9058$1, this, ctx$1, ));
}

dc.dynamic $_invoke$1(dc.dynamic x$1, ){
latest=x$1;
if(this.mounted){
return (this.setState((){
return null;
}, ));
}
return null;
}

void debugFillProperties(f_foundation.DiagnosticPropertiesBuilder props$1, ){
(super.debugFillProperties(props$1, ));
(props$1.add(f_foundation.DiagnosticsProperty("subscribable", subscribable, ), ));
return (props$1.add(f_foundation.DiagnosticsProperty("current value", latest, ), ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END WatchState

// BEGIN build
lcoc_core.IFn$iface build=lcoc_flutter.ifn_build_M__18695hm$1(null, );

// END build

// BEGIN camel-kebab
dc.dynamic camel_kebab(dc.dynamic s$1, ){
return lcoc_string.replace(s$1, dc.RegExp("(^[A-Z])|[A-Z]", ), (dc.dynamic p$9445_$1, ){
final dc.dynamic s$2=(lcoc_core.nth.$_invoke$3(p$9445_$1, 0, null, ));
final dc.dynamic start$1=(lcoc_core.nth.$_invoke$3(p$9445_$1, 1, null, ));
final dc.String cond_$GT_$GT_$6888_$AUTO_$1=lcoc_string.lower_case(s$2, );
late final dc.bool $if_$1;
if(((false != start$1) && (null != start$1))){
$if_$1=false;
}else{
$if_$1=true;
}
if($if_$1){
return (lcoc_core.str.$_invoke$2("-", cond_$GT_$GT_$6888_$AUTO_$1, ));
}
return cond_$GT_$GT_$6888_$AUTO_$1;
}, );
}

// END camel-kebab

// BEGIN cell
dc.dynamic cell(dc.dynamic f$1, ){
return lcoc_flutter.Cell(f$1, lcoc_flutter.NO_VALUE$v1, (dc.Map.identity()), 0, dc.Map(), dc.Map(), dc.Map(), );
}

// END cell

// BEGIN closest-context
dc.dynamic closest_context$v1=(){
final dc.dynamic arg$1=(lcoc_core.symbol.$_invoke$2(null, "context__9449__auto__", ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "BuildContext", )), )), ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$1, ));
final dc.dynamic $2=lcoc_core.with_meta(arg$1, $1, );
return $2;
}();

// END closest-context

// BEGIN collect-options
dc.dynamic collect_options(dc.dynamic exprs$1, dc.dynamic supported_option$QMARK_$1, ){
final dc.dynamic opts$1=(lcoc_core.take_while.$_invoke$2((lcoc_core.comp.$_invoke$2(lcoc_core.keyword$QMARK_, lcoc_core.first, )), (lcoc_core.partition.$_invoke$2(2, exprs$1, )), ));
late final dc.int cast$1;
if((opts$1 is lcoc_core.ICounted$iface)){
cast$1=(((opts$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(opts$1, ) as lcoc_core.ICounted$ext).$_count$0(opts$1, )) as dc.int);
}
final dc.int $1=(2 * cast$1);
final dc.dynamic exprs$2=(lcoc_core.drop.$_invoke$2($1, exprs$1, ));
final dc.dynamic opts$2=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_MAP, (lcoc_core.map.$_invoke$1(lcoc_core.vec, )), opts$1, ));
final dc.Iterator it$7838_$AUTO_$1=(lcoc_core.iterator.$_invoke$1(lcoc_core.keys(opts$2, ), ));
do {
if((it$7838_$AUTO_$1.moveNext())){
final dc.dynamic k$1=it$7838_$AUTO_$1.current;
late final dc.dynamic $if_$1;
if((supported_option$QMARK_$1 is dc.Function)){
$if_$1=(supported_option$QMARK_$1 as dc.Function)(k$1, );
}else if((supported_option$QMARK_$1 is lcoc_core.IFn$iface)){
$if_$1=((supported_option$QMARK_$1 as lcoc_core.IFn$iface).$_invoke$1(k$1, ));
}else{
$if_$1=(lcoc_core.IFn.extensions(supported_option$QMARK_$1, ).$_invoke$1(supported_option$QMARK_$1, k$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
}else{
throw dc.Exception((lcoc_core.str.$_invoke$2("Unsupported option: ", k$1, )), );
}
continue;
}else{
}
break;
} while(true);
return lcoc_core.cons(opts$2, exprs$2, );
}

// END collect-options

// BEGIN destructuring-bound-locals
dc.dynamic destructuring_bound_locals(dc.dynamic destructuring_form$1, ){
late final dc.dynamic Function(dc.dynamic, dc.dynamic, ) locals$1;
locals$1=(dc.dynamic ts$1, dc.dynamic form$1, ){
if(lcoc_core.symbol$QMARK_(form$1, )){
return (lcoc_core.conj$BANG_.$_invoke$2(ts$1, form$1, ));
}
if(lcoc_core.map$QMARK_(form$1, )){
return lcoc_core.reduce_kv((dc.dynamic ts$2, dc.dynamic k$1, dc.dynamic v$1, ){
if(lcoc_core.keyword$QMARK_(k$1, )){
final dc.String test$6640_$AUTO_$1=lcoc_core.name(k$1, );
switch(test$6640_$AUTO_$1){
case "flds":
case "keys":
case "strs":
case "syms":
return (lcoc_core.transduce.$_invoke$4((lcoc_core.map.$_invoke$1((dc.dynamic p1$9450_$SHARP_$1, ){
final dc.dynamic arg$1=(lcoc_core.symbol.$_invoke$1(lcoc_core.name(p1$9450_$SHARP_$1, ), ));
late final dc.dynamic $if_$1;
if((p1$9450_$SHARP_$1 is lcoc_core.IMeta$iface)){
$if_$1=((p1$9450_$SHARP_$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
$if_$1=((lcoc_core.IMeta.extensions(p1$9450_$SHARP_$1, ) as lcoc_core.IMeta$ext).$_meta$0(p1$9450_$SHARP_$1, ));
}
return lcoc_core.with_meta(arg$1, $if_$1, );
}, )), lcoc_core.conj$BANG_, ts$2, v$1, ));
case "or":
return ts$2;
case "as":
return (lcoc_core.conj$BANG_.$_invoke$2(ts$2, v$1, ));
default:
throw dc.ArgumentError((lcoc_core.str.$_invoke$2("No matching clause: ", (lcoc_core.pr_str.$_invoke$1(test$6640_$AUTO_$1, )), )), );
}
}
return locals$1(ts$2, k$1, );
}, ts$1, form$1, );
}
if(lcoc_core.vector$QMARK_(form$1, )){
final dc.dynamic arg$2=(lcoc_core.filter.$_invoke$1(lcoc_core.simple_symbol$QMARK_, ));
final dc.dynamic set_item9451$1=(lcoc_core.symbol.$_invoke$2(null, "&", ));
final lcoc_core.BitmapNode node$7856_$AUTO_$1=lcoc_core.BitmapNode(0, 0, 0, (dc.List<dc.dynamic>.empty()), );
late final dc.int cast$1;
if((set_item9451$1 is lcoc_core.IHash$iface)){
cast$1=(((set_item9451$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$1=(((lcoc_core.IHash.extensions(set_item9451$1, ) as lcoc_core.IHash$ext).$_hash$0(set_item9451$1, )) as dc.int);
}
final lcoc_core.BitmapNode $1=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$1, set_item9451$1, set_item9451$1, ));
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$2=(lcoc_core.PersistentHashMap(null, $1, -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
final dc.dynamic $2=(lcoc_core.remove.$_invoke$1(lcoc_core.PersistentHashSet(null, cast$2, -1, ), ));
final dc.dynamic $3=(lcoc_core.comp.$_invoke$2(arg$2, $2, ));
return (lcoc_core.transduce.$_invoke$4($3, lcoc_core.conj$BANG_, ts$1, form$1, ));
}
final dc.String arg$3=(lcoc_core.str.$_invoke$2("Unexpected binding form ", (lcoc_core.pr_str.$_invoke$1(form$1, )), ));
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "unexpected-form", 1936959982, ), ));
(fl$1[1]=form$1);
(fl$1[2]=const lcoc_core.Keyword(null, "whole-form", 1211244985, ));
(fl$1[3]=destructuring_form$1);
throw (lcoc_core.ex_info.$_invoke$2(arg$3, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 33570816, 33570816, fl$1, ), -1, ), ));
};
return lcoc_core.persistent$BANG_(locals$1(lcoc_core.transient(lcoc_core.$_EMPTY_SET, ), destructuring_form$1, ), );
}

// END destructuring-bound-locals

// BEGIN dispatch-to-repl!
dc.dynamic dispatch_to_repl$BANG_(dc.dynamic tag$1, dc.dynamic thunk$1, dc.dynamic mode$1, ){
final dc.dynamic f$1=lcoc_core.deref(lcoc_flutter.$STAR_repls, );
late final dc.dynamic or$6718_$AUTO_$1;
if((f$1 is dc.Function)){
or$6718_$AUTO_$1=(f$1 as dc.Function)(tag$1, );
}else if((f$1 is lcoc_core.IFn$iface)){
or$6718_$AUTO_$1=((f$1 as lcoc_core.IFn$iface).$_invoke$1(tag$1, ));
}else{
or$6718_$AUTO_$1=(lcoc_core.IFn.extensions(f$1, ).$_invoke$1(f$1, tag$1, ));
}
late final dc.dynamic repl$1;
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
repl$1=or$6718_$AUTO_$1;
}else{
final dc.dynamic doto$7753_$AUTO_$1=lcoc_flutter.spawn_repl$BANG_(tag$1, );
(lcoc_core.swap$BANG_.$_invoke$4(lcoc_flutter.$STAR_repls, lcoc_core.assoc, tag$1, doto$7753_$AUTO_$1, ));
repl$1=doto$7753_$AUTO_$1;
}
if((repl$1 is dc.Function)){
return (repl$1 as dc.Function)(thunk$1, mode$1, );
}
if((repl$1 is lcoc_core.IFn$iface)){
return ((repl$1 as lcoc_core.IFn$iface).$_invoke$2(thunk$1, mode$1, ));
}
return (lcoc_core.IFn.extensions(repl$1, ).$_invoke$2(repl$1, thunk$1, mode$1, ));
}

// END dispatch-to-repl!

// BEGIN doto-image-canvas
lcoc_core.IFn$iface doto_image_canvas=lcoc_flutter.ifn_doto_image_canvas_M__18695hm$1(null, );

// END doto-image-canvas

// BEGIN doto-layer
lcoc_core.IFn$iface doto_layer=lcoc_flutter.ifn_doto_layer_M__18695hm$1(null, );

// END doto-layer

// BEGIN edge-insets-geometry
f_widgets.EdgeInsetsGeometry edge_insets_geometry(dc.dynamic x$1, ){
if((x$1 is f_widgets.EdgeInsetsGeometry)){
return x$1;
}
if((x$1 is dc.num)){
return (f_widgets.EdgeInsets.all((x$1 as dc.num).toDouble(), ));
}
late final dc.dynamic map$9538_$2;
if(((lcoc_core.ISeq.satisfies(x$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(x$1, );
if(((false != test$1) && (null != test$1))){
map$9538_$2=lcoc_core.seq_to_map_for_destructuring(x$1, );
}else{
late final dc.dynamic $if_$1;
if((x$1 is lcoc_core.ISeqable$iface)){
$if_$1=((x$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(x$1, ) as lcoc_core.ISeqable$ext).$_seq$0(x$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
map$9538_$2=lcoc_core.first(x$1, );
}else{
map$9538_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9538_$2=x$1;
}
late final dc.dynamic top$1;
if((map$9538_$2 is lcoc_core.ILookup$iface)){
top$1=((map$9538_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "top", 2786010204, ), ));
}else{
top$1=((lcoc_core.ILookup.extensions(map$9538_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9538_$2, const lcoc_core.Keyword(null, "top", 2786010204, ), ));
}
late final dc.dynamic bottom$1;
if((map$9538_$2 is lcoc_core.ILookup$iface)){
bottom$1=((map$9538_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "bottom", 3806956146, ), ));
}else{
bottom$1=((lcoc_core.ILookup.extensions(map$9538_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9538_$2, const lcoc_core.Keyword(null, "bottom", 3806956146, ), ));
}
late final dc.dynamic left$1;
if((map$9538_$2 is lcoc_core.ILookup$iface)){
left$1=((map$9538_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "left", 1697606519, ), ));
}else{
left$1=((lcoc_core.ILookup.extensions(map$9538_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9538_$2, const lcoc_core.Keyword(null, "left", 1697606519, ), ));
}
late final dc.dynamic right$1;
if((map$9538_$2 is lcoc_core.ILookup$iface)){
right$1=((map$9538_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "right", 833452732, ), ));
}else{
right$1=((lcoc_core.ILookup.extensions(map$9538_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9538_$2, const lcoc_core.Keyword(null, "right", 833452732, ), ));
}
late final dc.dynamic start$1;
if((map$9538_$2 is lcoc_core.ILookup$iface)){
start$1=((map$9538_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "start", 1677559626, ), ));
}else{
start$1=((lcoc_core.ILookup.extensions(map$9538_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9538_$2, const lcoc_core.Keyword(null, "start", 1677559626, ), ));
}
late final dc.dynamic end$1;
if((map$9538_$2 is lcoc_core.ILookup$iface)){
end$1=((map$9538_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "end", 1447754199, ), ));
}else{
end$1=((lcoc_core.ILookup.extensions(map$9538_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9538_$2, const lcoc_core.Keyword(null, "end", 1447754199, ), ));
}
late final dc.dynamic horizontal$1;
if((map$9538_$2 is lcoc_core.ILookup$iface)){
horizontal$1=((map$9538_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "horizontal", 1858331535, ), ));
}else{
horizontal$1=((lcoc_core.ILookup.extensions(map$9538_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9538_$2, const lcoc_core.Keyword(null, "horizontal", 1858331535, ), ));
}
late final dc.dynamic vertical$1;
if((map$9538_$2 is lcoc_core.ILookup$iface)){
vertical$1=((map$9538_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "vertical", 1029362659, ), ));
}else{
vertical$1=((lcoc_core.ILookup.extensions(map$9538_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9538_$2, const lcoc_core.Keyword(null, "vertical", 1029362659, ), ));
}
late final dc.dynamic horizontal$2;
if(((false != horizontal$1) && (null != horizontal$1))){
horizontal$2=horizontal$1;
}else{
horizontal$2=0.0;
}
late final dc.dynamic vertical$2;
if(((false != vertical$1) && (null != vertical$1))){
vertical$2=vertical$1;
}else{
vertical$2=0.0;
}
late final dc.dynamic $if_$2;
if(((false != start$1) && (null != start$1))){
$if_$2=start$1;
}else{
$if_$2=end$1;
}
if(((false != $if_$2) && (null != $if_$2))){
late final dc.double cast$4;
if(((false != start$1) && (null != start$1))){
cast$4=(start$1 as dc.num).toDouble();
}else{
cast$4=(horizontal$2 as dc.num).toDouble();
}
late final dc.double cast$3;
if(((false != top$1) && (null != top$1))){
cast$3=(top$1 as dc.num).toDouble();
}else{
cast$3=(vertical$2 as dc.num).toDouble();
}
late final dc.double cast$2;
if(((false != end$1) && (null != end$1))){
cast$2=(end$1 as dc.num).toDouble();
}else{
cast$2=(horizontal$2 as dc.num).toDouble();
}
late final dc.double cast$1;
if(((false != bottom$1) && (null != bottom$1))){
cast$1=(bottom$1 as dc.num).toDouble();
}else{
cast$1=(vertical$2 as dc.num).toDouble();
}
return (f_widgets.EdgeInsetsDirectional.fromSTEB(cast$4, cast$3, cast$2, cast$1, ));
}
late final dc.double cast$8;
if(((false != left$1) && (null != left$1))){
cast$8=(left$1 as dc.num).toDouble();
}else{
cast$8=(horizontal$2 as dc.num).toDouble();
}
late final dc.double cast$7;
if(((false != top$1) && (null != top$1))){
cast$7=(top$1 as dc.num).toDouble();
}else{
cast$7=(vertical$2 as dc.num).toDouble();
}
late final dc.double cast$6;
if(((false != right$1) && (null != right$1))){
cast$6=(right$1 as dc.num).toDouble();
}else{
cast$6=(horizontal$2 as dc.num).toDouble();
}
late final dc.double cast$5;
if(((false != bottom$1) && (null != bottom$1))){
cast$5=(bottom$1 as dc.num).toDouble();
}else{
cast$5=(vertical$2 as dc.num).toDouble();
}
return (f_widgets.EdgeInsets.fromLTRB(cast$8, cast$7, cast$6, cast$5, ));
}

// END edge-insets-geometry

// BEGIN ensure-repl-point-after-directives
dc.dynamic ensure_repl_point_after_directives(dc.dynamic directive$1, dc.dynamic p$9587_$1, ){
final dc.dynamic op$1=(lcoc_core.nth.$_invoke$3(p$9587_$1, 0, null, ));
final dc.bool and$6836_$AUTO_$1=(lcoc_core.not$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "-impl-repl-point", 1941633041, ), directive$1, ));
late final dc.dynamic $if_$1;
if(and$6836_$AUTO_$1){
late final dc.bool and$6836_$AUTO_$2;
if(lcoc_core.keyword$QMARK_(op$1, )){
and$6836_$AUTO_$2=false;
}else{
and$6836_$AUTO_$2=true;
}
if(and$6836_$AUTO_$2){
if((p$9587_$1 is lcoc_core.ISeqable$iface)){
$if_$1=((p$9587_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(p$9587_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(p$9587_$1, ));
}
}else{
$if_$1=and$6836_$AUTO_$2;
}
}else{
$if_$1=and$6836_$AUTO_$1;
}
if(((false != $if_$1) && (null != $if_$1))){
return (lcoc_core.list$STAR_.$_invoke$3(const lcoc_core.Keyword(null, "-impl-repl-point", 1941633041, ), null, p$9587_$1, ));
}
return p$9587_$1;
}

// END ensure-repl-point-after-directives

// BEGIN ensure-value-sym
dc.dynamic ensure_value_sym(dc.dynamic binding$1, ){
if(lcoc_core.map$QMARK_(binding$1, )){
final dc.dynamic test$1=(const lcoc_core.Keyword(null, "as", 55427094, ).$_invoke$1(binding$1, ));
late final dc.bool $if_$1;
if(((false != test$1) && (null != test$1))){
$if_$1=false;
}else{
$if_$1=true;
}
if($if_$1){
final dc.dynamic arg$1=(lcoc_core.symbol.$_invoke$2(null, "m__9452__auto__", ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword("cljd.flutter", "ensured", 2475456849, ), )), (lcoc_core.list.$_invoke$1(true, )), ));
late final dc.dynamic $if_$2;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$2, ));
final dc.dynamic v7098$1=lcoc_core.with_meta(arg$1, $1, );
if((binding$1 is lcoc_core.IAssociative$iface)){
return ((binding$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "as", 55427094, ), v7098$1, ));
}
return ((lcoc_core.IAssociative.extensions(binding$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(binding$1, const lcoc_core.Keyword(null, "as", 55427094, ), v7098$1, ));
}
return binding$1;
}
if(lcoc_core.vector$QMARK_(binding$1, )){
late final dc.int cast$1;
if((binding$1 is lcoc_core.ICounted$iface)){
cast$1=(((binding$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(binding$1, ) as lcoc_core.ICounted$ext).$_count$0(binding$1, )) as dc.int);
}
final dc.int $2=(cast$1 - 2);
final dc.dynamic $3=(lcoc_core.nth.$_invoke$3(binding$1, $2, null, ));
final dc.bool $4=(lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "as", 55427094, ), $3, ));
if($4){
return binding$1;
}
final dc.dynamic arg$2=(lcoc_core.symbol.$_invoke$2(null, "v__9453__auto__", ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword("cljd.flutter", "ensured", 2475456849, ), )), (lcoc_core.list.$_invoke$1(true, )), ));
late final dc.dynamic $if_$3;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $5=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$3, ));
final dc.dynamic $6=lcoc_core.with_meta(arg$2, $5, );
return (lcoc_core.conj.$_invoke$3(binding$1, const lcoc_core.Keyword(null, "as", 55427094, ), $6, ));
}
if(lcoc_core.simple_symbol$QMARK_(binding$1, )){
return binding$1;
}
return null;
}

// END ensure-value-sym

// BEGIN expand-animate
dc.dynamic expand_animate(dc.dynamic $AMPERSAND_env$1, dc.dynamic env$1, dc.dynamic binding$1, dc.dynamic expr$1, dc.dynamic p$9550_$1, dc.dynamic forms$1, ){
late final dc.dynamic opts$2;
if(((lcoc_core.ISeq.satisfies(p$9550_$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(p$9550_$1, );
if(((false != test$1) && (null != test$1))){
opts$2=lcoc_core.seq_to_map_for_destructuring(p$9550_$1, );
}else{
late final dc.dynamic $if_$1;
if((p$9550_$1 is lcoc_core.ISeqable$iface)){
$if_$1=((p$9550_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(p$9550_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(p$9550_$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
opts$2=lcoc_core.first(p$9550_$1, );
}else{
opts$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
opts$2=p$9550_$1;
}
late final dc.dynamic lerp$1;
if((opts$2 is lcoc_core.ILookup$iface)){
lerp$1=((opts$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "lerp", 115064163, ), ));
}else{
lerp$1=((lcoc_core.ILookup.extensions(opts$2, ) as lcoc_core.ILookup$ext).$_lookup$1(opts$2, const lcoc_core.Keyword(null, "lerp", 115064163, ), ));
}
late final dc.dynamic on_end$1;
if((opts$2 is lcoc_core.ILookup$iface)){
on_end$1=((opts$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "on-end", 2183108005, ), ));
}else{
on_end$1=((lcoc_core.ILookup.extensions(opts$2, ) as lcoc_core.ILookup$ext).$_lookup$1(opts$2, const lcoc_core.Keyword(null, "on-end", 2183108005, ), ));
}
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart:core", "Duration", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".milliseconds", )), )), (lcoc_core.list.$_invoke$1(500, )), ));
late final dc.dynamic not_found7142$1;
if((o6974$2 is lcoc_core.ISeqable$iface)){
not_found7142$1=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
not_found7142$1=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
late final dc.dynamic duration$1;
if((opts$2 is lcoc_core.ILookup$iface)){
duration$1=((opts$2 as lcoc_core.ILookup$iface).$_lookup$2(const lcoc_core.Keyword(null, "duration", 3166872430, ), not_found7142$1, ));
}else{
duration$1=((lcoc_core.ILookup.extensions(opts$2, ) as lcoc_core.ILookup$ext).$_lookup$2(opts$2, const lcoc_core.Keyword(null, "duration", 3166872430, ), not_found7142$1, ));
}
final dc.dynamic not_found7142$2=(lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "Curves.linear", ));
late final dc.dynamic curve$1;
if((opts$2 is lcoc_core.ILookup$iface)){
curve$1=((opts$2 as lcoc_core.ILookup$iface).$_lookup$2(const lcoc_core.Keyword(null, "curve", 418324989, ), not_found7142$2, ));
}else{
curve$1=((lcoc_core.ILookup.extensions(opts$2, ) as lcoc_core.ILookup$ext).$_lookup$2(opts$2, const lcoc_core.Keyword(null, "curve", 418324989, ), not_found7142$2, ));
}
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "TweenAnimationBuilder", )), ));
final dc.dynamic arg$11=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), ));
final dc.dynamic arg$10=(lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), ));
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".tween", )), ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "tween-with", )), )), (lcoc_core.list.$_invoke$1(lerp$1, )), (lcoc_core.list.$_invoke$1(expr$1, )), ));
late final dc.dynamic $if_$2;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $8=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".duration", )), ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1(duration$1, ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".curve", )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1(curve$1, ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".onEnd", )), ));
late final dc.dynamic $if_$4;
if(((false != on_end$1) && (null != on_end$1))){
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$0());
late final dc.dynamic $if_$3;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$3, ));
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$4(arg$1, $2, (lcoc_core.list.$_invoke$1(on_end$1, )), (lcoc_core.list.$_invoke$1(null, )), ));
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
}else{
$if_$4=null;
}
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".builder", )), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), (lcoc_core.list.$_invoke$1(binding$1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9549__auto__", )), )), ));
late final dc.dynamic $if_$5;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $3=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$5, ));
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($3, ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.assoc.$_invoke$5(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), true, )), )), forms$1, ));
late final dc.dynamic $if_$6;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($if_$6, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$3(arg$2, $5, $4, ));
late final dc.dynamic $if_$7;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$7, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke_more$10(arg$12, arg$11, arg$10, arg$9, $8, arg$8, arg$7, arg$6, arg$5, [arg$4, $7, arg$3, $6, ], ));
if((o6974$9 is lcoc_core.ISeqable$iface)){
return ((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}

// END expand-animate

// BEGIN expand-bg-watcher
dc.dynamic expand_bg_watcher(dc.dynamic $AMPERSAND_env$1, dc.dynamic env$1, dc.dynamic binding$1, dc.dynamic expr$1, dc.dynamic p$9484_$1, dc.dynamic body$1, dc.dynamic forms$1, ){
late final dc.dynamic opts$2;
if(((lcoc_core.ISeq.satisfies(p$9484_$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(p$9484_$1, );
if(((false != test$1) && (null != test$1))){
opts$2=lcoc_core.seq_to_map_for_destructuring(p$9484_$1, );
}else{
late final dc.dynamic $if_$1;
if((p$9484_$1 is lcoc_core.ISeqable$iface)){
$if_$1=((p$9484_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(p$9484_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(p$9484_$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
opts$2=lcoc_core.first(p$9484_$1, );
}else{
opts$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
opts$2=p$9484_$1;
}
late final dc.dynamic dispose$1;
if((opts$2 is lcoc_core.ILookup$iface)){
dispose$1=((opts$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "dispose", 4183551234, ), ));
}else{
dispose$1=((lcoc_core.ILookup.extensions(opts$2, ) as lcoc_core.ILookup$ext).$_lookup$1(opts$2, const lcoc_core.Keyword(null, "dispose", 4183551234, ), ));
}
final dc.dynamic accessor$1=(const lcoc_core.Keyword(null, ">", 1674685720, ).$_invoke$1(opts$2, ));
late final dc.dynamic dispose$2;
if(dc.identical(dispose$1, true, )){
dispose$2=(lcoc_core.symbol.$_invoke$2(null, ".dispose", ));
}else{
dispose$2=dispose$1;
}
final dc.dynamic refresh_on$1=lcoc_flutter.refresh_on_expr(opts$2, $AMPERSAND_env$1, expr$1, );
final dc.dynamic state$1=(lcoc_core.symbol.$_invoke$2(null, "state__9474__auto__", ));
final dc.dynamic subscribable$1=(lcoc_core.symbol.$_invoke$2(null, "subscribable__9475__auto__", ));
late final dc.dynamic update_state$1;
if(((false != accessor$1) && (null != accessor$1))){
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9476__auto__", )), )), ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$2, ));
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1(binding$1, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), )), (lcoc_core.list.$_invoke$1(subscribable$1, )), (lcoc_core.list.$_invoke$1(accessor$1, )), ));
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$2(arg$1, $2, ));
late final dc.dynamic $if_$4;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $3=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$4, ));
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($3, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$4(arg$2, $4, body$1, (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$5;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($if_$5, ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$3(arg$3, $6, $5, ));
if((o6974$6 is lcoc_core.ISeqable$iface)){
update_state$1=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
update_state$1=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
}else{
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "x__9477__auto__", )), )), ));
late final dc.dynamic $if_$6;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $7=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$6, ));
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($7, ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(binding$1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "x__9477__auto__", )), )), ));
late final dc.dynamic $if_$7;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $8=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$7, ));
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($8, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$4(arg$4, $9, body$1, (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$8;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($if_$8, ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$3(arg$5, $11, $10, ));
if((o6974$10 is lcoc_core.ISeqable$iface)){
update_state$1=((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
update_state$1=((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}
}
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "update__9478__auto__", )), ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1(update_state$1, ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "sub__9479__auto__", )), ));
final dc.dynamic o6974$11=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-subscribe", )), )), (lcoc_core.list.$_invoke$1(subscribable$1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "update__9478__auto__", )), )), ));
late final dc.dynamic $if_$9;
if((o6974$11 is lcoc_core.ISeqable$iface)){
$if_$9=((o6974$11 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$9=((lcoc_core.ISeqable.extensions(o6974$11, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$11, ));
}
final dc.dynamic $12=(lcoc_core.list.$_invoke$1($if_$9, ));
final dc.dynamic o6974$12=(lcoc_core.concat.$_invoke$4(arg$8, arg$7, arg$6, $12, ));
late final dc.dynamic $if_$10;
if((o6974$12 is lcoc_core.ISeqable$iface)){
$if_$10=((o6974$12 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$10=((lcoc_core.ISeqable.extensions(o6974$12, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$12, ));
}
final dc.dynamic $13=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$10, ));
final dc.dynamic $15=(lcoc_core.list.$_invoke$1($13, ));
final dc.dynamic o6974$13=(lcoc_core.concat.$_invoke$4((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-call-with-immediate-value", )), )), (lcoc_core.list.$_invoke$1(subscribable$1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "sub__9479__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "update__9478__auto__", )), )), ));
late final dc.dynamic $if_$11;
if((o6974$13 is lcoc_core.ISeqable$iface)){
$if_$11=((o6974$13 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$11=((lcoc_core.ISeqable.extensions(o6974$13, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$13, ));
}
final dc.dynamic $14=(lcoc_core.list.$_invoke$1($if_$11, ));
final dc.dynamic o6974$14=(lcoc_core.concat.$_invoke$4(arg$9, $15, $14, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "sub__9479__auto__", )), )), ));
late final dc.dynamic subscribe_call$1;
if((o6974$14 is lcoc_core.ISeqable$iface)){
subscribe_call$1=((o6974$14 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
subscribe_call$1=((lcoc_core.ISeqable.extensions(o6974$14, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$14, ));
}
final dc.dynamic arg$51=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "reify", )), ));
final dc.dynamic arg$50=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "extends", 2423719685, ), ));
final dc.dynamic o6974$15=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "StatefulWidget", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), )), (lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), )), ));
late final dc.dynamic $if_$12;
if((o6974$15 is lcoc_core.ISeqable$iface)){
$if_$12=((o6974$15 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$12=((lcoc_core.ISeqable.extensions(o6974$15, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$15, ));
}
final dc.dynamic $90=(lcoc_core.list.$_invoke$1($if_$12, ));
final dc.dynamic arg$49=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "no-meta", 2746638389, ), ));
final dc.dynamic arg$48=(lcoc_core.list.$_invoke$1(true, ));
final dc.dynamic arg$10=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "createState", )), ));
final dc.dynamic o6974$16=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9480__auto__", )), )), ));
late final dc.dynamic $if_$13;
if((o6974$16 is lcoc_core.ISeqable$iface)){
$if_$13=((o6974$16 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$13=((lcoc_core.ISeqable.extensions(o6974$16, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$16, ));
}
final dc.dynamic $16=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$13, ));
final dc.dynamic $18=(lcoc_core.list.$_invoke$1($16, ));
final dc.dynamic o6974$17=(lcoc_core.concat.$_invoke$5((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "WatchState", )), )), (lcoc_core.list.$_invoke$1(null, )), (lcoc_core.list.$_invoke$1(null, )), (lcoc_core.list.$_invoke$1(null, )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$14;
if((o6974$17 is lcoc_core.ISeqable$iface)){
$if_$14=((o6974$17 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$14=((lcoc_core.ISeqable.extensions(o6974$17, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$17, ));
}
final dc.dynamic $17=(lcoc_core.list.$_invoke$1($if_$14, ));
final dc.dynamic o6974$18=(lcoc_core.concat.$_invoke$3(arg$10, $18, $17, ));
late final dc.dynamic $if_$15;
if((o6974$18 is lcoc_core.ISeqable$iface)){
$if_$15=((o6974$18 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$15=((lcoc_core.ISeqable.extensions(o6974$18, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$18, ));
}
final dc.dynamic $89=(lcoc_core.list.$_invoke$1($if_$15, ));
final dc.dynamic arg$47=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "StateLifecycle", )), ));
final dc.dynamic arg$18=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-init-state", )), ));
final dc.dynamic o6974$19=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9480__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9481__auto__", )), )), ));
late final dc.dynamic $if_$16;
if((o6974$19 is lcoc_core.ISeqable$iface)){
$if_$16=((o6974$19 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$16=((lcoc_core.ISeqable.extensions(o6974$19, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$19, ));
}
final dc.dynamic $19=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$16, ));
final dc.dynamic $34=(lcoc_core.list.$_invoke$1($19, ));
final dc.dynamic arg$17=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1(state$1, ));
final dc.dynamic arg$11=(lcoc_core.symbol.$_invoke$2(null, "state__9481__auto__", ));
final dc.dynamic o6974$20=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "WatchState", )), )), ));
late final dc.dynamic $if_$17;
if((o6974$20 is lcoc_core.ISeqable$iface)){
$if_$17=((o6974$20 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$17=((lcoc_core.ISeqable.extensions(o6974$20, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$20, ));
}
final dc.dynamic $20=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$17, ));
final dc.dynamic $21=lcoc_core.with_meta(arg$11, $20, );
final dc.dynamic $22=(lcoc_core.list.$_invoke$1($21, ));
final dc.dynamic o6974$21=(lcoc_core.concat.$_invoke$4(arg$12, $22, (lcoc_core.list.$_invoke$1(subscribable$1, )), (lcoc_core.list.$_invoke$1(expr$1, )), ));
late final dc.dynamic $if_$18;
if((o6974$21 is lcoc_core.ISeqable$iface)){
$if_$18=((o6974$21 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$18=((lcoc_core.ISeqable.extensions(o6974$21, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$21, ));
}
final dc.dynamic $23=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$18, ));
final dc.dynamic $32=(lcoc_core.list.$_invoke$1($23, ));
final dc.dynamic arg$14=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$13=(lcoc_core.list.$_invoke$1(state$1, ));
final dc.dynamic o6974$22=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k!", )), )), (lcoc_core.list.$_invoke$1(refresh_on$1, )), ));
late final dc.dynamic $if_$19;
if((o6974$22 is lcoc_core.ISeqable$iface)){
$if_$19=((o6974$22 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$19=((lcoc_core.ISeqable.extensions(o6974$22, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$22, ));
}
final dc.dynamic $25=(lcoc_core.list.$_invoke$1($if_$19, ));
final dc.dynamic o6974$23=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscribable!", )), )), (lcoc_core.list.$_invoke$1(subscribable$1, )), ));
late final dc.dynamic $if_$20;
if((o6974$23 is lcoc_core.ISeqable$iface)){
$if_$20=((o6974$23 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$20=((lcoc_core.ISeqable.extensions(o6974$23, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$23, ));
}
final dc.dynamic $24=(lcoc_core.list.$_invoke$1($if_$20, ));
final dc.dynamic o6974$24=(lcoc_core.concat.$_invoke$4(arg$14, arg$13, $25, $24, ));
late final dc.dynamic $if_$21;
if((o6974$24 is lcoc_core.ISeqable$iface)){
$if_$21=((o6974$24 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$21=((lcoc_core.ISeqable.extensions(o6974$24, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$24, ));
}
final dc.dynamic $31=(lcoc_core.list.$_invoke$1($if_$21, ));
final dc.dynamic arg$16=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:da", "scheduleMicrotask", )), ));
final dc.dynamic arg$15=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$25=(lcoc_core.concat.$_invoke$0());
late final dc.dynamic $if_$22;
if((o6974$25 is lcoc_core.ISeqable$iface)){
$if_$22=((o6974$25 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$22=((lcoc_core.ISeqable.extensions(o6974$25, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$25, ));
}
final dc.dynamic $26=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$22, ));
final dc.dynamic $28=(lcoc_core.list.$_invoke$1($26, ));
final dc.dynamic o6974$26=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscription!", )), )), (lcoc_core.list.$_invoke$1(state$1, )), (lcoc_core.list.$_invoke$1(subscribe_call$1, )), ));
late final dc.dynamic $if_$23;
if((o6974$26 is lcoc_core.ISeqable$iface)){
$if_$23=((o6974$26 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$23=((lcoc_core.ISeqable.extensions(o6974$26, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$26, ));
}
final dc.dynamic $27=(lcoc_core.list.$_invoke$1($if_$23, ));
final dc.dynamic o6974$27=(lcoc_core.concat.$_invoke$3(arg$15, $28, $27, ));
late final dc.dynamic $if_$24;
if((o6974$27 is lcoc_core.ISeqable$iface)){
$if_$24=((o6974$27 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$24=((lcoc_core.ISeqable.extensions(o6974$27, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$27, ));
}
final dc.dynamic $29=(lcoc_core.list.$_invoke$1($if_$24, ));
final dc.dynamic o6974$28=(lcoc_core.concat.$_invoke$2(arg$16, $29, ));
late final dc.dynamic $if_$25;
if((o6974$28 is lcoc_core.ISeqable$iface)){
$if_$25=((o6974$28 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$25=((lcoc_core.ISeqable.extensions(o6974$28, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$28, ));
}
final dc.dynamic $30=(lcoc_core.list.$_invoke$1($if_$25, ));
final dc.dynamic o6974$29=(lcoc_core.concat.$_invoke$4(arg$17, $32, $31, $30, ));
late final dc.dynamic $if_$26;
if((o6974$29 is lcoc_core.ISeqable$iface)){
$if_$26=((o6974$29 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$26=((lcoc_core.ISeqable.extensions(o6974$29, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$29, ));
}
final dc.dynamic $33=(lcoc_core.list.$_invoke$1($if_$26, ));
final dc.dynamic o6974$30=(lcoc_core.concat.$_invoke$3(arg$18, $34, $33, ));
late final dc.dynamic $if_$27;
if((o6974$30 is lcoc_core.ISeqable$iface)){
$if_$27=((o6974$30 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$27=((lcoc_core.ISeqable.extensions(o6974$30, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$30, ));
}
final dc.dynamic $88=(lcoc_core.list.$_invoke$1($if_$27, ));
final dc.dynamic arg$28=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-dispose-state", )), ));
final dc.dynamic o6974$31=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9480__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9481__auto__", )), )), ));
late final dc.dynamic $if_$28;
if((o6974$31 is lcoc_core.ISeqable$iface)){
$if_$28=((o6974$31 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$28=((lcoc_core.ISeqable.extensions(o6974$31, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$31, ));
}
final dc.dynamic $35=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$28, ));
final dc.dynamic $51=(lcoc_core.list.$_invoke$1($35, ));
final dc.dynamic arg$27=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$20=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9481__auto__", )), ));
final dc.dynamic arg$19=(lcoc_core.symbol.$_invoke$2(null, "state__9481__auto__", ));
final dc.dynamic o6974$32=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "WatchState", )), )), ));
late final dc.dynamic $if_$29;
if((o6974$32 is lcoc_core.ISeqable$iface)){
$if_$29=((o6974$32 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$29=((lcoc_core.ISeqable.extensions(o6974$32, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$32, ));
}
final dc.dynamic $36=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$29, ));
final dc.dynamic $37=lcoc_core.with_meta(arg$19, $36, );
final dc.dynamic $38=(lcoc_core.list.$_invoke$1($37, ));
final dc.dynamic o6974$33=(lcoc_core.concat.$_invoke$2(arg$20, $38, ));
late final dc.dynamic $if_$30;
if((o6974$33 is lcoc_core.ISeqable$iface)){
$if_$30=((o6974$33 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$30=((lcoc_core.ISeqable.extensions(o6974$33, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$33, ));
}
final dc.dynamic $39=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$30, ));
final dc.dynamic $49=(lcoc_core.list.$_invoke$1($39, ));
final dc.dynamic arg$24=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic o6974$34=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscribable", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9481__auto__", )), )), ));
late final dc.dynamic $if_$31;
if((o6974$34 is lcoc_core.ISeqable$iface)){
$if_$31=((o6974$34 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$31=((lcoc_core.ISeqable.extensions(o6974$34, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$34, ));
}
final dc.dynamic $43=(lcoc_core.list.$_invoke$1($if_$31, ));
final dc.dynamic arg$21=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-unsubscribe", )), ));
final dc.dynamic o6974$35=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscription", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9481__auto__", )), )), ));
late final dc.dynamic $if_$32;
if((o6974$35 is lcoc_core.ISeqable$iface)){
$if_$32=((o6974$35 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$32=((lcoc_core.ISeqable.extensions(o6974$35, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$35, ));
}
final dc.dynamic $40=(lcoc_core.list.$_invoke$1($if_$32, ));
final dc.dynamic o6974$36=(lcoc_core.concat.$_invoke$2(arg$21, $40, ));
late final dc.dynamic $if_$33;
if((o6974$36 is lcoc_core.ISeqable$iface)){
$if_$33=((o6974$36 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$33=((lcoc_core.ISeqable.extensions(o6974$36, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$36, ));
}
final dc.dynamic $42=(lcoc_core.list.$_invoke$1($if_$33, ));
late final lcoc_core.PersistentVector? $if_$36;
if(((false != dispose$2) && (null != dispose$2))){
final lcoc_core.VectorNode arg$23=lcoc_core.$_EMPTY_VECTOR.root;
final dc.dynamic arg$22=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic o6974$37=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart", "type-like", )), )), (lcoc_core.list.$_invoke$1(expr$1, )), ));
late final dc.dynamic $if_$34;
if((o6974$37 is lcoc_core.ISeqable$iface)){
$if_$34=((o6974$37 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$34=((lcoc_core.ISeqable.extensions(o6974$37, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$37, ));
}
final dc.dynamic $41=(lcoc_core.list.$_invoke$1($if_$34, ));
final dc.dynamic o6974$38=(lcoc_core.concat.$_invoke$3(arg$22, $41, (lcoc_core.list.$_invoke$1(dispose$2, )), ));
late final dc.dynamic $if_$35;
if((o6974$38 is lcoc_core.ISeqable$iface)){
$if_$35=((o6974$38 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$35=((lcoc_core.ISeqable.extensions(o6974$38, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$38, ));
}
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(1, $if_$35, ));
$if_$36=lcoc_core.PersistentVector(null, 1, 5, arg$23, fl$1, -1, );
}else{
$if_$36=null;
}
final dc.dynamic o6974$39=(lcoc_core.concat.$_invoke$4(arg$24, $43, $42, $if_$36, ));
late final dc.dynamic $if_$37;
if((o6974$39 is lcoc_core.ISeqable$iface)){
$if_$37=((o6974$39 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$37=((lcoc_core.ISeqable.extensions(o6974$39, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$39, ));
}
final dc.dynamic $48=(lcoc_core.list.$_invoke$1($if_$37, ));
final dc.dynamic arg$26=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$25=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9481__auto__", )), ));
final dc.dynamic o6974$40=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k!", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$38;
if((o6974$40 is lcoc_core.ISeqable$iface)){
$if_$38=((o6974$40 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$38=((lcoc_core.ISeqable.extensions(o6974$40, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$40, ));
}
final dc.dynamic $46=(lcoc_core.list.$_invoke$1($if_$38, ));
final dc.dynamic o6974$41=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscribable!", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$39;
if((o6974$41 is lcoc_core.ISeqable$iface)){
$if_$39=((o6974$41 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$39=((lcoc_core.ISeqable.extensions(o6974$41, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$41, ));
}
final dc.dynamic $45=(lcoc_core.list.$_invoke$1($if_$39, ));
final dc.dynamic o6974$42=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscription!", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$40;
if((o6974$42 is lcoc_core.ISeqable$iface)){
$if_$40=((o6974$42 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$40=((lcoc_core.ISeqable.extensions(o6974$42, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$42, ));
}
final dc.dynamic $44=(lcoc_core.list.$_invoke$1($if_$40, ));
final dc.dynamic o6974$43=(lcoc_core.concat.$_invoke$5(arg$26, arg$25, $46, $45, $44, ));
late final dc.dynamic $if_$41;
if((o6974$43 is lcoc_core.ISeqable$iface)){
$if_$41=((o6974$43 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$41=((lcoc_core.ISeqable.extensions(o6974$43, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$43, ));
}
final dc.dynamic $47=(lcoc_core.list.$_invoke$1($if_$41, ));
final dc.dynamic o6974$44=(lcoc_core.concat.$_invoke$4(arg$27, $49, $48, $47, ));
late final dc.dynamic $if_$42;
if((o6974$44 is lcoc_core.ISeqable$iface)){
$if_$42=((o6974$44 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$42=((lcoc_core.ISeqable.extensions(o6974$44, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$44, ));
}
final dc.dynamic $50=(lcoc_core.list.$_invoke$1($if_$42, ));
final dc.dynamic o6974$45=(lcoc_core.concat.$_invoke$3(arg$28, $51, $50, ));
late final dc.dynamic $if_$43;
if((o6974$45 is lcoc_core.ISeqable$iface)){
$if_$43=((o6974$45 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$43=((lcoc_core.ISeqable.extensions(o6974$45, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$45, ));
}
final dc.dynamic $87=(lcoc_core.list.$_invoke$1($if_$43, ));
final dc.dynamic arg$30=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-build", )), ));
final dc.dynamic o6974$46=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9480__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9481__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "ctx__9482__auto__", )), )), ));
late final dc.dynamic $if_$44;
if((o6974$46 is lcoc_core.ISeqable$iface)){
$if_$44=((o6974$46 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$44=((lcoc_core.ISeqable.extensions(o6974$46, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$46, ));
}
final dc.dynamic $52=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$44, ));
final dc.dynamic $57=(lcoc_core.list.$_invoke$1($52, ));
final dc.dynamic arg$29=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$47=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "ctx__9482__auto__", )), )), ));
late final dc.dynamic $if_$45;
if((o6974$47 is lcoc_core.ISeqable$iface)){
$if_$45=((o6974$47 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$45=((lcoc_core.ISeqable.extensions(o6974$47, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$47, ));
}
final dc.dynamic $53=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$45, ));
final dc.dynamic $55=(lcoc_core.list.$_invoke$1($53, ));
final dc.dynamic o6974$48=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.assoc.$_invoke$5(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), true, )), )), forms$1, ));
late final dc.dynamic $if_$46;
if((o6974$48 is lcoc_core.ISeqable$iface)){
$if_$46=((o6974$48 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$46=((lcoc_core.ISeqable.extensions(o6974$48, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$48, ));
}
final dc.dynamic $54=(lcoc_core.list.$_invoke$1($if_$46, ));
final dc.dynamic o6974$49=(lcoc_core.concat.$_invoke$3(arg$29, $55, $54, ));
late final dc.dynamic $if_$47;
if((o6974$49 is lcoc_core.ISeqable$iface)){
$if_$47=((o6974$49 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$47=((lcoc_core.ISeqable.extensions(o6974$49, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$49, ));
}
final dc.dynamic $56=(lcoc_core.list.$_invoke$1($if_$47, ));
final dc.dynamic o6974$50=(lcoc_core.concat.$_invoke$3(arg$30, $57, $56, ));
late final dc.dynamic $if_$48;
if((o6974$50 is lcoc_core.ISeqable$iface)){
$if_$48=((o6974$50 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$48=((lcoc_core.ISeqable.extensions(o6974$50, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$50, ));
}
final dc.dynamic $86=(lcoc_core.list.$_invoke$1($if_$48, ));
final dc.dynamic arg$46=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-update-state", )), ));
final dc.dynamic o6974$51=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9480__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9481__auto__", )), )), ));
late final dc.dynamic $if_$49;
if((o6974$51 is lcoc_core.ISeqable$iface)){
$if_$49=((o6974$51 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$49=((lcoc_core.ISeqable.extensions(o6974$51, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$51, ));
}
final dc.dynamic $58=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$49, ));
final dc.dynamic $84=(lcoc_core.list.$_invoke$1($58, ));
final dc.dynamic arg$45=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$32=(lcoc_core.list.$_invoke$1(state$1, ));
final dc.dynamic arg$31=(lcoc_core.symbol.$_invoke$2(null, "state__9481__auto__", ));
final dc.dynamic o6974$52=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "WatchState", )), )), ));
late final dc.dynamic $if_$50;
if((o6974$52 is lcoc_core.ISeqable$iface)){
$if_$50=((o6974$52 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$50=((lcoc_core.ISeqable.extensions(o6974$52, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$52, ));
}
final dc.dynamic $59=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$50, ));
final dc.dynamic $60=lcoc_core.with_meta(arg$31, $59, );
final dc.dynamic $61=(lcoc_core.list.$_invoke$1($60, ));
final dc.dynamic o6974$53=(lcoc_core.concat.$_invoke$4(arg$32, $61, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "k__9483__auto__", )), )), (lcoc_core.list.$_invoke$1(refresh_on$1, )), ));
late final dc.dynamic $if_$51;
if((o6974$53 is lcoc_core.ISeqable$iface)){
$if_$51=((o6974$53 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$51=((lcoc_core.ISeqable.extensions(o6974$53, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$53, ));
}
final dc.dynamic $62=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$51, ));
final dc.dynamic $82=(lcoc_core.list.$_invoke$1($62, ));
final dc.dynamic arg$44=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-not", )), ));
final dc.dynamic arg$34=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "=", )), ));
final dc.dynamic arg$33=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "k__9483__auto__", )), ));
final dc.dynamic o6974$54=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k", )), )), (lcoc_core.list.$_invoke$1(state$1, )), ));
late final dc.dynamic $if_$52;
if((o6974$54 is lcoc_core.ISeqable$iface)){
$if_$52=((o6974$54 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$52=((lcoc_core.ISeqable.extensions(o6974$54, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$54, ));
}
final dc.dynamic $63=(lcoc_core.list.$_invoke$1($if_$52, ));
final dc.dynamic o6974$55=(lcoc_core.concat.$_invoke$3(arg$34, arg$33, $63, ));
late final dc.dynamic $if_$53;
if((o6974$55 is lcoc_core.ISeqable$iface)){
$if_$53=((o6974$55 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$53=((lcoc_core.ISeqable.extensions(o6974$55, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$55, ));
}
final dc.dynamic $80=(lcoc_core.list.$_invoke$1($if_$53, ));
final dc.dynamic arg$38=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic o6974$56=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscribable", )), )), (lcoc_core.list.$_invoke$1(state$1, )), ));
late final dc.dynamic $if_$54;
if((o6974$56 is lcoc_core.ISeqable$iface)){
$if_$54=((o6974$56 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$54=((lcoc_core.ISeqable.extensions(o6974$56, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$56, ));
}
final dc.dynamic $67=(lcoc_core.list.$_invoke$1($if_$54, ));
final dc.dynamic arg$35=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-unsubscribe", )), ));
final dc.dynamic o6974$57=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscription", )), )), (lcoc_core.list.$_invoke$1(state$1, )), ));
late final dc.dynamic $if_$55;
if((o6974$57 is lcoc_core.ISeqable$iface)){
$if_$55=((o6974$57 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$55=((lcoc_core.ISeqable.extensions(o6974$57, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$57, ));
}
final dc.dynamic $64=(lcoc_core.list.$_invoke$1($if_$55, ));
final dc.dynamic o6974$58=(lcoc_core.concat.$_invoke$2(arg$35, $64, ));
late final dc.dynamic $if_$56;
if((o6974$58 is lcoc_core.ISeqable$iface)){
$if_$56=((o6974$58 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$56=((lcoc_core.ISeqable.extensions(o6974$58, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$58, ));
}
final dc.dynamic $66=(lcoc_core.list.$_invoke$1($if_$56, ));
late final lcoc_core.PersistentVector? $if_$59;
if(((false != dispose$2) && (null != dispose$2))){
final lcoc_core.VectorNode arg$37=lcoc_core.$_EMPTY_VECTOR.root;
final dc.dynamic arg$36=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic o6974$59=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart", "type-like", )), )), (lcoc_core.list.$_invoke$1(expr$1, )), ));
late final dc.dynamic $if_$57;
if((o6974$59 is lcoc_core.ISeqable$iface)){
$if_$57=((o6974$59 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$57=((lcoc_core.ISeqable.extensions(o6974$59, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$59, ));
}
final dc.dynamic $65=(lcoc_core.list.$_invoke$1($if_$57, ));
final dc.dynamic o6974$60=(lcoc_core.concat.$_invoke$3(arg$36, $65, (lcoc_core.list.$_invoke$1(dispose$2, )), ));
late final dc.dynamic $if_$58;
if((o6974$60 is lcoc_core.ISeqable$iface)){
$if_$58=((o6974$60 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$58=((lcoc_core.ISeqable.extensions(o6974$60, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$60, ));
}
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(1, $if_$58, ));
$if_$59=lcoc_core.PersistentVector(null, 1, 5, arg$37, fl$2, -1, );
}else{
$if_$59=null;
}
final dc.dynamic o6974$61=(lcoc_core.concat.$_invoke$4(arg$38, $67, $66, $if_$59, ));
late final dc.dynamic $if_$60;
if((o6974$61 is lcoc_core.ISeqable$iface)){
$if_$60=((o6974$61 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$60=((lcoc_core.ISeqable.extensions(o6974$61, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$61, ));
}
final dc.dynamic $79=(lcoc_core.list.$_invoke$1($if_$60, ));
final dc.dynamic arg$43=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$62=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(subscribable$1, )), (lcoc_core.list.$_invoke$1(expr$1, )), ));
late final dc.dynamic $if_$61;
if((o6974$62 is lcoc_core.ISeqable$iface)){
$if_$61=((o6974$62 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$61=((lcoc_core.ISeqable.extensions(o6974$62, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$62, ));
}
final dc.dynamic $68=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$61, ));
final dc.dynamic $77=(lcoc_core.list.$_invoke$1($68, ));
final dc.dynamic arg$40=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$39=(lcoc_core.list.$_invoke$1(state$1, ));
final dc.dynamic o6974$63=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k!", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "k__9483__auto__", )), )), ));
late final dc.dynamic $if_$62;
if((o6974$63 is lcoc_core.ISeqable$iface)){
$if_$62=((o6974$63 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$62=((lcoc_core.ISeqable.extensions(o6974$63, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$63, ));
}
final dc.dynamic $70=(lcoc_core.list.$_invoke$1($if_$62, ));
final dc.dynamic o6974$64=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscribable!", )), )), (lcoc_core.list.$_invoke$1(subscribable$1, )), ));
late final dc.dynamic $if_$63;
if((o6974$64 is lcoc_core.ISeqable$iface)){
$if_$63=((o6974$64 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$63=((lcoc_core.ISeqable.extensions(o6974$64, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$64, ));
}
final dc.dynamic $69=(lcoc_core.list.$_invoke$1($if_$63, ));
final dc.dynamic o6974$65=(lcoc_core.concat.$_invoke$4(arg$40, arg$39, $70, $69, ));
late final dc.dynamic $if_$64;
if((o6974$65 is lcoc_core.ISeqable$iface)){
$if_$64=((o6974$65 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$64=((lcoc_core.ISeqable.extensions(o6974$65, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$65, ));
}
final dc.dynamic $76=(lcoc_core.list.$_invoke$1($if_$64, ));
final dc.dynamic arg$42=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:da", "scheduleMicrotask", )), ));
final dc.dynamic arg$41=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$66=(lcoc_core.concat.$_invoke$0());
late final dc.dynamic $if_$65;
if((o6974$66 is lcoc_core.ISeqable$iface)){
$if_$65=((o6974$66 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$65=((lcoc_core.ISeqable.extensions(o6974$66, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$66, ));
}
final dc.dynamic $71=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$65, ));
final dc.dynamic $73=(lcoc_core.list.$_invoke$1($71, ));
final dc.dynamic o6974$67=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscription!", )), )), (lcoc_core.list.$_invoke$1(state$1, )), (lcoc_core.list.$_invoke$1(subscribe_call$1, )), ));
late final dc.dynamic $if_$66;
if((o6974$67 is lcoc_core.ISeqable$iface)){
$if_$66=((o6974$67 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$66=((lcoc_core.ISeqable.extensions(o6974$67, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$67, ));
}
final dc.dynamic $72=(lcoc_core.list.$_invoke$1($if_$66, ));
final dc.dynamic o6974$68=(lcoc_core.concat.$_invoke$3(arg$41, $73, $72, ));
late final dc.dynamic $if_$67;
if((o6974$68 is lcoc_core.ISeqable$iface)){
$if_$67=((o6974$68 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$67=((lcoc_core.ISeqable.extensions(o6974$68, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$68, ));
}
final dc.dynamic $74=(lcoc_core.list.$_invoke$1($if_$67, ));
final dc.dynamic o6974$69=(lcoc_core.concat.$_invoke$2(arg$42, $74, ));
late final dc.dynamic $if_$68;
if((o6974$69 is lcoc_core.ISeqable$iface)){
$if_$68=((o6974$69 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$68=((lcoc_core.ISeqable.extensions(o6974$69, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$69, ));
}
final dc.dynamic $75=(lcoc_core.list.$_invoke$1($if_$68, ));
final dc.dynamic o6974$70=(lcoc_core.concat.$_invoke$4(arg$43, $77, $76, $75, ));
late final dc.dynamic $if_$69;
if((o6974$70 is lcoc_core.ISeqable$iface)){
$if_$69=((o6974$70 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$69=((lcoc_core.ISeqable.extensions(o6974$70, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$70, ));
}
final dc.dynamic $78=(lcoc_core.list.$_invoke$1($if_$69, ));
final dc.dynamic o6974$71=(lcoc_core.concat.$_invoke$4(arg$44, $80, $79, $78, ));
late final dc.dynamic $if_$70;
if((o6974$71 is lcoc_core.ISeqable$iface)){
$if_$70=((o6974$71 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$70=((lcoc_core.ISeqable.extensions(o6974$71, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$71, ));
}
final dc.dynamic $81=(lcoc_core.list.$_invoke$1($if_$70, ));
final dc.dynamic o6974$72=(lcoc_core.concat.$_invoke$3(arg$45, $82, $81, ));
late final dc.dynamic $if_$71;
if((o6974$72 is lcoc_core.ISeqable$iface)){
$if_$71=((o6974$72 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$71=((lcoc_core.ISeqable.extensions(o6974$72, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$72, ));
}
final dc.dynamic $83=(lcoc_core.list.$_invoke$1($if_$71, ));
final dc.dynamic o6974$73=(lcoc_core.concat.$_invoke$3(arg$46, $84, $83, ));
late final dc.dynamic $if_$72;
if((o6974$73 is lcoc_core.ISeqable$iface)){
$if_$72=((o6974$73 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$72=((lcoc_core.ISeqable.extensions(o6974$73, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$73, ));
}
final dc.dynamic $85=(lcoc_core.list.$_invoke$1($if_$72, ));
final dc.dynamic o6974$74=(lcoc_core.concat.$_invoke_more$10(arg$51, arg$50, $90, arg$49, arg$48, $89, arg$47, $88, $87, [$86, $85, ], ));
if((o6974$74 is lcoc_core.ISeqable$iface)){
return ((o6974$74 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$74, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$74, ));
}

// END expand-bg-watcher

// BEGIN expand-bind
dc.dynamic expand_bind(dc.dynamic env$1, dc.dynamic bindings_map$1, dc.dynamic forms$1, ){
assert((){
late final dc.bool $if_$1;
if(lcoc_core.map$QMARK_(bindings_map$1, )){
$if_$1=true;
}else{
$if_$1=false;
}
return $if_$1;
}(), ":bind expects a map"); // assert

final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "Bind", )), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1(bindings_map$1, ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "widget", )), )), forms$1, ));
late final dc.dynamic $if_$2;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$4(arg$3, arg$2, arg$1, $1, ));
if((o6974$2 is lcoc_core.ISeqable$iface)){
return ((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}

// END expand-bind

// BEGIN expand-color
dc.dynamic expand_color(dc.dynamic env$1, dc.dynamic color$1, dc.dynamic forms$1, ){
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "ColoredBox", )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".color", )), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1(color$1, ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".child", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.assoc.$_invoke$5(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), false, )), )), forms$1, ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$1, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$7(arg$6, arg$5, arg$4, arg$3, arg$2, arg$1, $1, ));
if((o6974$2 is lcoc_core.ISeqable$iface)){
return ((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}

// END expand-color

// BEGIN expand-directive
lcoc_core.IFn$iface expand_directive=lcoc_flutter.ifn_expand_directive_M__18695hm$1(null, );

// END expand-directive

// BEGIN expand-get-inherited
dc.dynamic expand_get_inherited(dc.dynamic env$1, dc.dynamic v$1, dc.dynamic forms$1, ){
late final dc.dynamic inherit$1;
if(lcoc_core.vector$QMARK_(v$1, )){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "value-of", 1589415223, ), ));
(fl$1[1]=v$1);
inherit$1=lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 8388608, 8388608, fl$1, ), -1, );
}else{
inherit$1=v$1;
}
final dc.dynamic some$6849_$AUTO_$1=(const lcoc_core.Keyword(null, "value-of", 1589415223, ).$_invoke$1(inherit$1, ));
late final dc.dynamic inherit$2;
if((null == some$6849_$AUTO_$1)){
inherit$2=inherit$1;
}else{
inherit$2=(lcoc_core.into.$_invoke$3((lcoc_core.dissoc.$_invoke$2(inherit$1, const lcoc_core.Keyword(null, "value-of", 1589415223, ), )), (lcoc_core.map.$_invoke$1((dc.dynamic type_or_kw$1, ){
late final dc.dynamic hint$1;
if(((lcoc_core.ISeq.satisfies(type_or_kw$1, )) as dc.bool)){
hint$1=lcoc_core.first(type_or_kw$1, );
}else{
hint$1=type_or_kw$1;
}
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
late final dc.dynamic $if_$1;
if(lcoc_core.keyword$QMARK_(hint$1, )){
$if_$1=lcoc_core.name(hint$1, );
}else{
$if_$1=lcoc_flutter.camel_kebab(lcoc_core.second((lcoc_core.re_find.$_invoke$2(dc.RegExp("([^.]+?)(?:Of|\\.of)?\$", ), lcoc_core.name(hint$1, ), )), ), );
}
final dc.dynamic $1=(lcoc_core.symbol.$_invoke$1($if_$1, ));
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, $1, ));
(fl$2[1]=type_or_kw$1);
return lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$2, -1, );
}, )), some$6849_$AUTO_$1, ));
}
final dc.dynamic inherit$3=(lcoc_core.into.$_invoke$3(inherit$2, (lcoc_core.keep.$_invoke$1((dc.dynamic p$9503_$1, ){
final dc.dynamic k$1=(lcoc_core.nth.$_invoke$3(p$9503_$1, 0, null, ));
final dc.dynamic v$2=(lcoc_core.nth.$_invoke$3(p$9503_$1, 1, null, ));
if(((lcoc_core.ISeq.satisfies(v$2, )) as dc.bool)){
return null;
}
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(2, k$1, ));
(fl$3[1]=(lcoc_core.list.$_invoke$1(v$2, )));
return lcoc_core.PersistentVector(null, 2, 5, arg$2, fl$3, -1, );
}, )), inherit$2, ));
final dc.dynamic bindings_sym$1=(lcoc_core.symbol.$_invoke$2(null, "bindings__9499__auto__", ));
final dc.dynamic map$9502_$1=lcoc_core.group_by((dc.dynamic p$9507_$1, ){
final dc.dynamic sym$1=(lcoc_core.nth.$_invoke$3(p$9507_$1, 0, null, ));
final dc.dynamic vec$9511_$1=(lcoc_core.nth.$_invoke$3(p$9507_$1, 1, null, ));
final dc.dynamic type_or_kw$2=(lcoc_core.nth.$_invoke$3(vec$9511_$1, 0, null, ));
return lcoc_core.keyword$QMARK_(type_or_kw$2, );
}, inherit$3, );
late final dc.dynamic map$9502_$2;
if(((lcoc_core.ISeq.satisfies(map$9502_$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(map$9502_$1, );
if(((false != test$1) && (null != test$1))){
map$9502_$2=lcoc_core.seq_to_map_for_destructuring(map$9502_$1, );
}else{
late final dc.dynamic $if_$2;
if((map$9502_$1 is lcoc_core.ISeqable$iface)){
$if_$2=((map$9502_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(map$9502_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(map$9502_$1, ));
}
if(((false != $if_$2) && (null != $if_$2))){
map$9502_$2=lcoc_core.first(map$9502_$1, );
}else{
map$9502_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9502_$2=map$9502_$1;
}
late final dc.dynamic inherited_widgets$1;
if((map$9502_$2 is lcoc_core.ILookup$iface)){
inherited_widgets$1=((map$9502_$2 as lcoc_core.ILookup$iface).$_lookup$1(false, ));
}else{
inherited_widgets$1=((lcoc_core.ILookup.extensions(map$9502_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9502_$2, false, ));
}
late final dc.dynamic inherited_bindings$1;
if((map$9502_$2 is lcoc_core.ILookup$iface)){
inherited_bindings$1=((map$9502_$2 as lcoc_core.ILookup$iface).$_lookup$1(true, ));
}else{
inherited_bindings$1=((lcoc_core.ILookup.extensions(map$9502_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9502_$2, true, ));
}
final dc.dynamic arg$22=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "reify", )), ));
final dc.dynamic arg$21=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "extends", 2423719685, ), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "StatelessWidget", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), )), (lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), )), ));
late final dc.dynamic $if_$3;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $26=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic arg$20=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "name-hint", 2341976313, ), ));
final dc.dynamic arg$19=(lcoc_core.list.$_invoke$1("get", ));
final dc.dynamic arg$18=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "no-meta", 2746638389, ), ));
final dc.dynamic arg$17=(lcoc_core.list.$_invoke$1(true, ));
final dc.dynamic arg$16=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "build", )), ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9501__auto__", )), )), (lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), ));
late final dc.dynamic $if_$4;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $2=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$4, ));
final dc.dynamic $24=(lcoc_core.list.$_invoke$1($2, ));
final dc.dynamic arg$15=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$1((lcoc_core.mapcat.$_invoke$2((dc.dynamic p$9514_$1, ){
final dc.dynamic sym$2=(lcoc_core.nth.$_invoke$3(p$9514_$1, 0, null, ));
final dc.dynamic vec$9518_$1=(lcoc_core.nth.$_invoke$3(p$9514_$1, 1, null, ));
late final dc.dynamic seq$9519_$1;
if((vec$9518_$1 is lcoc_core.ISeqable$iface)){
seq$9519_$1=((vec$9518_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9519_$1=((lcoc_core.ISeqable.extensions(vec$9518_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(vec$9518_$1, ));
}
final dc.dynamic first$9520_$1=lcoc_core.first(seq$9519_$1, );
final dc.dynamic seq$9519_$2=lcoc_core.next(seq$9519_$1, );
final dc.String name$1=lcoc_core.name(first$9520_$1, );
final dc.dynamic has_of$1=(lcoc_core.re_find.$_invoke$2(dc.RegExp("(?:\\..+Of|\\.of)\$", ), name$1, ));
late final dc.bool $if_$5;
if(((false != has_of$1) && (null != has_of$1))){
$if_$5=false;
}else{
$if_$5=true;
}
late final dc.String name$2;
if($if_$5){
name$2=(lcoc_core.str.$_invoke$2(name$1, ".of", ));
}else{
name$2=name$1;
}
final lcoc_core.VectorNode arg$3=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(2, sym$2, ));
late final dc.String? cast$1;
if((first$9520_$1 is lcoc_core.INamed$iface)){
cast$1=(((first$9520_$1 as lcoc_core.INamed$iface).$_namespace$0()) as dc.String?);
}else{
cast$1=(((lcoc_core.INamed.extensions(first$9520_$1, ) as lcoc_core.INamed$ext).$_namespace$0(first$9520_$1, )) as dc.String?);
}
final dc.dynamic $3=(lcoc_core.symbol.$_invoke$2(cast$1, name$2, ));
final dc.dynamic $4=(lcoc_core.list$STAR_.$_invoke$3($3, lcoc_flutter.closest_context$v1, seq$9519_$2, ));
(fl$4[1]=$4);
return lcoc_core.PersistentVector(null, 2, 5, arg$3, fl$4, -1, );
}, inherited_widgets$1, )), ));
late final dc.dynamic $if_$6;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $5=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$6, ));
final dc.dynamic $22=(lcoc_core.list.$_invoke$1($5, ));
final dc.dynamic arg$14=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->>", )), ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.assoc.$_invoke$5(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), true, )), )), forms$1, ));
late final dc.dynamic $if_$7;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $20=(lcoc_core.list.$_invoke$1($if_$7, ));
late final dc.dynamic $if_$8;
if((inherited_bindings$1 is lcoc_core.ISeqable$iface)){
$if_$8=((inherited_bindings$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(inherited_bindings$1, ) as lcoc_core.ISeqable$ext).$_seq$0(inherited_bindings$1, ));
}
late final lcoc_core.PersistentVector? $if_$21;
if(((false != $if_$8) && (null != $if_$8))){
final lcoc_core.VectorNode arg$13=lcoc_core.$_EMPTY_VECTOR.root;
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$11=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "inherited-elt__9500__auto__", )), ));
final dc.dynamic arg$5=(lcoc_core.symbol.$_invoke$2(null, ".getElementForInheritedWidgetOfExactType", ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "type-params", 3003227952, ), ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "InheritedBindings", )), )), ));
late final dc.dynamic $if_$9;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$9=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$9=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$9, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$2(arg$4, $6, ));
late final dc.dynamic $if_$10;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$10=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$10=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $7=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$10, ));
final dc.dynamic $8=lcoc_core.with_meta(arg$5, $7, );
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($8, ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$2($9, (lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), ));
late final dc.dynamic $if_$11;
if((o6974$10 is lcoc_core.ISeqable$iface)){
$if_$11=((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$11=((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}
final dc.dynamic $16=(lcoc_core.list.$_invoke$1($if_$11, ));
final dc.dynamic arg$10=(lcoc_core.list.$_invoke$1(bindings_sym$1, ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "some->", )), ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "inherited-elt__9500__auto__", )), ));
final dc.dynamic o6974$11=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-widget", )), )), ));
late final dc.dynamic $if_$13;
if((o6974$11 is lcoc_core.ISeqable$iface)){
$if_$13=((o6974$11 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$13=((lcoc_core.ISeqable.extensions(o6974$11, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$11, ));
}
final dc.dynamic o6974$12=(lcoc_core.concat.$_invoke_more$10((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "line", 878494669, ), )), (lcoc_core.list.$_invoke$1(625, )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "column", 3362807310, ), )), (lcoc_core.list.$_invoke$1(41, )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "end-line", 1522187715, ), )), (lcoc_core.list.$_invoke$1(625, )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "end-column", 796248491, ), )), (lcoc_core.list.$_invoke$1(70, )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), [(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "InheritedBindings", )), )), ], ));
late final dc.dynamic $if_$12;
if((o6974$12 is lcoc_core.ISeqable$iface)){
$if_$12=((o6974$12 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$12=((lcoc_core.ISeqable.extensions(o6974$12, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$12, ));
}
final dc.dynamic $10=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$12, ));
final dc.dynamic $11=lcoc_core.with_meta($if_$13, $10, );
final dc.dynamic $12=(lcoc_core.list.$_invoke$1($11, ));
final dc.dynamic o6974$13=(lcoc_core.concat.$_invoke$4(arg$7, arg$6, $12, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-bindings", )), )), ));
late final dc.dynamic $if_$14;
if((o6974$13 is lcoc_core.ISeqable$iface)){
$if_$14=((o6974$13 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$14=((lcoc_core.ISeqable.extensions(o6974$13, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$13, ));
}
final dc.dynamic $15=(lcoc_core.list.$_invoke$1($if_$14, ));
final dc.dynamic o6974$18=(lcoc_core.concat.$_invoke$5(arg$11, $16, arg$10, $15, (lcoc_core.mapcat.$_invoke$2((dc.dynamic p$9521_$1, ){
final dc.dynamic sym$3=(lcoc_core.nth.$_invoke$3(p$9521_$1, 0, null, ));
final dc.dynamic vec$9525_$1=(lcoc_core.nth.$_invoke$3(p$9521_$1, 1, null, ));
late final dc.dynamic seq$9526_$1;
if((vec$9525_$1 is lcoc_core.ISeqable$iface)){
seq$9526_$1=((vec$9525_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9526_$1=((lcoc_core.ISeqable.extensions(vec$9525_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(vec$9525_$1, ));
}
final dc.dynamic first$9527_$1=lcoc_core.first(seq$9526_$1, );
final dc.dynamic seq$9526_$2=lcoc_core.next(seq$9526_$1, );
final lcoc_core.VectorNode arg$9=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(2, sym$3, ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic o6974$15=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "get", )), )), (lcoc_core.list.$_invoke$1(bindings_sym$1, )), (lcoc_core.list.$_invoke$1(first$9527_$1, )), ));
late final dc.dynamic $if_$15;
if((o6974$15 is lcoc_core.ISeqable$iface)){
$if_$15=((o6974$15 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$15=((lcoc_core.ISeqable.extensions(o6974$15, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$15, ));
}
final dc.dynamic $14=(lcoc_core.list.$_invoke$1($if_$15, ));
late final dc.dynamic or$6718_$AUTO_$1;
if((seq$9526_$2 is lcoc_core.ISeqable$iface)){
or$6718_$AUTO_$1=((seq$9526_$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
or$6718_$AUTO_$1=((lcoc_core.ISeqable.extensions(seq$9526_$2, ) as lcoc_core.ISeqable$ext).$_seq$0(seq$9526_$2, ));
}
late final dc.dynamic $if_$16;
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
$if_$16=or$6718_$AUTO_$1;
}else{
$if_$16=(lcoc_core.symbol.$_invoke$2("cljd.core", "->", ));
}
final dc.dynamic $13=(lcoc_core.list.$_invoke$1($if_$16, ));
final dc.dynamic o6974$17=(lcoc_core.concat.$_invoke$3(arg$8, $14, $13, ));
late final dc.dynamic $if_$17;
if((o6974$17 is lcoc_core.ISeqable$iface)){
$if_$17=((o6974$17 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$17=((lcoc_core.ISeqable.extensions(o6974$17, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$17, ));
}
(fl$6[1]=$if_$17);
return lcoc_core.PersistentVector(null, 2, 5, arg$9, fl$6, -1, );
}, inherited_bindings$1, )), ));
late final dc.dynamic $if_$18;
if((o6974$18 is lcoc_core.ISeqable$iface)){
$if_$18=((o6974$18 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$18=((lcoc_core.ISeqable.extensions(o6974$18, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$18, ));
}
final dc.dynamic $17=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$18, ));
final dc.dynamic $19=(lcoc_core.list.$_invoke$1($17, ));
final dc.dynamic o6974$19=(lcoc_core.concat.$_invoke$5((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".dependOnInheritedElement", )), )), (lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "inherited-elt__9500__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".aspect", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.map.$_invoke$1((dc.dynamic p$9528_$1, ){
final dc.dynamic sym$4=(lcoc_core.nth.$_invoke$3(p$9528_$1, 0, null, ));
final dc.dynamic vec$9532_$1=(lcoc_core.nth.$_invoke$3(p$9528_$1, 1, null, ));
final dc.dynamic type_or_kw$5=(lcoc_core.nth.$_invoke$3(vec$9532_$1, 0, null, ));
return type_or_kw$5;
}, )), inherited_bindings$1, )), )), ));
late final dc.dynamic $if_$19;
if((o6974$19 is lcoc_core.ISeqable$iface)){
$if_$19=((o6974$19 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$19=((lcoc_core.ISeqable.extensions(o6974$19, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$19, ));
}
final dc.dynamic $18=(lcoc_core.list.$_invoke$1($if_$19, ));
final dc.dynamic o6974$20=(lcoc_core.concat.$_invoke$3(arg$12, $19, $18, ));
late final dc.dynamic $if_$20;
if((o6974$20 is lcoc_core.ISeqable$iface)){
$if_$20=((o6974$20 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$20=((lcoc_core.ISeqable.extensions(o6974$20, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$20, ));
}
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(1, $if_$20, ));
$if_$21=lcoc_core.PersistentVector(null, 1, 5, arg$13, fl$5, -1, );
}else{
$if_$21=null;
}
final dc.dynamic o6974$21=(lcoc_core.concat.$_invoke$3(arg$14, $20, $if_$21, ));
late final dc.dynamic $if_$22;
if((o6974$21 is lcoc_core.ISeqable$iface)){
$if_$22=((o6974$21 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$22=((lcoc_core.ISeqable.extensions(o6974$21, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$21, ));
}
final dc.dynamic $21=(lcoc_core.list.$_invoke$1($if_$22, ));
final dc.dynamic o6974$22=(lcoc_core.concat.$_invoke$3(arg$15, $22, $21, ));
late final dc.dynamic $if_$23;
if((o6974$22 is lcoc_core.ISeqable$iface)){
$if_$23=((o6974$22 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$23=((lcoc_core.ISeqable.extensions(o6974$22, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$22, ));
}
final dc.dynamic $23=(lcoc_core.list.$_invoke$1($if_$23, ));
final dc.dynamic o6974$23=(lcoc_core.concat.$_invoke$3(arg$16, $24, $23, ));
late final dc.dynamic $if_$24;
if((o6974$23 is lcoc_core.ISeqable$iface)){
$if_$24=((o6974$23 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$24=((lcoc_core.ISeqable.extensions(o6974$23, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$23, ));
}
final dc.dynamic $25=(lcoc_core.list.$_invoke$1($if_$24, ));
final dc.dynamic o6974$24=(lcoc_core.concat.$_invoke$8(arg$22, arg$21, $26, arg$20, arg$19, arg$18, arg$17, $25, ));
if((o6974$24 is lcoc_core.ISeqable$iface)){
return ((o6974$24 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$24, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$24, ));
}

// END expand-get-inherited

// BEGIN expand-height-width
dc.dynamic expand_height_width(dc.dynamic env$1, dc.dynamic forms$1, ){
final dc.dynamic dims$1=(lcoc_core.take_while.$_invoke$2((dc.dynamic p$9540_$1, ){
final dc.dynamic k$1=(lcoc_core.nth.$_invoke$3(p$9540_$1, 0, null, ));
late final dc.int hash$1;
if((k$1 is lcoc_core.IHash$iface)){
hash$1=(((k$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$1=(((lcoc_core.IHash.extensions(k$1, ) as lcoc_core.IHash$ext).$_hash$0(k$1, )) as dc.int);
}
switch(hash$1){
case 2622683294:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "height", 2622683294, ), k$1, ))){
return true;
}
continue _default$1;
case 2554302619:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "width", 2554302619, ), k$1, ))){
return true;
}
continue _default$1;
_default$1: default:
return false;
}
}, (lcoc_core.partition.$_invoke$2(2, forms$1, )), ));
late final dc.int cast$1;
if((dims$1 is lcoc_core.ICounted$iface)){
cast$1=(((dims$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(dims$1, ) as lcoc_core.ICounted$ext).$_count$0(dims$1, )) as dc.int);
}
final dc.int $1=(2 * cast$1);
final dc.dynamic forms$2=(lcoc_core.drop.$_invoke$2($1, forms$1, ));
dc.dynamic f7029$1(dc.dynamic m$1, dc.dynamic p$9544_$1, ){
final dc.dynamic k$2=(lcoc_core.nth.$_invoke$3(p$9544_$1, 0, null, ));
final dc.dynamic v$1=(lcoc_core.nth.$_invoke$3(p$9544_$1, 1, null, ));
if((m$1 is lcoc_core.IAssociative$iface)){
return ((m$1 as lcoc_core.IAssociative$iface).$_assoc$2(k$2, v$1, ));
}
return ((lcoc_core.IAssociative.extensions(m$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(m$1, k$2, v$1, ));
}
final lcoc_core.PersistentHashMap start7030$1=lcoc_core.$_EMPTY_MAP;
late final dc.dynamic map$9539_$1;
if((dims$1 is lcoc_core.IReduce$iface)){
map$9539_$1=((dims$1 as lcoc_core.IReduce$iface).$_reduce$2(f7029$1, start7030$1, ));
}else{
map$9539_$1=((lcoc_core.IReduce.extensions(dims$1, ) as lcoc_core.IReduce$ext).$_reduce$2(dims$1, f7029$1, start7030$1, ));
}
late final dc.dynamic map$9539_$2;
if(((lcoc_core.ISeq.satisfies(map$9539_$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(map$9539_$1, );
if(((false != test$1) && (null != test$1))){
map$9539_$2=lcoc_core.seq_to_map_for_destructuring(map$9539_$1, );
}else{
late final dc.dynamic $if_$1;
if((map$9539_$1 is lcoc_core.ISeqable$iface)){
$if_$1=((map$9539_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(map$9539_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(map$9539_$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
map$9539_$2=lcoc_core.first(map$9539_$1, );
}else{
map$9539_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9539_$2=map$9539_$1;
}
late final dc.dynamic height$1;
if((map$9539_$2 is lcoc_core.ILookup$iface)){
height$1=((map$9539_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "height", 2622683294, ), ));
}else{
height$1=((lcoc_core.ILookup.extensions(map$9539_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9539_$2, const lcoc_core.Keyword(null, "height", 2622683294, ), ));
}
late final dc.dynamic width$1;
if((map$9539_$2 is lcoc_core.ILookup$iface)){
width$1=((map$9539_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "width", 2554302619, ), ));
}else{
width$1=((lcoc_core.ILookup.extensions(map$9539_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9539_$2, const lcoc_core.Keyword(null, "width", 2554302619, ), ));
}
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "SizedBox", )), ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".width", )), ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1(width$1, ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".height", )), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1(height$1, ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".child", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.assoc.$_invoke$5(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), false, )), )), forms$2, ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$9(arg$8, arg$7, arg$6, arg$5, arg$4, arg$3, arg$2, arg$1, $2, ));
if((o6974$3 is lcoc_core.ISeqable$iface)){
return ((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}

// END expand-height-width

// BEGIN expand-keep-alive
dc.dynamic expand_keep_alive(dc.dynamic $AMPERSAND_env$1, dc.dynamic env$1, dc.dynamic expr$1, dc.dynamic forms$1, ){
final dc.dynamic arg$34=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "reify", )), ));
final dc.dynamic arg$33=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "extends", 2423719685, ), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "StatefulWidget", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), )), (lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), )), ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $52=(lcoc_core.list.$_invoke$1($if_$1, ));
final dc.dynamic arg$32=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "no-meta", 2746638389, ), ));
final dc.dynamic arg$31=(lcoc_core.list.$_invoke$1(true, ));
final dc.dynamic arg$30=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "name-hint", 2341976313, ), ));
final dc.dynamic arg$29=(lcoc_core.list.$_invoke$1("keep-alive", ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "createState", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9493__auto__", )), )), ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$2, ));
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "KeepAliveState", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$3(arg$1, $3, $2, ));
late final dc.dynamic $if_$4;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $51=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic arg$28=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "StateLifecycle", )), ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-init-state", )), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9493__auto__", )), ));
final dc.dynamic arg$2=(lcoc_core.symbol.$_invoke$2(null, "state__9494__auto__", ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "KeepAliveState", )), )), ));
late final dc.dynamic $if_$5;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $4=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$5, ));
final dc.dynamic $5=lcoc_core.with_meta(arg$2, $4, );
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($5, ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$2(arg$3, $6, ));
late final dc.dynamic $if_$6;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $7=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$6, ));
final dc.dynamic $8=(lcoc_core.list.$_invoke$1($7, ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$2(arg$4, $8, ));
late final dc.dynamic $if_$7;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $50=(lcoc_core.list.$_invoke$1($if_$7, ));
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-dispose-state", )), ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9493__auto__", )), ));
final dc.dynamic arg$5=(lcoc_core.symbol.$_invoke$2(null, "state__9494__auto__", ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "KeepAliveState", )), )), ));
late final dc.dynamic $if_$8;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $9=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$8, ));
final dc.dynamic $10=lcoc_core.with_meta(arg$5, $9, );
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($10, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$2(arg$6, $11, ));
late final dc.dynamic $if_$9;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$9=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$9=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $12=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$9, ));
final dc.dynamic $19=(lcoc_core.list.$_invoke$1($12, ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-some", )), ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "handle__9495__auto__", )), ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-handle", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9494__auto__", )), )), ));
late final dc.dynamic $if_$10;
if((o6974$10 is lcoc_core.ISeqable$iface)){
$if_$10=((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$10=((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}
final dc.dynamic $13=(lcoc_core.list.$_invoke$1($if_$10, ));
final dc.dynamic o6974$11=(lcoc_core.concat.$_invoke$2(arg$7, $13, ));
late final dc.dynamic $if_$11;
if((o6974$11 is lcoc_core.ISeqable$iface)){
$if_$11=((o6974$11 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$11=((lcoc_core.ISeqable.extensions(o6974$11, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$11, ));
}
final dc.dynamic $14=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$11, ));
final dc.dynamic $17=(lcoc_core.list.$_invoke$1($14, ));
final dc.dynamic o6974$12=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".dispose", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "handle__9495__auto__", )), )), ));
late final dc.dynamic $if_$12;
if((o6974$12 is lcoc_core.ISeqable$iface)){
$if_$12=((o6974$12 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$12=((lcoc_core.ISeqable.extensions(o6974$12, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$12, ));
}
final dc.dynamic $16=(lcoc_core.list.$_invoke$1($if_$12, ));
final dc.dynamic o6974$13=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-handle!", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9494__auto__", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$13;
if((o6974$13 is lcoc_core.ISeqable$iface)){
$if_$13=((o6974$13 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$13=((lcoc_core.ISeqable.extensions(o6974$13, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$13, ));
}
final dc.dynamic $15=(lcoc_core.list.$_invoke$1($if_$13, ));
final dc.dynamic o6974$14=(lcoc_core.concat.$_invoke$4(arg$8, $17, $16, $15, ));
late final dc.dynamic $if_$14;
if((o6974$14 is lcoc_core.ISeqable$iface)){
$if_$14=((o6974$14 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$14=((lcoc_core.ISeqable.extensions(o6974$14, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$14, ));
}
final dc.dynamic $18=(lcoc_core.list.$_invoke$1($if_$14, ));
final dc.dynamic o6974$15=(lcoc_core.concat.$_invoke$3(arg$9, $19, $18, ));
late final dc.dynamic $if_$15;
if((o6974$15 is lcoc_core.ISeqable$iface)){
$if_$15=((o6974$15 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$15=((lcoc_core.ISeqable.extensions(o6974$15, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$15, ));
}
final dc.dynamic $49=(lcoc_core.list.$_invoke$1($if_$15, ));
final dc.dynamic arg$26=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-build", )), ));
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9493__auto__", )), ));
final dc.dynamic arg$10=(lcoc_core.symbol.$_invoke$2(null, "state__9494__auto__", ));
final dc.dynamic o6974$16=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "KeepAliveState", )), )), ));
late final dc.dynamic $if_$16;
if((o6974$16 is lcoc_core.ISeqable$iface)){
$if_$16=((o6974$16 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$16=((lcoc_core.ISeqable.extensions(o6974$16, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$16, ));
}
final dc.dynamic $20=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$16, ));
final dc.dynamic $21=lcoc_core.with_meta(arg$10, $20, );
final dc.dynamic $25=(lcoc_core.list.$_invoke$1($21, ));
final dc.dynamic arg$11=(lcoc_core.symbol.$_invoke$2(null, "ctx__9496__auto__", ));
final dc.dynamic o6974$17=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "BuildContext", )), )), ));
late final dc.dynamic $if_$17;
if((o6974$17 is lcoc_core.ISeqable$iface)){
$if_$17=((o6974$17 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$17=((lcoc_core.ISeqable.extensions(o6974$17, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$17, ));
}
final dc.dynamic $22=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$17, ));
final dc.dynamic $23=lcoc_core.with_meta(arg$11, $22, );
final dc.dynamic $24=(lcoc_core.list.$_invoke$1($23, ));
final dc.dynamic o6974$18=(lcoc_core.concat.$_invoke$3(arg$12, $25, $24, ));
late final dc.dynamic $if_$18;
if((o6974$18 is lcoc_core.ISeqable$iface)){
$if_$18=((o6974$18 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$18=((lcoc_core.ISeqable.extensions(o6974$18, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$18, ));
}
final dc.dynamic $26=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$18, ));
final dc.dynamic $44=(lcoc_core.list.$_invoke$1($26, ));
final dc.dynamic arg$24=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$13=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "handle__9495__auto__", )), ));
final dc.dynamic o6974$19=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-handle", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9494__auto__", )), )), ));
late final dc.dynamic $if_$19;
if((o6974$19 is lcoc_core.ISeqable$iface)){
$if_$19=((o6974$19 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$19=((lcoc_core.ISeqable.extensions(o6974$19, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$19, ));
}
final dc.dynamic $27=(lcoc_core.list.$_invoke$1($if_$19, ));
final dc.dynamic o6974$20=(lcoc_core.concat.$_invoke$2(arg$13, $27, ));
late final dc.dynamic $if_$20;
if((o6974$20 is lcoc_core.ISeqable$iface)){
$if_$20=((o6974$20 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$20=((lcoc_core.ISeqable.extensions(o6974$20, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$20, ));
}
final dc.dynamic $28=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$20, ));
final dc.dynamic $38=(lcoc_core.list.$_invoke$1($28, ));
final dc.dynamic arg$23=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "if", )), ));
final dc.dynamic arg$22=(lcoc_core.list.$_invoke$1(expr$1, ));
final dc.dynamic arg$19=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-not", )), ));
final dc.dynamic arg$18=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "handle__9495__auto__", )), ));
final dc.dynamic arg$17=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic arg$15=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-handle!", )), ));
final dc.dynamic arg$14=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9494__auto__", )), ));
final dc.dynamic o6974$21=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_foundation", "ChangeNotifier", )), )), ));
late final dc.dynamic $if_$21;
if((o6974$21 is lcoc_core.ISeqable$iface)){
$if_$21=((o6974$21 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$21=((lcoc_core.ISeqable.extensions(o6974$21, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$21, ));
}
final dc.dynamic $29=(lcoc_core.list.$_invoke$1($if_$21, ));
final dc.dynamic o6974$22=(lcoc_core.concat.$_invoke$3(arg$15, arg$14, $29, ));
late final dc.dynamic $if_$22;
if((o6974$22 is lcoc_core.ISeqable$iface)){
$if_$22=((o6974$22 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$22=((lcoc_core.ISeqable.extensions(o6974$22, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$22, ));
}
final dc.dynamic $31=(lcoc_core.list.$_invoke$1($if_$22, ));
final dc.dynamic arg$16=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "KeepAliveNotification", )), ));
final dc.dynamic o6974$23=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".dispatch", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "ctx__9496__auto__", )), )), ));
late final dc.dynamic $if_$23;
if((o6974$23 is lcoc_core.ISeqable$iface)){
$if_$23=((o6974$23 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$23=((lcoc_core.ISeqable.extensions(o6974$23, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$23, ));
}
final dc.dynamic $30=(lcoc_core.list.$_invoke$1($if_$23, ));
final dc.dynamic o6974$24=(lcoc_core.concat.$_invoke$4(arg$17, $31, arg$16, $30, ));
late final dc.dynamic $if_$24;
if((o6974$24 is lcoc_core.ISeqable$iface)){
$if_$24=((o6974$24 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$24=((lcoc_core.ISeqable.extensions(o6974$24, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$24, ));
}
final dc.dynamic $32=(lcoc_core.list.$_invoke$1($if_$24, ));
final dc.dynamic o6974$25=(lcoc_core.concat.$_invoke$3(arg$19, arg$18, $32, ));
late final dc.dynamic $if_$25;
if((o6974$25 is lcoc_core.ISeqable$iface)){
$if_$25=((o6974$25 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$25=((lcoc_core.ISeqable.extensions(o6974$25, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$25, ));
}
final dc.dynamic $36=(lcoc_core.list.$_invoke$1($if_$25, ));
final dc.dynamic arg$21=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when", )), ));
final dc.dynamic arg$20=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "handle__9495__auto__", )), ));
final dc.dynamic o6974$26=(lcoc_core.concat.$_invoke$4((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "handle__9495__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".notifyListeners", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".dispose", )), )), ));
late final dc.dynamic $if_$26;
if((o6974$26 is lcoc_core.ISeqable$iface)){
$if_$26=((o6974$26 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$26=((lcoc_core.ISeqable.extensions(o6974$26, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$26, ));
}
final dc.dynamic $34=(lcoc_core.list.$_invoke$1($if_$26, ));
final dc.dynamic o6974$27=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-handle!", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9494__auto__", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$27;
if((o6974$27 is lcoc_core.ISeqable$iface)){
$if_$27=((o6974$27 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$27=((lcoc_core.ISeqable.extensions(o6974$27, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$27, ));
}
final dc.dynamic $33=(lcoc_core.list.$_invoke$1($if_$27, ));
final dc.dynamic o6974$28=(lcoc_core.concat.$_invoke$4(arg$21, arg$20, $34, $33, ));
late final dc.dynamic $if_$28;
if((o6974$28 is lcoc_core.ISeqable$iface)){
$if_$28=((o6974$28 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$28=((lcoc_core.ISeqable.extensions(o6974$28, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$28, ));
}
final dc.dynamic $35=(lcoc_core.list.$_invoke$1($if_$28, ));
final dc.dynamic o6974$29=(lcoc_core.concat.$_invoke$4(arg$23, arg$22, $36, $35, ));
late final dc.dynamic $if_$29;
if((o6974$29 is lcoc_core.ISeqable$iface)){
$if_$29=((o6974$29 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$29=((lcoc_core.ISeqable.extensions(o6974$29, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$29, ));
}
final dc.dynamic $37=(lcoc_core.list.$_invoke$1($if_$29, ));
final dc.dynamic o6974$30=(lcoc_core.concat.$_invoke$3(arg$24, $38, $37, ));
late final dc.dynamic $if_$30;
if((o6974$30 is lcoc_core.ISeqable$iface)){
$if_$30=((o6974$30 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$30=((lcoc_core.ISeqable.extensions(o6974$30, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$30, ));
}
final dc.dynamic $43=(lcoc_core.list.$_invoke$1($if_$30, ));
final dc.dynamic arg$25=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$31=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "ctx__9496__auto__", )), )), ));
late final dc.dynamic $if_$31;
if((o6974$31 is lcoc_core.ISeqable$iface)){
$if_$31=((o6974$31 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$31=((lcoc_core.ISeqable.extensions(o6974$31, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$31, ));
}
final dc.dynamic $39=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$31, ));
final dc.dynamic $41=(lcoc_core.list.$_invoke$1($39, ));
final dc.dynamic o6974$32=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.assoc.$_invoke$5(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), true, )), )), forms$1, ));
late final dc.dynamic $if_$32;
if((o6974$32 is lcoc_core.ISeqable$iface)){
$if_$32=((o6974$32 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$32=((lcoc_core.ISeqable.extensions(o6974$32, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$32, ));
}
final dc.dynamic $40=(lcoc_core.list.$_invoke$1($if_$32, ));
final dc.dynamic o6974$33=(lcoc_core.concat.$_invoke$3(arg$25, $41, $40, ));
late final dc.dynamic $if_$33;
if((o6974$33 is lcoc_core.ISeqable$iface)){
$if_$33=((o6974$33 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$33=((lcoc_core.ISeqable.extensions(o6974$33, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$33, ));
}
final dc.dynamic $42=(lcoc_core.list.$_invoke$1($if_$33, ));
final dc.dynamic o6974$34=(lcoc_core.concat.$_invoke$4(arg$26, $44, $43, $42, ));
late final dc.dynamic $if_$34;
if((o6974$34 is lcoc_core.ISeqable$iface)){
$if_$34=((o6974$34 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$34=((lcoc_core.ISeqable.extensions(o6974$34, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$34, ));
}
final dc.dynamic $48=(lcoc_core.list.$_invoke$1($if_$34, ));
final dc.dynamic arg$27=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-update-state", )), ));
final dc.dynamic o6974$35=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9493__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9494__auto__", )), )), ));
late final dc.dynamic $if_$35;
if((o6974$35 is lcoc_core.ISeqable$iface)){
$if_$35=((o6974$35 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$35=((lcoc_core.ISeqable.extensions(o6974$35, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$35, ));
}
final dc.dynamic $45=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$35, ));
final dc.dynamic $46=(lcoc_core.list.$_invoke$1($45, ));
final dc.dynamic o6974$36=(lcoc_core.concat.$_invoke$2(arg$27, $46, ));
late final dc.dynamic $if_$36;
if((o6974$36 is lcoc_core.ISeqable$iface)){
$if_$36=((o6974$36 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$36=((lcoc_core.ISeqable.extensions(o6974$36, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$36, ));
}
final dc.dynamic $47=(lcoc_core.list.$_invoke$1($if_$36, ));
final dc.dynamic o6974$37=(lcoc_core.concat.$_invoke_more$10(arg$34, arg$33, $52, arg$32, arg$31, arg$30, arg$29, $51, arg$28, [$50, $49, $48, $47, ], ));
if((o6974$37 is lcoc_core.ISeqable$iface)){
return ((o6974$37 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$37, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$37, ));
}

// END expand-keep-alive

// BEGIN expand-padding
dc.dynamic expand_padding(dc.dynamic env$1, dc.dynamic padding$1, dc.dynamic forms$1, ){
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "Padding", )), ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".padding", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "edge-insets-geometry", )), )), (lcoc_core.list.$_invoke$1(padding$1, )), ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$1, ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".child", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.assoc.$_invoke$5(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), false, )), )), forms$1, ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$7(arg$5, arg$4, arg$3, arg$2, $2, arg$1, $1, ));
if((o6974$3 is lcoc_core.ISeqable$iface)){
return ((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}

// END expand-padding

// BEGIN expand-repl-point
dc.dynamic expand_repl_point(dc.dynamic $AMPERSAND_env$1, dc.dynamic env$1, dc.dynamic $UNDERSCORE_$1, dc.dynamic forms$1, ){
final dc.dynamic userk$1=(const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, ));
late final dc.dynamic ksym_or_nil$1;
if(((false != userk$1) && (null != userk$1))){
ksym_or_nil$1=(lcoc_core.symbol.$_invoke$2(null, "k__9554__auto__", ));
}else{
ksym_or_nil$1=null;
}
final dc.dynamic arg$14=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
late final lcoc_core.PersistentVector? $if_$4;
if(((false != ksym_or_nil$1) && (null != ksym_or_nil$1))){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, ksym_or_nil$1, ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-not", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_foundation", "kDebugMode", )), )), (lcoc_core.list.$_invoke$1(userk$1, )), ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
(fl$1[1]=$if_$1);
$if_$4=lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, );
}else{
$if_$4=null;
}
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "child__9555__auto__", )), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), ));
late final dc.dynamic $if_$2;
if((env$1 is lcoc_core.IAssociative$iface)){
$if_$2=((env$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "key", 3455907201, ), ksym_or_nil$1, ));
}else{
$if_$2=((lcoc_core.IAssociative.extensions(env$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), ksym_or_nil$1, ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$3(arg$2, $1, forms$1, ));
late final dc.dynamic $if_$3;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$3($if_$4, arg$3, $2, ));
late final dc.dynamic $if_$5;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $3=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$5, ));
final dc.dynamic $14=(lcoc_core.list.$_invoke$1($3, ));
final dc.dynamic arg$13=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "if", )), ));
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_foundation", "kDebugMode", )), ));
final dc.dynamic arg$11=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont+ctx", )), ));
final dc.dynamic arg$10=(lcoc_core.list.$_invoke$1(env$1, ));
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "cond->>", )), ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "child__9555__auto__", )), ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "get-of", )), )), (lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), (lcoc_core.list.$_invoke$1(const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), )), ));
late final dc.dynamic $if_$6;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($if_$6, ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "ReplPointWidget", )), ));
final dc.dynamic o7180$1=lcoc_core.first(forms$1, );
late final dc.dynamic $if_$7;
if((o7180$1 is lcoc_core.IMeta$iface)){
$if_$7=((o7180$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
$if_$7=((lcoc_core.IMeta.extensions(o7180$1, ) as lcoc_core.IMeta$ext).$_meta$0(o7180$1, ));
}
final lcoc_core.VectorNode arg$4=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$2[1]=const lcoc_core.Keyword(null, "column", 3362807310, ));
final dc.dynamic coll7096$2=lcoc_core.select_keys($if_$7, lcoc_core.PersistentVector(null, 2, 5, arg$4, fl$2, -1, ), );
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "quote", )), )), (lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "current-ns", 1862637831, ).$_invoke$1((const lcoc_core.Keyword(null, "nses", 3771051699, ).$_invoke$1($AMPERSAND_env$1, )), )), )), ));
late final dc.dynamic v7098$2;
if((o6974$5 is lcoc_core.ISeqable$iface)){
v7098$2=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
v7098$2=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
late final dc.dynamic $if_$8;
if((coll7096$2 is lcoc_core.IAssociative$iface)){
$if_$8=((coll7096$2 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "ns", 1494845879, ), v7098$2, ));
}else{
$if_$8=((lcoc_core.IAssociative.extensions(coll7096$2, ) as lcoc_core.IAssociative$ext).$_assoc$2(coll7096$2, const lcoc_core.Keyword(null, "ns", 1494845879, ), v7098$2, ));
}
final dc.dynamic $8=(lcoc_core.list.$_invoke$1($if_$8, ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$0());
late final dc.dynamic $if_$9;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$9=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$9=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $4=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$9, ));
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($4, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "apply", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "hash-map", )), )), (lcoc_core.list.$_invoke$1(lcoc_core.tagged_literal((lcoc_core.symbol.$_invoke$2(null, "dart", )), (lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.mapcat.$_invoke$1((dc.dynamic x$1, ){
if(lcoc_core.simple_symbol$QMARK_(x$1, )){
final lcoc_core.VectorNode arg$5=lcoc_core.$_EMPTY_VECTOR.root;
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "quote", )), )), (lcoc_core.list.$_invoke$1(x$1, )), ));
late final dc.dynamic $if_$10;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$10=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$10=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(2, $if_$10, ));
(fl$3[1]=x$1);
return lcoc_core.PersistentVector(null, 2, 5, arg$5, fl$3, -1, );
}
return null;
}, )), lcoc_core.keys((lcoc_core.dissoc.$_invoke$2($AMPERSAND_env$1, (lcoc_core.symbol.$_invoke$2(null, "_", )), )), ), )), ), )), ));
late final dc.dynamic $if_$11;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$11=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$11=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($if_$11, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$3(arg$6, $6, $5, ));
late final dc.dynamic $if_$12;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$12=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$12=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($if_$12, ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$3(arg$7, $8, $7, ));
late final dc.dynamic $if_$13;
if((o6974$10 is lcoc_core.ISeqable$iface)){
$if_$13=((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$13=((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($if_$13, ));
final dc.dynamic o6974$11=(lcoc_core.concat.$_invoke$4(arg$9, arg$8, $10, $9, ));
late final dc.dynamic $if_$14;
if((o6974$11 is lcoc_core.ISeqable$iface)){
$if_$14=((o6974$11 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$14=((lcoc_core.ISeqable.extensions(o6974$11, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$11, ));
}
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($if_$14, ));
final dc.dynamic o6974$12=(lcoc_core.concat.$_invoke$3(arg$11, arg$10, $11, ));
late final dc.dynamic $if_$15;
if((o6974$12 is lcoc_core.ISeqable$iface)){
$if_$15=((o6974$12 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$15=((lcoc_core.ISeqable.extensions(o6974$12, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$12, ));
}
final dc.dynamic $12=(lcoc_core.list.$_invoke$1($if_$15, ));
final dc.dynamic o6974$13=(lcoc_core.concat.$_invoke$4(arg$13, arg$12, $12, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "child__9555__auto__", )), )), ));
late final dc.dynamic $if_$16;
if((o6974$13 is lcoc_core.ISeqable$iface)){
$if_$16=((o6974$13 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$16=((lcoc_core.ISeqable.extensions(o6974$13, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$13, ));
}
final dc.dynamic $13=(lcoc_core.list.$_invoke$1($if_$16, ));
final dc.dynamic o6974$14=(lcoc_core.concat.$_invoke$3(arg$14, $14, $13, ));
if((o6974$14 is lcoc_core.ISeqable$iface)){
return ((o6974$14 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$14, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$14, ));
}

// END expand-repl-point

// BEGIN expand-resource
dc.dynamic expand_resource(dc.dynamic $AMPERSAND_env$1, dc.dynamic env$1, dc.dynamic binding$1, dc.dynamic expr$1, dc.dynamic opts$1, dc.dynamic forms$1, ){
final dc.dynamic or$6718_$AUTO_$1=(const lcoc_core.Keyword(null, "dispose", 4183551234, ).$_invoke$2(opts$1, (lcoc_core.symbol.$_invoke$2(null, ".dispose", )), ));
late final dc.dynamic dispose$1;
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
dispose$1=or$6718_$AUTO_$1;
}else{
dispose$1=(lcoc_core.symbol.$_invoke$2("cljd.core", "comment", ));
}
final dc.dynamic update$1=(const lcoc_core.Keyword(null, "update", 1494783845, ).$_invoke$1(opts$1, ));
late final dc.dynamic $if_$4;
if(((false != update$1) && (null != update$1))){
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "expr__9485__auto__", )), )), ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$1, ));
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "expr__9485__auto__", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart", "type-like", )), )), (lcoc_core.list.$_invoke$1(expr$1, )), ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$4(arg$2, arg$1, $2, (lcoc_core.list.$_invoke$1(update$1, )), ));
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$3(arg$3, $4, $3, ));
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
}else{
$if_$4=expr$1;
}
final dc.dynamic refresh_on$1=lcoc_flutter.refresh_on_expr(opts$1, $AMPERSAND_env$1, $if_$4, );
final dc.dynamic expr$2=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2("dart", "async-barrier", )), expr$1, ));
final dc.dynamic arg$49=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "reify", )), ));
final dc.dynamic arg$48=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "extends", 2423719685, ), ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "StatefulWidget", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), )), (lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), )), ));
late final dc.dynamic $if_$5;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $74=(lcoc_core.list.$_invoke$1($if_$5, ));
final dc.dynamic arg$47=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "no-meta", 2746638389, ), ));
final dc.dynamic arg$46=(lcoc_core.list.$_invoke$1(true, ));
final dc.dynamic arg$45=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "name-hint", 2341976313, ), ));
final dc.dynamic arg$44=(lcoc_core.list.$_invoke$1("managed", ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "createState", )), ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9489__auto__", )), )), ));
late final dc.dynamic $if_$6;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $5=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$6, ));
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($5, ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "ResourceState", )), )), (lcoc_core.list.$_invoke$1(null, )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$7;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$7, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$3(arg$4, $7, $6, ));
late final dc.dynamic $if_$8;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $73=(lcoc_core.list.$_invoke$1($if_$8, ));
final dc.dynamic arg$43=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "StateLifecycle", )), ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-init-state", )), ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9489__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9490__auto__", )), )), ));
late final dc.dynamic $if_$9;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$9=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$9=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $8=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$9, ));
final dc.dynamic $15=(lcoc_core.list.$_invoke$1($8, ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$5=(lcoc_core.symbol.$_invoke$2(null, "state__9490__auto__", ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "ResourceState", )), )), ));
late final dc.dynamic $if_$10;
if((o6974$10 is lcoc_core.ISeqable$iface)){
$if_$10=((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$10=((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}
final dc.dynamic $9=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$10, ));
final dc.dynamic $10=lcoc_core.with_meta(arg$5, $9, );
final dc.dynamic $13=(lcoc_core.list.$_invoke$1($10, ));
final dc.dynamic o6974$11=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k!", )), )), (lcoc_core.list.$_invoke$1(refresh_on$1, )), ));
late final dc.dynamic $if_$11;
if((o6974$11 is lcoc_core.ISeqable$iface)){
$if_$11=((o6974$11 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$11=((lcoc_core.ISeqable.extensions(o6974$11, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$11, ));
}
final dc.dynamic $12=(lcoc_core.list.$_invoke$1($if_$11, ));
final dc.dynamic o6974$12=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-resource!", )), )), (lcoc_core.list.$_invoke$1(expr$2, )), ));
late final dc.dynamic $if_$12;
if((o6974$12 is lcoc_core.ISeqable$iface)){
$if_$12=((o6974$12 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$12=((lcoc_core.ISeqable.extensions(o6974$12, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$12, ));
}
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($if_$12, ));
final dc.dynamic o6974$13=(lcoc_core.concat.$_invoke$4(arg$6, $13, $12, $11, ));
late final dc.dynamic $if_$13;
if((o6974$13 is lcoc_core.ISeqable$iface)){
$if_$13=((o6974$13 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$13=((lcoc_core.ISeqable.extensions(o6974$13, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$13, ));
}
final dc.dynamic $14=(lcoc_core.list.$_invoke$1($if_$13, ));
final dc.dynamic o6974$14=(lcoc_core.concat.$_invoke$3(arg$7, $15, $14, ));
late final dc.dynamic $if_$14;
if((o6974$14 is lcoc_core.ISeqable$iface)){
$if_$14=((o6974$14 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$14=((lcoc_core.ISeqable.extensions(o6974$14, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$14, ));
}
final dc.dynamic $72=(lcoc_core.list.$_invoke$1($if_$14, ));
final dc.dynamic arg$14=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-dispose-state", )), ));
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9489__auto__", )), ));
final dc.dynamic arg$8=(lcoc_core.symbol.$_invoke$2(null, "state__9490__auto__", ));
final dc.dynamic o6974$15=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "ResourceState", )), )), ));
late final dc.dynamic $if_$15;
if((o6974$15 is lcoc_core.ISeqable$iface)){
$if_$15=((o6974$15 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$15=((lcoc_core.ISeqable.extensions(o6974$15, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$15, ));
}
final dc.dynamic $16=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$15, ));
final dc.dynamic $17=lcoc_core.with_meta(arg$8, $16, );
final dc.dynamic $18=(lcoc_core.list.$_invoke$1($17, ));
final dc.dynamic o6974$16=(lcoc_core.concat.$_invoke$2(arg$9, $18, ));
late final dc.dynamic $if_$16;
if((o6974$16 is lcoc_core.ISeqable$iface)){
$if_$16=((o6974$16 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$16=((lcoc_core.ISeqable.extensions(o6974$16, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$16, ));
}
final dc.dynamic $19=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$16, ));
final dc.dynamic $28=(lcoc_core.list.$_invoke$1($19, ));
final dc.dynamic arg$13=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$10=(lcoc_core.symbol.$_invoke$2(null, "state__9490__auto__", ));
final dc.dynamic o6974$17=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "ResourceState", )), )), ));
late final dc.dynamic $if_$17;
if((o6974$17 is lcoc_core.ISeqable$iface)){
$if_$17=((o6974$17 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$17=((lcoc_core.ISeqable.extensions(o6974$17, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$17, ));
}
final dc.dynamic $20=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$17, ));
final dc.dynamic $21=lcoc_core.with_meta(arg$10, $20, );
final dc.dynamic $26=(lcoc_core.list.$_invoke$1($21, ));
final dc.dynamic o6974$18=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k!", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$18;
if((o6974$18 is lcoc_core.ISeqable$iface)){
$if_$18=((o6974$18 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$18=((lcoc_core.ISeqable.extensions(o6974$18, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$18, ));
}
final dc.dynamic $25=(lcoc_core.list.$_invoke$1($if_$18, ));
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic arg$11=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-resource", )), ));
final dc.dynamic o6974$19=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart", "type-like", )), )), (lcoc_core.list.$_invoke$1(expr$2, )), ));
late final dc.dynamic $if_$19;
if((o6974$19 is lcoc_core.ISeqable$iface)){
$if_$19=((o6974$19 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$19=((lcoc_core.ISeqable.extensions(o6974$19, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$19, ));
}
final dc.dynamic $22=(lcoc_core.list.$_invoke$1($if_$19, ));
final dc.dynamic o6974$20=(lcoc_core.concat.$_invoke$4(arg$12, arg$11, $22, (lcoc_core.list.$_invoke$1(dispose$1, )), ));
late final dc.dynamic $if_$20;
if((o6974$20 is lcoc_core.ISeqable$iface)){
$if_$20=((o6974$20 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$20=((lcoc_core.ISeqable.extensions(o6974$20, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$20, ));
}
final dc.dynamic $24=(lcoc_core.list.$_invoke$1($if_$20, ));
final dc.dynamic o6974$21=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-resource!", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$21;
if((o6974$21 is lcoc_core.ISeqable$iface)){
$if_$21=((o6974$21 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$21=((lcoc_core.ISeqable.extensions(o6974$21, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$21, ));
}
final dc.dynamic $23=(lcoc_core.list.$_invoke$1($if_$21, ));
final dc.dynamic o6974$22=(lcoc_core.concat.$_invoke$5(arg$13, $26, $25, $24, $23, ));
late final dc.dynamic $if_$22;
if((o6974$22 is lcoc_core.ISeqable$iface)){
$if_$22=((o6974$22 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$22=((lcoc_core.ISeqable.extensions(o6974$22, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$22, ));
}
final dc.dynamic $27=(lcoc_core.list.$_invoke$1($if_$22, ));
final dc.dynamic o6974$23=(lcoc_core.concat.$_invoke$3(arg$14, $28, $27, ));
late final dc.dynamic $if_$23;
if((o6974$23 is lcoc_core.ISeqable$iface)){
$if_$23=((o6974$23 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$23=((lcoc_core.ISeqable.extensions(o6974$23, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$23, ));
}
final dc.dynamic $71=(lcoc_core.list.$_invoke$1($if_$23, ));
final dc.dynamic arg$23=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-build", )), ));
final dc.dynamic arg$17=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9489__auto__", )), ));
final dc.dynamic arg$15=(lcoc_core.symbol.$_invoke$2(null, "state__9490__auto__", ));
final dc.dynamic o6974$24=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "ResourceState", )), )), ));
late final dc.dynamic $if_$24;
if((o6974$24 is lcoc_core.ISeqable$iface)){
$if_$24=((o6974$24 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$24=((lcoc_core.ISeqable.extensions(o6974$24, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$24, ));
}
final dc.dynamic $29=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$24, ));
final dc.dynamic $30=lcoc_core.with_meta(arg$15, $29, );
final dc.dynamic $34=(lcoc_core.list.$_invoke$1($30, ));
final dc.dynamic arg$16=(lcoc_core.symbol.$_invoke$2(null, "ctx__9491__auto__", ));
final dc.dynamic o6974$25=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "BuildContext", )), )), ));
late final dc.dynamic $if_$25;
if((o6974$25 is lcoc_core.ISeqable$iface)){
$if_$25=((o6974$25 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$25=((lcoc_core.ISeqable.extensions(o6974$25, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$25, ));
}
final dc.dynamic $31=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$25, ));
final dc.dynamic $32=lcoc_core.with_meta(arg$16, $31, );
final dc.dynamic $33=(lcoc_core.list.$_invoke$1($32, ));
final dc.dynamic o6974$26=(lcoc_core.concat.$_invoke$3(arg$17, $34, $33, ));
late final dc.dynamic $if_$26;
if((o6974$26 is lcoc_core.ISeqable$iface)){
$if_$26=((o6974$26 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$26=((lcoc_core.ISeqable.extensions(o6974$26, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$26, ));
}
final dc.dynamic $35=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$26, ));
final dc.dynamic $45=(lcoc_core.list.$_invoke$1($35, ));
final dc.dynamic arg$22=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$21=(lcoc_core.list.$_invoke$1(binding$1, ));
final dc.dynamic arg$20=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart", "type-like", )), ));
final dc.dynamic arg$19=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-resource", )), ));
final dc.dynamic arg$18=(lcoc_core.symbol.$_invoke$2(null, "state__9490__auto__", ));
final dc.dynamic o6974$27=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "ResourceState", )), )), ));
late final dc.dynamic $if_$27;
if((o6974$27 is lcoc_core.ISeqable$iface)){
$if_$27=((o6974$27 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$27=((lcoc_core.ISeqable.extensions(o6974$27, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$27, ));
}
final dc.dynamic $36=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$27, ));
final dc.dynamic $37=lcoc_core.with_meta(arg$18, $36, );
final dc.dynamic $38=(lcoc_core.list.$_invoke$1($37, ));
final dc.dynamic o6974$28=(lcoc_core.concat.$_invoke$2(arg$19, $38, ));
late final dc.dynamic $if_$28;
if((o6974$28 is lcoc_core.ISeqable$iface)){
$if_$28=((o6974$28 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$28=((lcoc_core.ISeqable.extensions(o6974$28, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$28, ));
}
final dc.dynamic $39=(lcoc_core.list.$_invoke$1($if_$28, ));
final dc.dynamic o6974$29=(lcoc_core.concat.$_invoke$3(arg$20, $39, (lcoc_core.list.$_invoke$1(expr$2, )), ));
late final dc.dynamic $if_$29;
if((o6974$29 is lcoc_core.ISeqable$iface)){
$if_$29=((o6974$29 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$29=((lcoc_core.ISeqable.extensions(o6974$29, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$29, ));
}
final dc.dynamic $40=(lcoc_core.list.$_invoke$1($if_$29, ));
final dc.dynamic o6974$30=(lcoc_core.concat.$_invoke$4(arg$21, $40, (lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "ctx__9491__auto__", )), )), ));
late final dc.dynamic $if_$30;
if((o6974$30 is lcoc_core.ISeqable$iface)){
$if_$30=((o6974$30 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$30=((lcoc_core.ISeqable.extensions(o6974$30, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$30, ));
}
final dc.dynamic $41=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$30, ));
final dc.dynamic $43=(lcoc_core.list.$_invoke$1($41, ));
final dc.dynamic o6974$31=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.assoc.$_invoke$5(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), true, )), )), forms$1, ));
late final dc.dynamic $if_$31;
if((o6974$31 is lcoc_core.ISeqable$iface)){
$if_$31=((o6974$31 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$31=((lcoc_core.ISeqable.extensions(o6974$31, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$31, ));
}
final dc.dynamic $42=(lcoc_core.list.$_invoke$1($if_$31, ));
final dc.dynamic o6974$32=(lcoc_core.concat.$_invoke$3(arg$22, $43, $42, ));
late final dc.dynamic $if_$32;
if((o6974$32 is lcoc_core.ISeqable$iface)){
$if_$32=((o6974$32 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$32=((lcoc_core.ISeqable.extensions(o6974$32, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$32, ));
}
final dc.dynamic $44=(lcoc_core.list.$_invoke$1($if_$32, ));
final dc.dynamic o6974$33=(lcoc_core.concat.$_invoke$3(arg$23, $45, $44, ));
late final dc.dynamic $if_$33;
if((o6974$33 is lcoc_core.ISeqable$iface)){
$if_$33=((o6974$33 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$33=((lcoc_core.ISeqable.extensions(o6974$33, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$33, ));
}
final dc.dynamic $70=(lcoc_core.list.$_invoke$1($if_$33, ));
final dc.dynamic arg$42=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-update-state", )), ));
final dc.dynamic arg$25=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9489__auto__", )), ));
final dc.dynamic arg$24=(lcoc_core.symbol.$_invoke$2(null, "state__9490__auto__", ));
final dc.dynamic o6974$34=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "ResourceState", )), )), ));
late final dc.dynamic $if_$34;
if((o6974$34 is lcoc_core.ISeqable$iface)){
$if_$34=((o6974$34 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$34=((lcoc_core.ISeqable.extensions(o6974$34, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$34, ));
}
final dc.dynamic $46=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$34, ));
final dc.dynamic $47=lcoc_core.with_meta(arg$24, $46, );
final dc.dynamic $48=(lcoc_core.list.$_invoke$1($47, ));
final dc.dynamic o6974$35=(lcoc_core.concat.$_invoke$2(arg$25, $48, ));
late final dc.dynamic $if_$35;
if((o6974$35 is lcoc_core.ISeqable$iface)){
$if_$35=((o6974$35 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$35=((lcoc_core.ISeqable.extensions(o6974$35, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$35, ));
}
final dc.dynamic $49=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$35, ));
final dc.dynamic $68=(lcoc_core.list.$_invoke$1($49, ));
final dc.dynamic arg$41=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$36=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "k__9492__auto__", )), )), (lcoc_core.list.$_invoke$1(refresh_on$1, )), ));
late final dc.dynamic $if_$36;
if((o6974$36 is lcoc_core.ISeqable$iface)){
$if_$36=((o6974$36 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$36=((lcoc_core.ISeqable.extensions(o6974$36, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$36, ));
}
final dc.dynamic $50=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$36, ));
final dc.dynamic $66=(lcoc_core.list.$_invoke$1($50, ));
final dc.dynamic arg$40=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-not", )), ));
final dc.dynamic arg$27=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "=", )), ));
final dc.dynamic arg$26=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "k__9492__auto__", )), ));
final dc.dynamic o6974$37=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9490__auto__", )), )), ));
late final dc.dynamic $if_$37;
if((o6974$37 is lcoc_core.ISeqable$iface)){
$if_$37=((o6974$37 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$37=((lcoc_core.ISeqable.extensions(o6974$37, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$37, ));
}
final dc.dynamic $51=(lcoc_core.list.$_invoke$1($if_$37, ));
final dc.dynamic o6974$38=(lcoc_core.concat.$_invoke$3(arg$27, arg$26, $51, ));
late final dc.dynamic $if_$38;
if((o6974$38 is lcoc_core.ISeqable$iface)){
$if_$38=((o6974$38 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$38=((lcoc_core.ISeqable.extensions(o6974$38, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$38, ));
}
final dc.dynamic $64=(lcoc_core.list.$_invoke$1($if_$38, ));
final dc.dynamic arg$39=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$38=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9490__auto__", )), ));
late final lcoc_core.PersistentVector $if_$52;
if(((false != update$1) && (null != update$1))){
final lcoc_core.VectorNode arg$34=lcoc_core.$_EMPTY_VECTOR.root;
final dc.dynamic arg$33=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "as->", )), ));
final dc.dynamic arg$32=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9486__auto__", )), ));
final dc.dynamic arg$31=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$29=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "old-resource__9487__auto__", )), ));
final dc.dynamic o6974$39=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-resource", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9486__auto__", )), )), ));
late final dc.dynamic $if_$39;
if((o6974$39 is lcoc_core.ISeqable$iface)){
$if_$39=((o6974$39 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$39=((lcoc_core.ISeqable.extensions(o6974$39, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$39, ));
}
final dc.dynamic $53=(lcoc_core.list.$_invoke$1($if_$39, ));
final dc.dynamic arg$28=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "new-resource__9488__auto__", )), ));
final dc.dynamic o6974$40=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "old-resource__9487__auto__", )), )), (lcoc_core.list.$_invoke$1(update$1, )), ));
late final dc.dynamic $if_$40;
if((o6974$40 is lcoc_core.ISeqable$iface)){
$if_$40=((o6974$40 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$40=((lcoc_core.ISeqable.extensions(o6974$40, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$40, ));
}
final dc.dynamic $52=(lcoc_core.list.$_invoke$1($if_$40, ));
final dc.dynamic o6974$41=(lcoc_core.concat.$_invoke$4(arg$29, $53, arg$28, $52, ));
late final dc.dynamic $if_$41;
if((o6974$41 is lcoc_core.ISeqable$iface)){
$if_$41=((o6974$41 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$41=((lcoc_core.ISeqable.extensions(o6974$41, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$41, ));
}
final dc.dynamic $54=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$41, ));
final dc.dynamic $59=(lcoc_core.list.$_invoke$1($54, ));
final dc.dynamic arg$30=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-not", )), ));
final dc.dynamic o6974$42=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "identical?", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "old-resource__9487__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "new-resource__9488__auto__", )), )), ));
late final dc.dynamic $if_$42;
if((o6974$42 is lcoc_core.ISeqable$iface)){
$if_$42=((o6974$42 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$42=((lcoc_core.ISeqable.extensions(o6974$42, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$42, ));
}
final dc.dynamic $57=(lcoc_core.list.$_invoke$1($if_$42, ));
final dc.dynamic o6974$43=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "old-resource__9487__auto__", )), )), (lcoc_core.list.$_invoke$1(dispose$1, )), ));
late final dc.dynamic $if_$43;
if((o6974$43 is lcoc_core.ISeqable$iface)){
$if_$43=((o6974$43 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$43=((lcoc_core.ISeqable.extensions(o6974$43, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$43, ));
}
final dc.dynamic $56=(lcoc_core.list.$_invoke$1($if_$43, ));
final dc.dynamic o6974$44=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-resource!", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9486__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "new-resource__9488__auto__", )), )), ));
late final dc.dynamic $if_$44;
if((o6974$44 is lcoc_core.ISeqable$iface)){
$if_$44=((o6974$44 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$44=((lcoc_core.ISeqable.extensions(o6974$44, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$44, ));
}
final dc.dynamic $55=(lcoc_core.list.$_invoke$1($if_$44, ));
final dc.dynamic o6974$45=(lcoc_core.concat.$_invoke$4(arg$30, $57, $56, $55, ));
late final dc.dynamic $if_$45;
if((o6974$45 is lcoc_core.ISeqable$iface)){
$if_$45=((o6974$45 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$45=((lcoc_core.ISeqable.extensions(o6974$45, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$45, ));
}
final dc.dynamic $58=(lcoc_core.list.$_invoke$1($if_$45, ));
final dc.dynamic o6974$46=(lcoc_core.concat.$_invoke$3(arg$31, $59, $58, ));
late final dc.dynamic $if_$46;
if((o6974$46 is lcoc_core.ISeqable$iface)){
$if_$46=((o6974$46 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$46=((lcoc_core.ISeqable.extensions(o6974$46, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$46, ));
}
final dc.dynamic $60=(lcoc_core.list.$_invoke$1($if_$46, ));
final dc.dynamic o6974$47=(lcoc_core.concat.$_invoke$3(arg$33, arg$32, $60, ));
late final dc.dynamic $if_$47;
if((o6974$47 is lcoc_core.ISeqable$iface)){
$if_$47=((o6974$47 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$47=((lcoc_core.ISeqable.extensions(o6974$47, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$47, ));
}
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(1, $if_$47, ));
$if_$52=lcoc_core.PersistentVector(null, 1, 5, arg$34, fl$1, -1, );
}else{
final lcoc_core.VectorNode arg$37=lcoc_core.$_EMPTY_VECTOR.root;
final dc.dynamic arg$36=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic arg$35=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-resource", )), ));
final dc.dynamic o6974$48=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart", "type-like", )), )), (lcoc_core.list.$_invoke$1(expr$2, )), ));
late final dc.dynamic $if_$48;
if((o6974$48 is lcoc_core.ISeqable$iface)){
$if_$48=((o6974$48 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$48=((lcoc_core.ISeqable.extensions(o6974$48, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$48, ));
}
final dc.dynamic $61=(lcoc_core.list.$_invoke$1($if_$48, ));
final dc.dynamic o6974$49=(lcoc_core.concat.$_invoke$4(arg$36, arg$35, $61, (lcoc_core.list.$_invoke$1(dispose$1, )), ));
late final dc.dynamic $if_$49;
if((o6974$49 is lcoc_core.ISeqable$iface)){
$if_$49=((o6974$49 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$49=((lcoc_core.ISeqable.extensions(o6974$49, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$49, ));
}
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, $if_$49, ));
final dc.dynamic o6974$50=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-resource!", )), )), (lcoc_core.list.$_invoke$1(expr$2, )), ));
late final dc.dynamic $if_$50;
if((o6974$50 is lcoc_core.ISeqable$iface)){
$if_$50=((o6974$50 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$50=((lcoc_core.ISeqable.extensions(o6974$50, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$50, ));
}
(fl$2[1]=$if_$50);
$if_$52=lcoc_core.PersistentVector(null, 2, 5, arg$37, fl$2, -1, );
}
final dc.dynamic o6974$51=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k!", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "k__9492__auto__", )), )), ));
late final dc.dynamic $if_$51;
if((o6974$51 is lcoc_core.ISeqable$iface)){
$if_$51=((o6974$51 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$51=((lcoc_core.ISeqable.extensions(o6974$51, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$51, ));
}
final dc.dynamic $62=(lcoc_core.list.$_invoke$1($if_$51, ));
final dc.dynamic o6974$52=(lcoc_core.concat.$_invoke$4(arg$39, arg$38, $if_$52, $62, ));
late final dc.dynamic $if_$53;
if((o6974$52 is lcoc_core.ISeqable$iface)){
$if_$53=((o6974$52 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$53=((lcoc_core.ISeqable.extensions(o6974$52, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$52, ));
}
final dc.dynamic $63=(lcoc_core.list.$_invoke$1($if_$53, ));
final dc.dynamic o6974$53=(lcoc_core.concat.$_invoke$3(arg$40, $64, $63, ));
late final dc.dynamic $if_$54;
if((o6974$53 is lcoc_core.ISeqable$iface)){
$if_$54=((o6974$53 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$54=((lcoc_core.ISeqable.extensions(o6974$53, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$53, ));
}
final dc.dynamic $65=(lcoc_core.list.$_invoke$1($if_$54, ));
final dc.dynamic o6974$54=(lcoc_core.concat.$_invoke$3(arg$41, $66, $65, ));
late final dc.dynamic $if_$55;
if((o6974$54 is lcoc_core.ISeqable$iface)){
$if_$55=((o6974$54 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$55=((lcoc_core.ISeqable.extensions(o6974$54, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$54, ));
}
final dc.dynamic $67=(lcoc_core.list.$_invoke$1($if_$55, ));
final dc.dynamic o6974$55=(lcoc_core.concat.$_invoke$3(arg$42, $68, $67, ));
late final dc.dynamic $if_$56;
if((o6974$55 is lcoc_core.ISeqable$iface)){
$if_$56=((o6974$55 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$56=((lcoc_core.ISeqable.extensions(o6974$55, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$55, ));
}
final dc.dynamic $69=(lcoc_core.list.$_invoke$1($if_$56, ));
final dc.dynamic o6974$56=(lcoc_core.concat.$_invoke_more$10(arg$49, arg$48, $74, arg$47, arg$46, arg$45, arg$44, $73, arg$43, [$72, $71, $70, $69, ], ));
if((o6974$56 is lcoc_core.ISeqable$iface)){
return ((o6974$56 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$56, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$56, ));
}

// END expand-resource

// BEGIN expand-spy
dc.dynamic expand_spy(dc.dynamic env$1, dc.dynamic expr$1, dc.dynamic forms$1, ){
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "SpyWidget", )), ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), ));
late final dc.dynamic $if_$1;
if((env$1 is lcoc_core.IAssociative$iface)){
$if_$1=((env$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "key", 3455907201, ), null, ));
}else{
$if_$1=((lcoc_core.IAssociative.extensions(env$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$1, ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3(arg$1, $1, forms$1, ));
late final dc.dynamic $if_$2;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic arg$2=(lcoc_core.symbol.$_invoke$2(null, "props-builder__9551__auto__", ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_foundation", "DiagnosticPropertiesBuilder", )), )), ));
late final dc.dynamic $if_$3;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $2=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$3, ));
final dc.dynamic $3=lcoc_core.with_meta(arg$2, $2, );
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($3, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$1($4, ));
late final dc.dynamic $if_$4;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $5=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$4, ));
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($5, ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".add", )), ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "props-builder__9551__auto__", )), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_foundation", "DiagnosticsNode.message", )), ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".toString", )), )), (lcoc_core.list.$_invoke$1(expr$1, )), ));
late final dc.dynamic $if_$5;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$5, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$2(arg$3, $6, ));
late final dc.dynamic $if_$6;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($if_$6, ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$3(arg$5, arg$4, $7, ));
late final dc.dynamic $if_$7;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $8=(lcoc_core.list.$_invoke$1($if_$7, ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$3(arg$6, $9, $8, ));
late final dc.dynamic $if_$8;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($if_$8, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$4(arg$8, arg$7, $11, $10, ));
if((o6974$8 is lcoc_core.ISeqable$iface)){
return ((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}

// END expand-spy

// BEGIN expand-visible
dc.dynamic expand_visible(dc.dynamic env$1, dc.dynamic visible$1, dc.dynamic forms$1, ){
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "if", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1(visible$1, ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1(env$1, )), forms$1, ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$1, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "SizedBox.shrink", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), )), (lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), )), ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$4(arg$2, arg$1, $2, $1, ));
if((o6974$3 is lcoc_core.ISeqable$iface)){
return ((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}

// END expand-visible

// BEGIN expand-vsync
dc.dynamic expand_vsync(dc.dynamic env$1, dc.dynamic name$1, dc.dynamic forms$1, ){
final dc.dynamic arg$18=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "reify", )), ));
final dc.dynamic arg$17=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "extends", 2423719685, ), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "StatefulWidget", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), )), (lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), )), ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $20=(lcoc_core.list.$_invoke$1($if_$1, ));
final dc.dynamic arg$16=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "no-meta", 2746638389, ), ));
final dc.dynamic arg$15=(lcoc_core.list.$_invoke$1(true, ));
final dc.dynamic arg$14=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "name-hint", 2341976313, ), ));
final dc.dynamic arg$13=(lcoc_core.list.$_invoke$1("vsync", ));
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "createState", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9535__auto__", )), )), ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$2, ));
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "reify", )), ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "extends", 2423719685, ), ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "State", )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "no-meta", 2746638389, ), ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1(true, ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "build", )), ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9536__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "ctx__9537__auto__", )), )), ));
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $2=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$3, ));
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($2, ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-build", )), ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-widget", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9536__auto__", )), )), ));
late final dc.dynamic $if_$4;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$4(arg$1, $3, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9536__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "ctx__9537__auto__", )), )), ));
late final dc.dynamic $if_$5;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($if_$5, ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$3(arg$2, $5, $4, ));
late final dc.dynamic $if_$6;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($if_$6, ));
final dc.dynamic arg$3=(lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "TickerProviderStateMixin", ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "mixin", 2105145522, ), )), (lcoc_core.list.$_invoke$1(true, )), ));
late final dc.dynamic $if_$7;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $6=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$7, ));
final dc.dynamic $7=lcoc_core.with_meta(arg$3, $6, );
final dc.dynamic $8=(lcoc_core.list.$_invoke$1($7, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$7(arg$8, arg$7, arg$6, arg$5, arg$4, $9, $8, ));
late final dc.dynamic $if_$8;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($if_$8, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$3(arg$9, $11, $10, ));
late final dc.dynamic $if_$9;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$9=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$9=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $19=(lcoc_core.list.$_invoke$1($if_$9, ));
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "StateLifecycle", )), ));
final dc.dynamic arg$11=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-build", )), ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9535__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9536__auto__", )), )), (lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), ));
late final dc.dynamic $if_$10;
if((o6974$10 is lcoc_core.ISeqable$iface)){
$if_$10=((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$10=((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}
final dc.dynamic $12=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$10, ));
final dc.dynamic $17=(lcoc_core.list.$_invoke$1($12, ));
final dc.dynamic arg$10=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$11=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.vary_meta.$_invoke$4(name$1, lcoc_core.assoc, const lcoc_core.Keyword(null, "tag", 2780644040, ), (lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "TickerProvider", )), )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9536__auto__", )), )), ));
late final dc.dynamic $if_$11;
if((o6974$11 is lcoc_core.ISeqable$iface)){
$if_$11=((o6974$11 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$11=((lcoc_core.ISeqable.extensions(o6974$11, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$11, ));
}
final dc.dynamic $13=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$11, ));
final dc.dynamic $15=(lcoc_core.list.$_invoke$1($13, ));
final dc.dynamic o6974$12=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.assoc.$_invoke$5(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), true, )), )), forms$1, ));
late final dc.dynamic $if_$12;
if((o6974$12 is lcoc_core.ISeqable$iface)){
$if_$12=((o6974$12 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$12=((lcoc_core.ISeqable.extensions(o6974$12, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$12, ));
}
final dc.dynamic $14=(lcoc_core.list.$_invoke$1($if_$12, ));
final dc.dynamic o6974$13=(lcoc_core.concat.$_invoke$3(arg$10, $15, $14, ));
late final dc.dynamic $if_$13;
if((o6974$13 is lcoc_core.ISeqable$iface)){
$if_$13=((o6974$13 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$13=((lcoc_core.ISeqable.extensions(o6974$13, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$13, ));
}
final dc.dynamic $16=(lcoc_core.list.$_invoke$1($if_$13, ));
final dc.dynamic o6974$14=(lcoc_core.concat.$_invoke$3(arg$11, $17, $16, ));
late final dc.dynamic $if_$14;
if((o6974$14 is lcoc_core.ISeqable$iface)){
$if_$14=((o6974$14 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$14=((lcoc_core.ISeqable.extensions(o6974$14, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$14, ));
}
final dc.dynamic $18=(lcoc_core.list.$_invoke$1($if_$14, ));
final dc.dynamic o6974$15=(lcoc_core.concat.$_invoke_more$10(arg$18, arg$17, $20, arg$16, arg$15, arg$14, arg$13, $19, arg$12, [$18, ], ));
if((o6974$15 is lcoc_core.ISeqable$iface)){
return ((o6974$15 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$15, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$15, ));
}

// END expand-vsync

// BEGIN expand-watch
dc.dynamic expand_watch(dc.dynamic $AMPERSAND_env$1, dc.dynamic env$1, dc.dynamic binding$1, dc.dynamic expr$1, dc.dynamic p$9464_$1, dc.dynamic forms$1, ){
late final dc.dynamic opts$2;
if(((lcoc_core.ISeq.satisfies(p$9464_$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(p$9464_$1, );
if(((false != test$1) && (null != test$1))){
opts$2=lcoc_core.seq_to_map_for_destructuring(p$9464_$1, );
}else{
late final dc.dynamic $if_$1;
if((p$9464_$1 is lcoc_core.ISeqable$iface)){
$if_$1=((p$9464_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(p$9464_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(p$9464_$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
opts$2=lcoc_core.first(p$9464_$1, );
}else{
opts$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
opts$2=p$9464_$1;
}
late final dc.dynamic subscribable_binding$1;
if((opts$2 is lcoc_core.ILookup$iface)){
subscribable_binding$1=((opts$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "as", 55427094, ), ));
}else{
subscribable_binding$1=((lcoc_core.ILookup.extensions(opts$2, ) as lcoc_core.ILookup$ext).$_lookup$1(opts$2, const lcoc_core.Keyword(null, "as", 55427094, ), ));
}
late final dc.dynamic dispose$1;
if((opts$2 is lcoc_core.ILookup$iface)){
dispose$1=((opts$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "dispose", 4183551234, ), ));
}else{
dispose$1=((lcoc_core.ILookup.extensions(opts$2, ) as lcoc_core.ILookup$ext).$_lookup$1(opts$2, const lcoc_core.Keyword(null, "dispose", 4183551234, ), ));
}
late final dc.dynamic dispose_value$1;
if((opts$2 is lcoc_core.ILookup$iface)){
dispose_value$1=((opts$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "dispose-value", 3330559482, ), ));
}else{
dispose_value$1=((lcoc_core.ILookup.extensions(opts$2, ) as lcoc_core.ILookup$ext).$_lookup$1(opts$2, const lcoc_core.Keyword(null, "dispose-value", 3330559482, ), ));
}
final dc.dynamic expr$2=(lcoc_core.list.$_invoke$2((lcoc_core.symbol.$_invoke$2("dart", "async-barrier", )), expr$1, ));
final dc.dynamic accessor$1=(const lcoc_core.Keyword(null, ">", 1674685720, ).$_invoke$1(opts$2, ));
final dc.dynamic value_accessor$1=(const lcoc_core.Keyword(null, "value>", 207619144, ).$_invoke$1(opts$2, ));
late final dc.dynamic dispose$2;
if(dc.identical(dispose$1, true, )){
dispose$2=(lcoc_core.symbol.$_invoke$2(null, ".dispose", ));
}else{
dispose$2=dispose$1;
}
late final dc.dynamic dispose_value$2;
if(dc.identical(dispose_value$1, true, )){
dispose_value$2=(lcoc_core.symbol.$_invoke$2(null, ".dispose", ));
}else{
dispose_value$2=dispose_value$1;
}
late final dc.dynamic binding$2;
if(((false != dispose_value$2) && (null != dispose_value$2))){
binding$2=lcoc_flutter.ensure_value_sym(binding$1, );
}else{
binding$2=binding$1;
}
final dc.dynamic vsym$1=lcoc_flutter.value_sym(binding$2, );
assert((){
late final dc.dynamic $if_$2;
if(((false != dispose_value$2) && (null != dispose_value$2))){
$if_$2=vsym$1;
}else{
$if_$2=true;
}
late final dc.bool $if_$3;
if(((false != $if_$2) && (null != $if_$2))){
$if_$3=true;
}else{
$if_$3=false;
}
return $if_$3;
}(), "dispose-value needs a whole value binding"); // assert

final dc.dynamic bound_locals$1=lcoc_flutter.destructuring_bound_locals(binding$2, );
final lcoc_core.PersistentVector cond_$GT_$6877_$AUTO_$2=lcoc_core.$_EMPTY_VECTOR;
late final dc.dynamic $if_$4;
if(((false != vsym$1) && (null != vsym$1))){
if((cond_$GT_$6877_$AUTO_$2 is lcoc_core.ICollection$iface)){
$if_$4=((cond_$GT_$6877_$AUTO_$2 as lcoc_core.ICollection$iface).$_conj$1(vsym$1, ));
}else{
$if_$4=((lcoc_core.ICollection.extensions(cond_$GT_$6877_$AUTO_$2, ) as lcoc_core.ICollection$ext).$_conj$1(cond_$GT_$6877_$AUTO_$2, vsym$1, ));
}
}else{
$if_$4=cond_$GT_$6877_$AUTO_$2;
}
final dc.dynamic bound_locals$2=(lcoc_core.into.$_invoke$2($if_$4, (lcoc_core.disj.$_invoke$2(bound_locals$1, vsym$1, )), ));
late final dc.dynamic seq$9466_$1;
if((bound_locals$2 is lcoc_core.ISeqable$iface)){
seq$9466_$1=((bound_locals$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9466_$1=((lcoc_core.ISeqable.extensions(bound_locals$2, ) as lcoc_core.ISeqable$ext).$_seq$0(bound_locals$2, ));
}
final dc.dynamic first$9467_$1=lcoc_core.first(seq$9466_$1, );
final dc.dynamic seq$9466_$2=lcoc_core.next(seq$9466_$1, );
late final lcoc_core.PersistentVector? vec$9468_$1;
if(((false != seq$9466_$2) && (null != seq$9466_$2))){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "pack__9454__auto__", )), ));
(fl$1[1]=bound_locals$2);
vec$9468_$1=lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, );
}else{
vec$9468_$1=null;
}
final dc.dynamic pack_sym$1=(lcoc_core.nth.$_invoke$3(vec$9468_$1, 0, null, ));
late final dc.dynamic new_val_sym$1;
if(((false != pack_sym$1) && (null != pack_sym$1))){
new_val_sym$1=pack_sym$1;
}else{
new_val_sym$1=first$9467_$1;
}
late final dc.dynamic binding_for_value_disposal$1;
if((null != vec$9468_$1)){
final lcoc_core.VectorNode arg$2=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(1, vsym$1, ));
binding_for_value_disposal$1=lcoc_core.PersistentVector(null, 1, 5, arg$2, fl$2, -1, );
}else{
binding_for_value_disposal$1=vsym$1;
}
final lcoc_core.VectorNode arg$8=lcoc_core.$_EMPTY_VECTOR.root;
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1(expr$2, ));
late final dc.dynamic $if_$5;
if(((false != accessor$1) && (null != accessor$1))){
$if_$5=accessor$1;
}else{
$if_$5=(lcoc_core.symbol.$_invoke$2("cljd.core", "->", ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$5, ));
late final dc.dynamic $if_$6;
if(((false != dispose$2) && (null != dispose$2))){
$if_$6=dispose$2;
}else{
$if_$6=(lcoc_core.symbol.$_invoke$2("cljd.core", "->", ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$6, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$4(arg$4, arg$3, $2, $1, ));
late final dc.dynamic $if_$7;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(2, $if_$7, ));
late final dc.dynamic $if_$12;
if(((false != vsym$1) && (null != vsym$1))){
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1(vsym$1, )), ));
late final dc.dynamic $if_$8;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $3=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$8, ));
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($3, ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1(vsym$1, ));
late final dc.dynamic $if_$9;
if(((false != value_accessor$1) && (null != value_accessor$1))){
$if_$9=value_accessor$1;
}else{
$if_$9=(lcoc_core.symbol.$_invoke$2("cljd.core", "->", ));
}
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($if_$9, ));
late final dc.dynamic $if_$10;
if(((false != dispose_value$2) && (null != dispose_value$2))){
$if_$10=dispose_value$2;
}else{
$if_$10=(lcoc_core.symbol.$_invoke$2("cljd.core", "->", ));
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($if_$10, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$4(arg$6, arg$5, $5, $4, ));
late final dc.dynamic $if_$11;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$11=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$11=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$11, ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$3(arg$7, $7, $6, ));
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$12=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$12=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
}else{
$if_$12=null;
}
(fl$3[1]=$if_$12);
final dc.dynamic refresh_on$1=lcoc_flutter.refresh_on_expr(opts$2, $AMPERSAND_env$1, lcoc_core.PersistentVector(null, 2, 5, arg$8, fl$3, -1, ), );
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1(binding$2, )), ));
late final dc.dynamic $if_$13;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$13=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$13=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $8=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$13, ));
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($8, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$3(arg$9, $9, (lcoc_core.list.$_invoke$1(bound_locals$2, )), ));
late final dc.dynamic $if_$14;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$14=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$14=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic destructuring_refresh_on$1=lcoc_flutter.refresh_on_expr(null, $AMPERSAND_env$1, $if_$14, );
late final dc.dynamic $if_$15;
if(((false != destructuring_refresh_on$1) && (null != destructuring_refresh_on$1))){
$if_$15=refresh_on$1;
}else{
$if_$15=destructuring_refresh_on$1;
}
late final dc.bool $if_$16;
if(((false != $if_$15) && (null != $if_$15))){
$if_$16=false;
}else{
$if_$16=true;
}
late final dc.dynamic refresh_on$2;
if($if_$16){
if(((false != destructuring_refresh_on$1) && (null != destructuring_refresh_on$1))){
refresh_on$2=destructuring_refresh_on$1;
}else{
refresh_on$2=refresh_on$1;
}
}else if(lcoc_core.vector$QMARK_(refresh_on$1, )){
if(lcoc_core.vector$QMARK_(destructuring_refresh_on$1, )){
refresh_on$2=(lcoc_core.into.$_invoke$2(refresh_on$1, destructuring_refresh_on$1, ));
}else{
if((refresh_on$1 is lcoc_core.ICollection$iface)){
refresh_on$2=((refresh_on$1 as lcoc_core.ICollection$iface).$_conj$1(destructuring_refresh_on$1, ));
}else{
refresh_on$2=((lcoc_core.ICollection.extensions(refresh_on$1, ) as lcoc_core.ICollection$ext).$_conj$1(refresh_on$1, destructuring_refresh_on$1, ));
}
}
}else if(lcoc_core.vector$QMARK_(destructuring_refresh_on$1, )){
if((destructuring_refresh_on$1 is lcoc_core.ICollection$iface)){
refresh_on$2=((destructuring_refresh_on$1 as lcoc_core.ICollection$iface).$_conj$1(refresh_on$1, ));
}else{
refresh_on$2=((lcoc_core.ICollection.extensions(destructuring_refresh_on$1, ) as lcoc_core.ICollection$ext).$_conj$1(destructuring_refresh_on$1, refresh_on$1, ));
}
}else{
final lcoc_core.VectorNode arg$10=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(2, refresh_on$1, ));
(fl$4[1]=destructuring_refresh_on$1);
refresh_on$2=lcoc_core.PersistentVector(null, 2, 5, arg$10, fl$4, -1, );
}
final dc.dynamic state$1=(lcoc_core.symbol.$_invoke$2(null, "state__9455__auto__", ));
final dc.dynamic subscribable$1=(lcoc_core.symbol.$_invoke$2(null, "subscribable__9456__auto__", ));
late final dc.bool or$6718_$AUTO_$7;
if(lcoc_core.symbol$QMARK_(binding$2, )){
or$6718_$AUTO_$7=false;
}else{
or$6718_$AUTO_$7=true;
}
late final dc.dynamic $if_$17;
if(or$6718_$AUTO_$7){
$if_$17=or$6718_$AUTO_$7;
}else{
final dc.dynamic or$6718_$AUTO_$8=(const lcoc_core.Keyword(null, "dedup", 3952841402, ).$_invoke$2(opts$2, true, ));
if(((false != or$6718_$AUTO_$8) && (null != or$6718_$AUTO_$8))){
$if_$17=or$6718_$AUTO_$8;
}else{
if(((false != accessor$1) && (null != accessor$1))){
$if_$17=accessor$1;
}else{
if(((false != value_accessor$1) && (null != value_accessor$1))){
$if_$17=value_accessor$1;
}else{
$if_$17=dispose_value$2;
}
}
}
}
late final dc.dynamic update_state$1;
if(((false != $if_$17) && (null != $if_$17))){
late final dc.dynamic $if_$18;
if(((false != accessor$1) && (null != accessor$1))){
$if_$18=accessor$1;
}else{
$if_$18=value_accessor$1;
}
late final dc.dynamic vec$9471_$1;
if(((false != $if_$18) && (null != $if_$18))){
final dc.dynamic arg$15=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "p__9457__auto__", )), ));
final dc.dynamic arg$14=(lcoc_core.list.$_invoke$1(binding$2, ));
final dc.dynamic arg$13=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic arg$12=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "p__9457__auto__", )), ));
late final dc.dynamic $if_$20;
if(((false != accessor$1) && (null != accessor$1))){
final dc.dynamic arg$11=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "do", )), ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), )), (lcoc_core.list.$_invoke$1(subscribable$1, )), (lcoc_core.list.$_invoke$1(accessor$1, )), ));
late final dc.dynamic $if_$19;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$19=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$19=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($if_$19, ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$2(arg$11, $10, ));
if((o6974$10 is lcoc_core.ISeqable$iface)){
$if_$20=((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$20=((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}
}else{
$if_$20=(lcoc_core.symbol.$_invoke$2("cljd.core", "->", ));
}
final dc.dynamic $12=(lcoc_core.list.$_invoke$1($if_$20, ));
late final dc.dynamic $if_$21;
if(((false != value_accessor$1) && (null != value_accessor$1))){
$if_$21=value_accessor$1;
}else{
$if_$21=(lcoc_core.symbol.$_invoke$2("cljd.core", "->", ));
}
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($if_$21, ));
final dc.dynamic o6974$11=(lcoc_core.concat.$_invoke$4(arg$13, arg$12, $12, $11, ));
late final dc.dynamic $if_$22;
if((o6974$11 is lcoc_core.ISeqable$iface)){
$if_$22=((o6974$11 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$22=((lcoc_core.ISeqable.extensions(o6974$11, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$11, ));
}
final dc.dynamic $13=(lcoc_core.list.$_invoke$1($if_$22, ));
final dc.dynamic o6974$12=(lcoc_core.concat.$_invoke$3(arg$15, arg$14, $13, ));
late final dc.dynamic $if_$23;
if((o6974$12 is lcoc_core.ISeqable$iface)){
$if_$23=((o6974$12 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$23=((lcoc_core.ISeqable.extensions(o6974$12, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$12, ));
}
vec$9471_$1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$23, ));
}else{
vec$9471_$1=null;
}
late final dc.dynamic seq$9472_$1;
if((vec$9471_$1 is lcoc_core.ISeqable$iface)){
seq$9472_$1=((vec$9471_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9472_$1=((lcoc_core.ISeqable.extensions(vec$9471_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(vec$9471_$1, ));
}
final dc.dynamic first$9473_$1=lcoc_core.first(seq$9472_$1, );
final dc.dynamic seq$9472_$2=lcoc_core.next(seq$9472_$1, );
late final dc.dynamic $if_$24;
if((vsym$1 is lcoc_core.IMeta$iface)){
$if_$24=((vsym$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
$if_$24=((lcoc_core.IMeta.extensions(vsym$1, ) as lcoc_core.IMeta$ext).$_meta$0(vsym$1, ));
}
final dc.dynamic $14=(const lcoc_core.Keyword("cljd.flutter", "ensured", 2475456849, ).$_invoke$1($if_$24, ));
late final dc.dynamic no_equal_for_vsym$1;
if(((false != $14) && (null != $14))){
final dc.dynamic o6974$14=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "next", )), )), ));
if((o6974$14 is lcoc_core.ISeqable$iface)){
no_equal_for_vsym$1=((o6974$14 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
no_equal_for_vsym$1=((lcoc_core.ISeqable.extensions(o6974$14, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$14, ));
}
}else{
no_equal_for_vsym$1=(lcoc_core.symbol.$_invoke$2("cljd.core", "->", ));
}
final dc.dynamic arg$25=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
late final dc.dynamic $if_$25;
if(((false != first$9473_$1) && (null != first$9473_$1))){
$if_$25=first$9473_$1;
}else{
$if_$25=binding$2;
}
final dc.dynamic $15=(lcoc_core.list.$_invoke$1($if_$25, ));
final dc.dynamic o6974$15=(lcoc_core.concat.$_invoke$1($15, ));
late final dc.dynamic $if_$26;
if((o6974$15 is lcoc_core.ISeqable$iface)){
$if_$26=((o6974$15 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$26=((lcoc_core.ISeqable.extensions(o6974$15, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$15, ));
}
final dc.dynamic $16=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$26, ));
final dc.dynamic $31=(lcoc_core.list.$_invoke$1($16, ));
final dc.dynamic arg$24=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$16=(lcoc_core.concat.$_invoke$2(seq$9472_$2, vec$9468_$1, ));
late final dc.dynamic $if_$27;
if((o6974$16 is lcoc_core.ISeqable$iface)){
$if_$27=((o6974$16 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$27=((lcoc_core.ISeqable.extensions(o6974$16, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$16, ));
}
final dc.dynamic $17=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$27, ));
final dc.dynamic $29=(lcoc_core.list.$_invoke$1($17, ));
final dc.dynamic arg$23=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->>", )), ));
final lcoc_core.VectorNode arg$22=lcoc_core.$_EMPTY_VECTOR.root;
final dc.dynamic test$2=(const lcoc_core.Keyword(null, "dedup", 3952841402, ).$_invoke$2(opts$2, true, ));
late final dc.dynamic $if_$32;
if(((false != test$2) && (null != test$2))){
final dc.dynamic arg$18=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-not", )), ));
final dc.dynamic arg$17=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "=", )), ));
final dc.dynamic o6974$17=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), )), (lcoc_core.list.$_invoke$1(new_val_sym$1, )), (lcoc_core.list.$_invoke$1(no_equal_for_vsym$1, )), ));
late final dc.dynamic $if_$28;
if((o6974$17 is lcoc_core.ISeqable$iface)){
$if_$28=((o6974$17 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$28=((lcoc_core.ISeqable.extensions(o6974$17, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$17, ));
}
final dc.dynamic $20=(lcoc_core.list.$_invoke$1($if_$28, ));
final dc.dynamic arg$16=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic o6974$18=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-latest", )), )), (lcoc_core.list.$_invoke$1(state$1, )), ));
late final dc.dynamic $if_$29;
if((o6974$18 is lcoc_core.ISeqable$iface)){
$if_$29=((o6974$18 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$29=((lcoc_core.ISeqable.extensions(o6974$18, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$18, ));
}
final dc.dynamic $18=(lcoc_core.list.$_invoke$1($if_$29, ));
final dc.dynamic o6974$19=(lcoc_core.concat.$_invoke$3(arg$16, $18, (lcoc_core.list.$_invoke$1(no_equal_for_vsym$1, )), ));
late final dc.dynamic $if_$30;
if((o6974$19 is lcoc_core.ISeqable$iface)){
$if_$30=((o6974$19 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$30=((lcoc_core.ISeqable.extensions(o6974$19, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$19, ));
}
final dc.dynamic $19=(lcoc_core.list.$_invoke$1($if_$30, ));
final dc.dynamic o6974$20=(lcoc_core.concat.$_invoke$3(arg$17, $20, $19, ));
late final dc.dynamic $if_$31;
if((o6974$20 is lcoc_core.ISeqable$iface)){
$if_$31=((o6974$20 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$31=((lcoc_core.ISeqable.extensions(o6974$20, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$20, ));
}
final dc.dynamic $21=(lcoc_core.list.$_invoke$1($if_$31, ));
final dc.dynamic o6974$21=(lcoc_core.concat.$_invoke$2(arg$18, $21, ));
if((o6974$21 is lcoc_core.ISeqable$iface)){
$if_$32=((o6974$21 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$32=((lcoc_core.ISeqable.extensions(o6974$21, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$21, ));
}
}else{
$if_$32=null;
}
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(3, $if_$32, ));
late final dc.dynamic $if_$37;
if(((false != dispose_value$2) && (null != dispose_value$2))){
final dc.dynamic arg$21=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "do", )), ));
final dc.dynamic arg$20=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$19=(lcoc_core.list.$_invoke$1(binding_for_value_disposal$1, ));
final dc.dynamic o6974$22=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-latest", )), )), (lcoc_core.list.$_invoke$1(state$1, )), ));
late final dc.dynamic $if_$33;
if((o6974$22 is lcoc_core.ISeqable$iface)){
$if_$33=((o6974$22 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$33=((lcoc_core.ISeqable.extensions(o6974$22, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$22, ));
}
final dc.dynamic $22=(lcoc_core.list.$_invoke$1($if_$33, ));
final dc.dynamic o6974$23=(lcoc_core.concat.$_invoke$2(arg$19, $22, ));
late final dc.dynamic $if_$34;
if((o6974$23 is lcoc_core.ISeqable$iface)){
$if_$34=((o6974$23 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$34=((lcoc_core.ISeqable.extensions(o6974$23, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$23, ));
}
final dc.dynamic $23=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$34, ));
final dc.dynamic $25=(lcoc_core.list.$_invoke$1($23, ));
final dc.dynamic o6974$24=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "some->", )), )), (lcoc_core.list.$_invoke$1(vsym$1, )), (lcoc_core.list.$_invoke$1(dispose_value$2, )), ));
late final dc.dynamic $if_$35;
if((o6974$24 is lcoc_core.ISeqable$iface)){
$if_$35=((o6974$24 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$35=((lcoc_core.ISeqable.extensions(o6974$24, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$24, ));
}
final dc.dynamic $24=(lcoc_core.list.$_invoke$1($if_$35, ));
final dc.dynamic o6974$25=(lcoc_core.concat.$_invoke$3(arg$20, $25, $24, ));
late final dc.dynamic $if_$36;
if((o6974$25 is lcoc_core.ISeqable$iface)){
$if_$36=((o6974$25 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$36=((lcoc_core.ISeqable.extensions(o6974$25, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$25, ));
}
final dc.dynamic $26=(lcoc_core.list.$_invoke$1($if_$36, ));
final dc.dynamic o6974$26=(lcoc_core.concat.$_invoke$2(arg$21, $26, ));
if((o6974$26 is lcoc_core.ISeqable$iface)){
$if_$37=((o6974$26 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$37=((lcoc_core.ISeqable.extensions(o6974$26, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$26, ));
}
}else{
$if_$37=null;
}
(fl$5[1]=$if_$37);
final dc.dynamic o6974$27=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(state$1, )), (lcoc_core.list.$_invoke$1(new_val_sym$1, )), ));
late final dc.dynamic $if_$38;
if((o6974$27 is lcoc_core.ISeqable$iface)){
$if_$38=((o6974$27 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$38=((lcoc_core.ISeqable.extensions(o6974$27, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$27, ));
}
(fl$5[2]=$if_$38);
final lcoc_core.PersistentVector coll7187$1=lcoc_core.PersistentVector(null, 3, 5, arg$22, fl$5, -1, );
late final dc.dynamic $if_$39;
if((coll7187$1 is lcoc_core.IReversible$iface)){
$if_$39=((coll7187$1 as lcoc_core.IReversible$iface).$_rseq$0());
}else{
$if_$39=((lcoc_core.IReversible.extensions(coll7187$1, ) as lcoc_core.IReversible$ext).$_rseq$0(coll7187$1, ));
}
final dc.dynamic $27=(lcoc_core.remove.$_invoke$2(lcoc_core.nil$QMARK_, $if_$39, ));
final dc.dynamic o6974$28=(lcoc_core.concat.$_invoke$2(arg$23, $27, ));
late final dc.dynamic $if_$40;
if((o6974$28 is lcoc_core.ISeqable$iface)){
$if_$40=((o6974$28 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$40=((lcoc_core.ISeqable.extensions(o6974$28, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$28, ));
}
final dc.dynamic $28=(lcoc_core.list.$_invoke$1($if_$40, ));
final dc.dynamic o6974$29=(lcoc_core.concat.$_invoke$3(arg$24, $29, $28, ));
late final dc.dynamic $if_$41;
if((o6974$29 is lcoc_core.ISeqable$iface)){
$if_$41=((o6974$29 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$41=((lcoc_core.ISeqable.extensions(o6974$29, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$29, ));
}
final dc.dynamic $30=(lcoc_core.list.$_invoke$1($if_$41, ));
final dc.dynamic o6974$30=(lcoc_core.concat.$_invoke$3(arg$25, $31, $30, ));
if((o6974$30 is lcoc_core.ISeqable$iface)){
update_state$1=((o6974$30 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
update_state$1=((lcoc_core.ISeqable.extensions(o6974$30, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$30, ));
}
}else{
update_state$1=state$1;
}
final dc.dynamic arg$30=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$28=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "update__9458__auto__", )), ));
final dc.dynamic arg$27=(lcoc_core.list.$_invoke$1(update_state$1, ));
final dc.dynamic arg$26=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "sub__9459__auto__", )), ));
final dc.dynamic o6974$31=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-subscribe", )), )), (lcoc_core.list.$_invoke$1(subscribable$1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "update__9458__auto__", )), )), ));
late final dc.dynamic $if_$42;
if((o6974$31 is lcoc_core.ISeqable$iface)){
$if_$42=((o6974$31 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$42=((lcoc_core.ISeqable.extensions(o6974$31, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$31, ));
}
final dc.dynamic $32=(lcoc_core.list.$_invoke$1($if_$42, ));
final dc.dynamic o6974$32=(lcoc_core.concat.$_invoke$4(arg$28, arg$27, arg$26, $32, ));
late final dc.dynamic $if_$43;
if((o6974$32 is lcoc_core.ISeqable$iface)){
$if_$43=((o6974$32 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$43=((lcoc_core.ISeqable.extensions(o6974$32, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$32, ));
}
final dc.dynamic $33=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$43, ));
final dc.dynamic $37=(lcoc_core.list.$_invoke$1($33, ));
final dc.dynamic arg$29=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "or", )), ));
final dc.dynamic o6974$33=(lcoc_core.concat.$_invoke$4((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-call-with-immediate-value", )), )), (lcoc_core.list.$_invoke$1(subscribable$1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "sub__9459__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "update__9458__auto__", )), )), ));
late final dc.dynamic $if_$44;
if((o6974$33 is lcoc_core.ISeqable$iface)){
$if_$44=((o6974$33 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$44=((lcoc_core.ISeqable.extensions(o6974$33, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$33, ));
}
final dc.dynamic $35=(lcoc_core.list.$_invoke$1($if_$44, ));
final dc.dynamic o6974$34=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "update__9458__auto__", )), )), (lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "default", 3376916406, ).$_invoke$1(opts$2, )), )), ));
late final dc.dynamic $if_$45;
if((o6974$34 is lcoc_core.ISeqable$iface)){
$if_$45=((o6974$34 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$45=((lcoc_core.ISeqable.extensions(o6974$34, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$34, ));
}
final dc.dynamic $34=(lcoc_core.list.$_invoke$1($if_$45, ));
final dc.dynamic o6974$35=(lcoc_core.concat.$_invoke$3(arg$29, $35, $34, ));
late final dc.dynamic $if_$46;
if((o6974$35 is lcoc_core.ISeqable$iface)){
$if_$46=((o6974$35 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$46=((lcoc_core.ISeqable.extensions(o6974$35, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$35, ));
}
final dc.dynamic $36=(lcoc_core.list.$_invoke$1($if_$46, ));
final dc.dynamic o6974$36=(lcoc_core.concat.$_invoke$4(arg$30, $37, $36, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "sub__9459__auto__", )), )), ));
late final dc.dynamic subscribe_call$1;
if((o6974$36 is lcoc_core.ISeqable$iface)){
subscribe_call$1=((o6974$36 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
subscribe_call$1=((lcoc_core.ISeqable.extensions(o6974$36, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$36, ));
}
final dc.dynamic arg$82=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "reify", )), ));
final dc.dynamic arg$81=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "extends", 2423719685, ), ));
final dc.dynamic o6974$37=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "StatefulWidget", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), )), (lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), )), ));
late final dc.dynamic $if_$47;
if((o6974$37 is lcoc_core.ISeqable$iface)){
$if_$47=((o6974$37 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$47=((lcoc_core.ISeqable.extensions(o6974$37, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$37, ));
}
final dc.dynamic $114=(lcoc_core.list.$_invoke$1($if_$47, ));
final dc.dynamic arg$80=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "no-meta", 2746638389, ), ));
final dc.dynamic arg$79=(lcoc_core.list.$_invoke$1(true, ));
final dc.dynamic arg$78=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "name-hint", 2341976313, ), ));
final dc.dynamic arg$77=(lcoc_core.list.$_invoke$1("watch", ));
final dc.dynamic arg$31=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "createState", )), ));
final dc.dynamic o6974$38=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9460__auto__", )), )), ));
late final dc.dynamic $if_$48;
if((o6974$38 is lcoc_core.ISeqable$iface)){
$if_$48=((o6974$38 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$48=((lcoc_core.ISeqable.extensions(o6974$38, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$38, ));
}
final dc.dynamic $38=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$48, ));
final dc.dynamic $40=(lcoc_core.list.$_invoke$1($38, ));
final dc.dynamic o6974$39=(lcoc_core.concat.$_invoke$5((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "WatchState", )), )), (lcoc_core.list.$_invoke$1(null, )), (lcoc_core.list.$_invoke$1(null, )), (lcoc_core.list.$_invoke$1(null, )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$49;
if((o6974$39 is lcoc_core.ISeqable$iface)){
$if_$49=((o6974$39 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$49=((lcoc_core.ISeqable.extensions(o6974$39, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$39, ));
}
final dc.dynamic $39=(lcoc_core.list.$_invoke$1($if_$49, ));
final dc.dynamic o6974$40=(lcoc_core.concat.$_invoke$3(arg$31, $40, $39, ));
late final dc.dynamic $if_$50;
if((o6974$40 is lcoc_core.ISeqable$iface)){
$if_$50=((o6974$40 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$50=((lcoc_core.ISeqable.extensions(o6974$40, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$40, ));
}
final dc.dynamic $113=(lcoc_core.list.$_invoke$1($if_$50, ));
final dc.dynamic arg$76=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "StateLifecycle", )), ));
final dc.dynamic arg$37=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-init-state", )), ));
final dc.dynamic o6974$41=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9460__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9461__auto__", )), )), ));
late final dc.dynamic $if_$51;
if((o6974$41 is lcoc_core.ISeqable$iface)){
$if_$51=((o6974$41 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$51=((lcoc_core.ISeqable.extensions(o6974$41, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$41, ));
}
final dc.dynamic $41=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$51, ));
final dc.dynamic $52=(lcoc_core.list.$_invoke$1($41, ));
final dc.dynamic arg$36=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$33=(lcoc_core.list.$_invoke$1(state$1, ));
final dc.dynamic arg$32=(lcoc_core.symbol.$_invoke$2(null, "state__9461__auto__", ));
final dc.dynamic o6974$42=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "WatchState", )), )), ));
late final dc.dynamic $if_$52;
if((o6974$42 is lcoc_core.ISeqable$iface)){
$if_$52=((o6974$42 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$52=((lcoc_core.ISeqable.extensions(o6974$42, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$42, ));
}
final dc.dynamic $42=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$52, ));
final dc.dynamic $43=lcoc_core.with_meta(arg$32, $42, );
final dc.dynamic $44=(lcoc_core.list.$_invoke$1($43, ));
final dc.dynamic o6974$43=(lcoc_core.concat.$_invoke$4(arg$33, $44, (lcoc_core.list.$_invoke$1(subscribable$1, )), (lcoc_core.list.$_invoke$1(expr$2, )), ));
late final dc.dynamic $if_$53;
if((o6974$43 is lcoc_core.ISeqable$iface)){
$if_$53=((o6974$43 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$53=((lcoc_core.ISeqable.extensions(o6974$43, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$43, ));
}
final dc.dynamic $45=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$53, ));
final dc.dynamic $50=(lcoc_core.list.$_invoke$1($45, ));
final dc.dynamic arg$35=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$34=(lcoc_core.list.$_invoke$1(state$1, ));
final dc.dynamic o6974$44=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k!", )), )), (lcoc_core.list.$_invoke$1(refresh_on$2, )), ));
late final dc.dynamic $if_$54;
if((o6974$44 is lcoc_core.ISeqable$iface)){
$if_$54=((o6974$44 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$54=((lcoc_core.ISeqable.extensions(o6974$44, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$44, ));
}
final dc.dynamic $48=(lcoc_core.list.$_invoke$1($if_$54, ));
final dc.dynamic o6974$45=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscribable!", )), )), (lcoc_core.list.$_invoke$1(subscribable$1, )), ));
late final dc.dynamic $if_$55;
if((o6974$45 is lcoc_core.ISeqable$iface)){
$if_$55=((o6974$45 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$55=((lcoc_core.ISeqable.extensions(o6974$45, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$45, ));
}
final dc.dynamic $47=(lcoc_core.list.$_invoke$1($if_$55, ));
final dc.dynamic o6974$46=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscription!", )), )), (lcoc_core.list.$_invoke$1(subscribe_call$1, )), ));
late final dc.dynamic $if_$56;
if((o6974$46 is lcoc_core.ISeqable$iface)){
$if_$56=((o6974$46 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$56=((lcoc_core.ISeqable.extensions(o6974$46, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$46, ));
}
final dc.dynamic $46=(lcoc_core.list.$_invoke$1($if_$56, ));
final dc.dynamic o6974$47=(lcoc_core.concat.$_invoke$5(arg$35, arg$34, $48, $47, $46, ));
late final dc.dynamic $if_$57;
if((o6974$47 is lcoc_core.ISeqable$iface)){
$if_$57=((o6974$47 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$57=((lcoc_core.ISeqable.extensions(o6974$47, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$47, ));
}
final dc.dynamic $49=(lcoc_core.list.$_invoke$1($if_$57, ));
final dc.dynamic o6974$48=(lcoc_core.concat.$_invoke$3(arg$36, $50, $49, ));
late final dc.dynamic $if_$58;
if((o6974$48 is lcoc_core.ISeqable$iface)){
$if_$58=((o6974$48 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$58=((lcoc_core.ISeqable.extensions(o6974$48, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$48, ));
}
final dc.dynamic $51=(lcoc_core.list.$_invoke$1($if_$58, ));
final dc.dynamic o6974$49=(lcoc_core.concat.$_invoke$3(arg$37, $52, $51, ));
late final dc.dynamic $if_$59;
if((o6974$49 is lcoc_core.ISeqable$iface)){
$if_$59=((o6974$49 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$59=((lcoc_core.ISeqable.extensions(o6974$49, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$49, ));
}
final dc.dynamic $112=(lcoc_core.list.$_invoke$1($if_$59, ));
final dc.dynamic arg$53=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-dispose-state", )), ));
final dc.dynamic o6974$50=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9460__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9461__auto__", )), )), ));
late final dc.dynamic $if_$60;
if((o6974$50 is lcoc_core.ISeqable$iface)){
$if_$60=((o6974$50 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$60=((lcoc_core.ISeqable.extensions(o6974$50, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$50, ));
}
final dc.dynamic $53=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$60, ));
final dc.dynamic $73=(lcoc_core.list.$_invoke$1($53, ));
final dc.dynamic arg$52=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$39=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9461__auto__", )), ));
final dc.dynamic arg$38=(lcoc_core.symbol.$_invoke$2(null, "state__9461__auto__", ));
final dc.dynamic o6974$51=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "WatchState", )), )), ));
late final dc.dynamic $if_$61;
if((o6974$51 is lcoc_core.ISeqable$iface)){
$if_$61=((o6974$51 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$61=((lcoc_core.ISeqable.extensions(o6974$51, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$51, ));
}
final dc.dynamic $54=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$61, ));
final dc.dynamic $55=lcoc_core.with_meta(arg$38, $54, );
final dc.dynamic $56=(lcoc_core.list.$_invoke$1($55, ));
final dc.dynamic o6974$52=(lcoc_core.concat.$_invoke$2(arg$39, $56, ));
late final dc.dynamic $if_$62;
if((o6974$52 is lcoc_core.ISeqable$iface)){
$if_$62=((o6974$52 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$62=((lcoc_core.ISeqable.extensions(o6974$52, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$52, ));
}
final dc.dynamic $57=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$62, ));
final dc.dynamic $71=(lcoc_core.list.$_invoke$1($57, ));
final dc.dynamic arg$51=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$50=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9461__auto__", )), ));
final dc.dynamic o6974$53=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k!", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$63;
if((o6974$53 is lcoc_core.ISeqable$iface)){
$if_$63=((o6974$53 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$63=((lcoc_core.ISeqable.extensions(o6974$53, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$53, ));
}
final dc.dynamic $69=(lcoc_core.list.$_invoke$1($if_$63, ));
late final dc.dynamic $if_$66;
if(((false != dispose_value$2) && (null != dispose_value$2))){
final dc.dynamic arg$43=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic arg$42=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-latest", )), ));
final dc.dynamic arg$41=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "as->", )), ));
final dc.dynamic arg$40=(lcoc_core.list.$_invoke$1(binding_for_value_disposal$1, ));
final dc.dynamic o6974$54=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "some->", )), )), (lcoc_core.list.$_invoke$1(vsym$1, )), (lcoc_core.list.$_invoke$1(dispose_value$2, )), ));
late final dc.dynamic $if_$64;
if((o6974$54 is lcoc_core.ISeqable$iface)){
$if_$64=((o6974$54 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$64=((lcoc_core.ISeqable.extensions(o6974$54, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$54, ));
}
final dc.dynamic $58=(lcoc_core.list.$_invoke$1($if_$64, ));
final dc.dynamic o6974$55=(lcoc_core.concat.$_invoke$3(arg$41, arg$40, $58, ));
late final dc.dynamic $if_$65;
if((o6974$55 is lcoc_core.ISeqable$iface)){
$if_$65=((o6974$55 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$65=((lcoc_core.ISeqable.extensions(o6974$55, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$55, ));
}
final dc.dynamic $59=(lcoc_core.list.$_invoke$1($if_$65, ));
final dc.dynamic o6974$56=(lcoc_core.concat.$_invoke$3(arg$43, arg$42, $59, ));
if((o6974$56 is lcoc_core.ISeqable$iface)){
$if_$66=((o6974$56 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$66=((lcoc_core.ISeqable.extensions(o6974$56, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$56, ));
}
}else{
$if_$66=(lcoc_core.symbol.$_invoke$2("cljd.core", "->", ));
}
final dc.dynamic $68=(lcoc_core.list.$_invoke$1($if_$66, ));
final dc.dynamic o6974$57=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-latest!", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$67;
if((o6974$57 is lcoc_core.ISeqable$iface)){
$if_$67=((o6974$57 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$67=((lcoc_core.ISeqable.extensions(o6974$57, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$57, ));
}
final dc.dynamic $67=(lcoc_core.list.$_invoke$1($if_$67, ));
final dc.dynamic arg$49=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic arg$48=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscribable", )), ));
final dc.dynamic arg$47=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$44=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-unsubscribe", )), ));
final dc.dynamic o6974$58=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscription", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9461__auto__", )), )), ));
late final dc.dynamic $if_$68;
if((o6974$58 is lcoc_core.ISeqable$iface)){
$if_$68=((o6974$58 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$68=((lcoc_core.ISeqable.extensions(o6974$58, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$58, ));
}
final dc.dynamic $60=(lcoc_core.list.$_invoke$1($if_$68, ));
final dc.dynamic o6974$59=(lcoc_core.concat.$_invoke$2(arg$44, $60, ));
late final dc.dynamic $if_$69;
if((o6974$59 is lcoc_core.ISeqable$iface)){
$if_$69=((o6974$59 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$69=((lcoc_core.ISeqable.extensions(o6974$59, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$59, ));
}
final dc.dynamic $62=(lcoc_core.list.$_invoke$1($if_$69, ));
late final lcoc_core.PersistentVector? $if_$72;
if(((false != dispose$2) && (null != dispose$2))){
final lcoc_core.VectorNode arg$46=lcoc_core.$_EMPTY_VECTOR.root;
final dc.dynamic arg$45=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic o6974$60=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart", "type-like", )), )), (lcoc_core.list.$_invoke$1(expr$2, )), ));
late final dc.dynamic $if_$70;
if((o6974$60 is lcoc_core.ISeqable$iface)){
$if_$70=((o6974$60 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$70=((lcoc_core.ISeqable.extensions(o6974$60, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$60, ));
}
final dc.dynamic $61=(lcoc_core.list.$_invoke$1($if_$70, ));
final dc.dynamic o6974$61=(lcoc_core.concat.$_invoke$3(arg$45, $61, (lcoc_core.list.$_invoke$1(dispose$2, )), ));
late final dc.dynamic $if_$71;
if((o6974$61 is lcoc_core.ISeqable$iface)){
$if_$71=((o6974$61 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$71=((lcoc_core.ISeqable.extensions(o6974$61, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$61, ));
}
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(1, $if_$71, ));
$if_$72=lcoc_core.PersistentVector(null, 1, 5, arg$46, fl$6, -1, );
}else{
$if_$72=null;
}
final dc.dynamic o6974$62=(lcoc_core.concat.$_invoke$3(arg$47, $62, $if_$72, ));
late final dc.dynamic $if_$73;
if((o6974$62 is lcoc_core.ISeqable$iface)){
$if_$73=((o6974$62 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$73=((lcoc_core.ISeqable.extensions(o6974$62, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$62, ));
}
final dc.dynamic $63=(lcoc_core.list.$_invoke$1($if_$73, ));
final dc.dynamic o6974$63=(lcoc_core.concat.$_invoke$3(arg$49, arg$48, $63, ));
late final dc.dynamic $if_$74;
if((o6974$63 is lcoc_core.ISeqable$iface)){
$if_$74=((o6974$63 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$74=((lcoc_core.ISeqable.extensions(o6974$63, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$63, ));
}
final dc.dynamic $66=(lcoc_core.list.$_invoke$1($if_$74, ));
final dc.dynamic o6974$64=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscribable!", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$75;
if((o6974$64 is lcoc_core.ISeqable$iface)){
$if_$75=((o6974$64 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$75=((lcoc_core.ISeqable.extensions(o6974$64, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$64, ));
}
final dc.dynamic $65=(lcoc_core.list.$_invoke$1($if_$75, ));
final dc.dynamic o6974$65=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscription!", )), )), (lcoc_core.list.$_invoke$1(null, )), ));
late final dc.dynamic $if_$76;
if((o6974$65 is lcoc_core.ISeqable$iface)){
$if_$76=((o6974$65 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$76=((lcoc_core.ISeqable.extensions(o6974$65, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$65, ));
}
final dc.dynamic $64=(lcoc_core.list.$_invoke$1($if_$76, ));
final dc.dynamic o6974$66=(lcoc_core.concat.$_invoke$8(arg$51, arg$50, $69, $68, $67, $66, $65, $64, ));
late final dc.dynamic $if_$77;
if((o6974$66 is lcoc_core.ISeqable$iface)){
$if_$77=((o6974$66 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$77=((lcoc_core.ISeqable.extensions(o6974$66, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$66, ));
}
final dc.dynamic $70=(lcoc_core.list.$_invoke$1($if_$77, ));
final dc.dynamic o6974$67=(lcoc_core.concat.$_invoke$3(arg$52, $71, $70, ));
late final dc.dynamic $if_$78;
if((o6974$67 is lcoc_core.ISeqable$iface)){
$if_$78=((o6974$67 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$78=((lcoc_core.ISeqable.extensions(o6974$67, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$67, ));
}
final dc.dynamic $72=(lcoc_core.list.$_invoke$1($if_$78, ));
final dc.dynamic o6974$68=(lcoc_core.concat.$_invoke$3(arg$53, $73, $72, ));
late final dc.dynamic $if_$79;
if((o6974$68 is lcoc_core.ISeqable$iface)){
$if_$79=((o6974$68 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$79=((lcoc_core.ISeqable.extensions(o6974$68, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$68, ));
}
final dc.dynamic $111=(lcoc_core.list.$_invoke$1($if_$79, ));
final dc.dynamic arg$61=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-build", )), ));
final dc.dynamic o6974$69=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9460__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9461__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "ctx__9462__auto__", )), )), ));
late final dc.dynamic $if_$80;
if((o6974$69 is lcoc_core.ISeqable$iface)){
$if_$80=((o6974$69 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$80=((lcoc_core.ISeqable.extensions(o6974$69, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$69, ));
}
final dc.dynamic $74=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$80, ));
final dc.dynamic $85=(lcoc_core.list.$_invoke$1($74, ));
final dc.dynamic arg$60=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$59=(lcoc_core.list.$_invoke$1(state$1, ));
final dc.dynamic arg$54=(lcoc_core.symbol.$_invoke$2(null, "state__9461__auto__", ));
final dc.dynamic o6974$70=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "WatchState", )), )), ));
late final dc.dynamic $if_$81;
if((o6974$70 is lcoc_core.ISeqable$iface)){
$if_$81=((o6974$70 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$81=((lcoc_core.ISeqable.extensions(o6974$70, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$70, ));
}
final dc.dynamic $75=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$81, ));
final dc.dynamic $76=lcoc_core.with_meta(arg$54, $75, );
final dc.dynamic $80=(lcoc_core.list.$_invoke$1($76, ));
final dc.dynamic test$3=lcoc_core.next(bound_locals$2, );
late final dc.bool $if_$82;
if(((false != test$3) && (null != test$3))){
$if_$82=false;
}else{
$if_$82=true;
}
late final dc.dynamic $if_$83;
if($if_$82){
$if_$83=lcoc_core.first(bound_locals$2, );
}else{
$if_$83=bound_locals$2;
}
final dc.dynamic $79=(lcoc_core.list.$_invoke$1($if_$83, ));
final dc.dynamic o6974$71=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-latest", )), )), (lcoc_core.list.$_invoke$1(state$1, )), ));
late final dc.dynamic $if_$84;
if((o6974$71 is lcoc_core.ISeqable$iface)){
$if_$84=((o6974$71 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$84=((lcoc_core.ISeqable.extensions(o6974$71, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$71, ));
}
final dc.dynamic $78=(lcoc_core.list.$_invoke$1($if_$84, ));
final dc.dynamic arg$58=(lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, ));
final dc.dynamic arg$57=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "ctx__9462__auto__", )), ));
late final lcoc_core.PersistentVector? $if_$87;
if(((false != subscribable_binding$1) && (null != subscribable_binding$1))){
final lcoc_core.VectorNode arg$56=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$7=(dc.List<dc.dynamic>.filled(2, subscribable_binding$1, ));
final dc.dynamic arg$55=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart", "type-like", )), ));
final dc.dynamic o6974$72=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscribable", )), )), (lcoc_core.list.$_invoke$1(state$1, )), ));
late final dc.dynamic $if_$85;
if((o6974$72 is lcoc_core.ISeqable$iface)){
$if_$85=((o6974$72 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$85=((lcoc_core.ISeqable.extensions(o6974$72, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$72, ));
}
final dc.dynamic $77=(lcoc_core.list.$_invoke$1($if_$85, ));
final dc.dynamic o6974$73=(lcoc_core.concat.$_invoke$3(arg$55, $77, (lcoc_core.list.$_invoke$1(expr$2, )), ));
late final dc.dynamic $if_$86;
if((o6974$73 is lcoc_core.ISeqable$iface)){
$if_$86=((o6974$73 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$86=((lcoc_core.ISeqable.extensions(o6974$73, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$73, ));
}
(fl$7[1]=$if_$86);
$if_$87=lcoc_core.PersistentVector(null, 2, 5, arg$56, fl$7, -1, );
}else{
$if_$87=null;
}
final dc.dynamic o6974$74=(lcoc_core.concat.$_invoke$7(arg$59, $80, $79, $78, arg$58, arg$57, $if_$87, ));
late final dc.dynamic $if_$88;
if((o6974$74 is lcoc_core.ISeqable$iface)){
$if_$88=((o6974$74 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$88=((lcoc_core.ISeqable.extensions(o6974$74, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$74, ));
}
final dc.dynamic $81=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$88, ));
final dc.dynamic $83=(lcoc_core.list.$_invoke$1($81, ));
final dc.dynamic o6974$75=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.assoc.$_invoke$5(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), true, )), )), forms$1, ));
late final dc.dynamic $if_$89;
if((o6974$75 is lcoc_core.ISeqable$iface)){
$if_$89=((o6974$75 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$89=((lcoc_core.ISeqable.extensions(o6974$75, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$75, ));
}
final dc.dynamic $82=(lcoc_core.list.$_invoke$1($if_$89, ));
final dc.dynamic o6974$76=(lcoc_core.concat.$_invoke$3(arg$60, $83, $82, ));
late final dc.dynamic $if_$90;
if((o6974$76 is lcoc_core.ISeqable$iface)){
$if_$90=((o6974$76 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$90=((lcoc_core.ISeqable.extensions(o6974$76, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$76, ));
}
final dc.dynamic $84=(lcoc_core.list.$_invoke$1($if_$90, ));
final dc.dynamic o6974$77=(lcoc_core.concat.$_invoke$3(arg$61, $85, $84, ));
late final dc.dynamic $if_$91;
if((o6974$77 is lcoc_core.ISeqable$iface)){
$if_$91=((o6974$77 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$91=((lcoc_core.ISeqable.extensions(o6974$77, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$77, ));
}
final dc.dynamic $110=(lcoc_core.list.$_invoke$1($if_$91, ));
final dc.dynamic arg$75=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "-update-state", )), ));
final dc.dynamic o6974$78=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9460__auto__", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "state__9461__auto__", )), )), ));
late final dc.dynamic $if_$92;
if((o6974$78 is lcoc_core.ISeqable$iface)){
$if_$92=((o6974$78 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$92=((lcoc_core.ISeqable.extensions(o6974$78, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$78, ));
}
final dc.dynamic $86=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$92, ));
final dc.dynamic $108=(lcoc_core.list.$_invoke$1($86, ));
final dc.dynamic arg$74=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$63=(lcoc_core.list.$_invoke$1(state$1, ));
final dc.dynamic arg$62=(lcoc_core.symbol.$_invoke$2(null, "state__9461__auto__", ));
final dc.dynamic o6974$79=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "WatchState", )), )), ));
late final dc.dynamic $if_$93;
if((o6974$79 is lcoc_core.ISeqable$iface)){
$if_$93=((o6974$79 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$93=((lcoc_core.ISeqable.extensions(o6974$79, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$79, ));
}
final dc.dynamic $87=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$93, ));
final dc.dynamic $88=lcoc_core.with_meta(arg$62, $87, );
final dc.dynamic $89=(lcoc_core.list.$_invoke$1($88, ));
final dc.dynamic o6974$80=(lcoc_core.concat.$_invoke$4(arg$63, $89, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "k__9463__auto__", )), )), (lcoc_core.list.$_invoke$1(refresh_on$2, )), ));
late final dc.dynamic $if_$94;
if((o6974$80 is lcoc_core.ISeqable$iface)){
$if_$94=((o6974$80 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$94=((lcoc_core.ISeqable.extensions(o6974$80, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$80, ));
}
final dc.dynamic $90=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$94, ));
final dc.dynamic $106=(lcoc_core.list.$_invoke$1($90, ));
final dc.dynamic arg$73=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "when-not", )), ));
final dc.dynamic arg$65=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "=", )), ));
final dc.dynamic arg$64=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "k__9463__auto__", )), ));
final dc.dynamic o6974$81=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k", )), )), (lcoc_core.list.$_invoke$1(state$1, )), ));
late final dc.dynamic $if_$95;
if((o6974$81 is lcoc_core.ISeqable$iface)){
$if_$95=((o6974$81 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$95=((lcoc_core.ISeqable.extensions(o6974$81, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$81, ));
}
final dc.dynamic $91=(lcoc_core.list.$_invoke$1($if_$95, ));
final dc.dynamic o6974$82=(lcoc_core.concat.$_invoke$3(arg$65, arg$64, $91, ));
late final dc.dynamic $if_$96;
if((o6974$82 is lcoc_core.ISeqable$iface)){
$if_$96=((o6974$82 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$96=((lcoc_core.ISeqable.extensions(o6974$82, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$82, ));
}
final dc.dynamic $104=(lcoc_core.list.$_invoke$1($if_$96, ));
final dc.dynamic arg$69=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic o6974$83=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscribable", )), )), (lcoc_core.list.$_invoke$1(state$1, )), ));
late final dc.dynamic $if_$97;
if((o6974$83 is lcoc_core.ISeqable$iface)){
$if_$97=((o6974$83 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$97=((lcoc_core.ISeqable.extensions(o6974$83, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$83, ));
}
final dc.dynamic $95=(lcoc_core.list.$_invoke$1($if_$97, ));
final dc.dynamic arg$66=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-unsubscribe", )), ));
final dc.dynamic o6974$84=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscription", )), )), (lcoc_core.list.$_invoke$1(state$1, )), ));
late final dc.dynamic $if_$98;
if((o6974$84 is lcoc_core.ISeqable$iface)){
$if_$98=((o6974$84 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$98=((lcoc_core.ISeqable.extensions(o6974$84, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$84, ));
}
final dc.dynamic $92=(lcoc_core.list.$_invoke$1($if_$98, ));
final dc.dynamic o6974$85=(lcoc_core.concat.$_invoke$2(arg$66, $92, ));
late final dc.dynamic $if_$99;
if((o6974$85 is lcoc_core.ISeqable$iface)){
$if_$99=((o6974$85 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$99=((lcoc_core.ISeqable.extensions(o6974$85, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$85, ));
}
final dc.dynamic $94=(lcoc_core.list.$_invoke$1($if_$99, ));
late final lcoc_core.PersistentVector? $if_$102;
if(((false != dispose$2) && (null != dispose$2))){
final lcoc_core.VectorNode arg$68=lcoc_core.$_EMPTY_VECTOR.root;
final dc.dynamic arg$67=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic o6974$86=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart", "type-like", )), )), (lcoc_core.list.$_invoke$1(expr$2, )), ));
late final dc.dynamic $if_$100;
if((o6974$86 is lcoc_core.ISeqable$iface)){
$if_$100=((o6974$86 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$100=((lcoc_core.ISeqable.extensions(o6974$86, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$86, ));
}
final dc.dynamic $93=(lcoc_core.list.$_invoke$1($if_$100, ));
final dc.dynamic o6974$87=(lcoc_core.concat.$_invoke$3(arg$67, $93, (lcoc_core.list.$_invoke$1(dispose$2, )), ));
late final dc.dynamic $if_$101;
if((o6974$87 is lcoc_core.ISeqable$iface)){
$if_$101=((o6974$87 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$101=((lcoc_core.ISeqable.extensions(o6974$87, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$87, ));
}
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(1, $if_$101, ));
$if_$102=lcoc_core.PersistentVector(null, 1, 5, arg$68, fl$8, -1, );
}else{
$if_$102=null;
}
final dc.dynamic o6974$88=(lcoc_core.concat.$_invoke$4(arg$69, $95, $94, $if_$102, ));
late final dc.dynamic $if_$103;
if((o6974$88 is lcoc_core.ISeqable$iface)){
$if_$103=((o6974$88 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$103=((lcoc_core.ISeqable.extensions(o6974$88, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$88, ));
}
final dc.dynamic $103=(lcoc_core.list.$_invoke$1($if_$103, ));
final dc.dynamic arg$72=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$89=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(subscribable$1, )), (lcoc_core.list.$_invoke$1(expr$2, )), ));
late final dc.dynamic $if_$104;
if((o6974$89 is lcoc_core.ISeqable$iface)){
$if_$104=((o6974$89 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$104=((lcoc_core.ISeqable.extensions(o6974$89, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$89, ));
}
final dc.dynamic $96=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$104, ));
final dc.dynamic $101=(lcoc_core.list.$_invoke$1($96, ));
final dc.dynamic arg$71=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$70=(lcoc_core.list.$_invoke$1(state$1, ));
final dc.dynamic o6974$90=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-k!", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "k__9463__auto__", )), )), ));
late final dc.dynamic $if_$105;
if((o6974$90 is lcoc_core.ISeqable$iface)){
$if_$105=((o6974$90 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$105=((lcoc_core.ISeqable.extensions(o6974$90, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$90, ));
}
final dc.dynamic $99=(lcoc_core.list.$_invoke$1($if_$105, ));
final dc.dynamic o6974$91=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscribable!", )), )), (lcoc_core.list.$_invoke$1(subscribable$1, )), ));
late final dc.dynamic $if_$106;
if((o6974$91 is lcoc_core.ISeqable$iface)){
$if_$106=((o6974$91 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$106=((lcoc_core.ISeqable.extensions(o6974$91, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$91, ));
}
final dc.dynamic $98=(lcoc_core.list.$_invoke$1($if_$106, ));
final dc.dynamic o6974$92=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".-subscription!", )), )), (lcoc_core.list.$_invoke$1(subscribe_call$1, )), ));
late final dc.dynamic $if_$107;
if((o6974$92 is lcoc_core.ISeqable$iface)){
$if_$107=((o6974$92 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$107=((lcoc_core.ISeqable.extensions(o6974$92, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$92, ));
}
final dc.dynamic $97=(lcoc_core.list.$_invoke$1($if_$107, ));
final dc.dynamic o6974$93=(lcoc_core.concat.$_invoke$5(arg$71, arg$70, $99, $98, $97, ));
late final dc.dynamic $if_$108;
if((o6974$93 is lcoc_core.ISeqable$iface)){
$if_$108=((o6974$93 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$108=((lcoc_core.ISeqable.extensions(o6974$93, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$93, ));
}
final dc.dynamic $100=(lcoc_core.list.$_invoke$1($if_$108, ));
final dc.dynamic o6974$94=(lcoc_core.concat.$_invoke$3(arg$72, $101, $100, ));
late final dc.dynamic $if_$109;
if((o6974$94 is lcoc_core.ISeqable$iface)){
$if_$109=((o6974$94 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$109=((lcoc_core.ISeqable.extensions(o6974$94, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$94, ));
}
final dc.dynamic $102=(lcoc_core.list.$_invoke$1($if_$109, ));
final dc.dynamic o6974$95=(lcoc_core.concat.$_invoke$4(arg$73, $104, $103, $102, ));
late final dc.dynamic $if_$110;
if((o6974$95 is lcoc_core.ISeqable$iface)){
$if_$110=((o6974$95 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$110=((lcoc_core.ISeqable.extensions(o6974$95, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$95, ));
}
final dc.dynamic $105=(lcoc_core.list.$_invoke$1($if_$110, ));
final dc.dynamic o6974$96=(lcoc_core.concat.$_invoke$3(arg$74, $106, $105, ));
late final dc.dynamic $if_$111;
if((o6974$96 is lcoc_core.ISeqable$iface)){
$if_$111=((o6974$96 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$111=((lcoc_core.ISeqable.extensions(o6974$96, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$96, ));
}
final dc.dynamic $107=(lcoc_core.list.$_invoke$1($if_$111, ));
final dc.dynamic o6974$97=(lcoc_core.concat.$_invoke$3(arg$75, $108, $107, ));
late final dc.dynamic $if_$112;
if((o6974$97 is lcoc_core.ISeqable$iface)){
$if_$112=((o6974$97 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$112=((lcoc_core.ISeqable.extensions(o6974$97, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$97, ));
}
final dc.dynamic $109=(lcoc_core.list.$_invoke$1($if_$112, ));
final dc.dynamic o6974$98=(lcoc_core.concat.$_invoke_more$10(arg$82, arg$81, $114, arg$80, arg$79, arg$78, arg$77, $113, arg$76, [$112, $111, $110, $109, ], ));
if((o6974$98 is lcoc_core.ISeqable$iface)){
return ((o6974$98 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$98, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$98, ));
}

// END expand-watch

// BEGIN get-of
lcoc_core.IFn$iface get_of=lcoc_flutter.ifn_get_of_M__18695hm$1(null, );

// END get-of

// BEGIN global-key
dc.dynamic global_key(dc.dynamic v$1, ){
return lcoc_flutter.GlobalValueKey(v$1, );
}

// END global-key

// BEGIN ifn_$LT_$BANG__M__18695hm$1
class ifn_$LT_$BANG__M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uY implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_$LT_$BANG__M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_$LT_$BANG__M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic s$1, dc.dynamic p$9632_$1, ){
late final dc.dynamic map$9634_$2;
if(((lcoc_core.ISeq.satisfies(p$9632_$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(p$9632_$1, );
if(((false != test$1) && (null != test$1))){
map$9634_$2=lcoc_core.seq_to_map_for_destructuring(p$9632_$1, );
}else{
late final dc.dynamic $if_$1;
if((p$9632_$1 is lcoc_core.ISeqable$iface)){
$if_$1=((p$9632_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(p$9632_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(p$9632_$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
map$9634_$2=lcoc_core.first(p$9632_$1, );
}else{
map$9634_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9634_$2=p$9632_$1;
}
late final dc.dynamic $default_$1;
if((map$9634_$2 is lcoc_core.ILookup$iface)){
$default_$1=((map$9634_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "default", 3376916406, ), ));
}else{
$default_$1=((lcoc_core.ILookup.extensions(map$9634_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9634_$2, const lcoc_core.Keyword(null, "default", 3376916406, ), ));
}
final dc.dynamic? some$6849_$AUTO_$1=(lcoc_flutter.$STAR_new_deps$STAR_[s$1]);
if((null == some$6849_$AUTO_$1)){
if((lcoc_flutter.$STAR_new_deps$STAR_.containsKey(s$1, ))){
return null;
}
final dc.dynamic? some$6849_$AUTO_$2=(lcoc_flutter.$STAR_old_deps$STAR_[s$1]);
if((null == some$6849_$AUTO_$2)){
if((lcoc_flutter.$STAR_old_deps$STAR_.containsKey(s$1, ))){
(lcoc_flutter.$STAR_old_deps$STAR_.remove(s$1, ));
(lcoc_flutter.$STAR_new_deps$STAR_[s$1]=null);
return null;
}
return ((lcoc_flutter.$STAR_cell$STAR_ as lcoc_flutter.Cell).subs.containsKey(s$1, ));
}
(lcoc_flutter.$STAR_old_deps$STAR_.remove(s$1, ));
(lcoc_flutter.$STAR_new_deps$STAR_[s$1]=some$6849_$AUTO_$2);
return some$6849_$AUTO_$2;
}
return some$6849_$AUTO_$1;
}

dc.dynamic $_invoke$1(dc.dynamic s$2, ){
final dc.dynamic? some$6849_$AUTO_$3=(lcoc_flutter.$STAR_new_deps$STAR_[s$2]);
if((null == some$6849_$AUTO_$3)){
if((lcoc_flutter.$STAR_new_deps$STAR_.containsKey(s$2, ))){
return null;
}
final dc.dynamic? some$6849_$AUTO_$4=(lcoc_flutter.$STAR_old_deps$STAR_[s$2]);
if((null == some$6849_$AUTO_$4)){
if((lcoc_flutter.$STAR_old_deps$STAR_.containsKey(s$2, ))){
(lcoc_flutter.$STAR_old_deps$STAR_.remove(s$2, ));
(lcoc_flutter.$STAR_new_deps$STAR_[s$2]=null);
return null;
}
if(((lcoc_flutter.$STAR_cell$STAR_ as lcoc_flutter.Cell).subs.containsKey(s$2, ))){
throw "no value yet!";
}
dc.dynamic update$BANG_$1(dc.dynamic x$1, ){
return ((lcoc_flutter.$STAR_cell$STAR_ as lcoc_flutter.Cell).update(s$2, x$1, ));
}
final dc.dynamic sub$1=((lcoc_flutter.$STAR_cell$STAR_ as lcoc_flutter.Cell).subto(s$2, ));
late final dc.dynamic $if_$2;
if((s$2 is lcoc_flutter.Subscribable$iface)){
$if_$2=((s$2 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$1, update$BANG_$1, ));
}else{
$if_$2=((lcoc_flutter.Subscribable.extensions(s$2, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(s$2, sub$1, update$BANG_$1, ));
}
if(((false != $if_$2) && (null != $if_$2))){
return (lcoc_flutter.$STAR_new_deps$STAR_[s$2]);
}
throw "no value yet!";
}
(lcoc_flutter.$STAR_old_deps$STAR_.remove(s$2, ));
(lcoc_flutter.$STAR_new_deps$STAR_[s$2]=some$6849_$AUTO_$4);
return some$6849_$AUTO_$4;
}
return some$6849_$AUTO_$3;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_$LT_$BANG__M__18695hm$1

// BEGIN ifn_$_widget_cont$PLUS_ctx_M__18695hm$1
class ifn_$_widget_cont$PLUS_ctx_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_$_widget_cont$PLUS_ctx_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_$_widget_cont$PLUS_ctx_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic env$1, dc.dynamic forms$1, ){
final dc.dynamic test$1=(const lcoc_core.Keyword(null, "closest-ctx", 201898431, ).$_invoke$1(env$1, ));
if(((false != test$1) && (null != test$1))){
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1(env$1, )), forms$1, ));
if((o6974$1 is lcoc_core.ISeqable$iface)){
return ((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
return lcoc_flutter.stateless_flush(env$1, forms$1, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_$_widget_cont$PLUS_ctx_M__18695hm$1

// BEGIN ifn_$_widget_cont_M__18695hm$1
class ifn_$_widget_cont_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_$_widget_cont_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_$_widget_cont_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic env$1, dc.dynamic form$1, dc.dynamic more_forms$1, ){
final dc.dynamic vec$9594_$1=lcoc_core.take_last(2, more_forms$1, );
final dc.dynamic last_maybe_prop$1=(lcoc_core.nth.$_invoke$3(vec$9594_$1, 0, null, ));
final dc.dynamic last_expr$1=(lcoc_core.nth.$_invoke$3(vec$9594_$1, 1, null, ));
late final dc.dynamic $if_$1;
if(($AMPERSAND_form$1 is lcoc_core.IMeta$iface)){
$if_$1=(($AMPERSAND_form$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
$if_$1=((lcoc_core.IMeta.extensions($AMPERSAND_form$1, ) as lcoc_core.IMeta$ext).$_meta$0($AMPERSAND_form$1, ));
}
final dc.dynamic and$6836_$AUTO_$1=(const lcoc_core.Keyword("cljd.flutter", "threaded-in", 1478070034, ).$_invoke$1($if_$1, ));
late final dc.dynamic $if_$2;
if(((false != and$6836_$AUTO_$1) && (null != and$6836_$AUTO_$1))){
if(lcoc_core.symbol$QMARK_(last_expr$1, )){
$if_$2=false;
}else{
$if_$2=true;
}
}else{
$if_$2=and$6836_$AUTO_$1;
}
if(((false != $if_$2) && (null != $if_$2))){
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "threaded-in-form__9592__auto__", )), )), (lcoc_core.list.$_invoke$1(last_expr$1, )), ));
late final dc.dynamic $if_$3;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$3, ));
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$6((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1(env$1, )), (lcoc_core.list.$_invoke$1(form$1, )), (lcoc_core.drop_last.$_invoke$2(2, more_forms$1, )), (lcoc_core.list.$_invoke$1(last_maybe_prop$1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "threaded-in-form__9592__auto__", )), )), ));
late final dc.dynamic $if_$4;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$3(arg$1, $3, $2, ));
if((o6974$3 is lcoc_core.ISeqable$iface)){
return ((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
if(lcoc_core.simple_keyword$QMARK_(form$1, )){
late final dc.dynamic seq$9598_$1;
if((more_forms$1 is lcoc_core.ISeqable$iface)){
seq$9598_$1=((more_forms$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9598_$1=((lcoc_core.ISeqable.extensions(more_forms$1, ) as lcoc_core.ISeqable$ext).$_seq$0(more_forms$1, ));
}
final dc.dynamic first$9599_$1=lcoc_core.first(seq$9598_$1, );
final dc.dynamic seq$9598_$2=lcoc_core.next(seq$9598_$1, );
return (lcoc_core.apply.$_invoke$6(lcoc_flutter.expand_directive, $AMPERSAND_env$1, env$1, form$1, first$9599_$1, lcoc_flutter.ensure_repl_point_after_directives(form$1, seq$9598_$2, ), ));
}
final dc.dynamic test$1=(const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, ));
if(((false != test$1) && (null != test$1))){
return lcoc_flutter.stateless_flush(env$1, lcoc_core.cons(form$1, more_forms$1, ), );
}
final dc.dynamic test$2=lcoc_core.qualified_keyword$QMARK_(form$1, );
if(((false != test$2) && (null != test$2))){
late final dc.dynamic seq$9601_$1;
if((more_forms$1 is lcoc_core.ISeqable$iface)){
seq$9601_$1=((more_forms$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9601_$1=((lcoc_core.ISeqable.extensions(more_forms$1, ) as lcoc_core.ISeqable$ext).$_seq$0(more_forms$1, ));
}
final dc.dynamic first$9602_$1=lcoc_core.first(seq$9601_$1, );
final dc.dynamic seq$9601_$2=lcoc_core.next(seq$9601_$1, );
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1(env$1, ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$1(form$1, )), )), (lcoc_core.list.$_invoke$1(first$9602_$1, )), ));
late final dc.dynamic $if_$5;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($if_$5, ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$4(arg$3, arg$2, $4, lcoc_flutter.ensure_repl_point_after_directives(form$1, seq$9601_$2, ), ));
if((o6974$7 is lcoc_core.ISeqable$iface)){
return ((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
if((null == more_forms$1)){
return form$1;
}
if((lcoc_core.$EQ_.$_invoke$2((lcoc_core.symbol.$_invoke$2(null, ".child", )), form$1, ))){
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1(env$1, )), more_forms$1, ));
if((o6974$8 is lcoc_core.ISeqable$iface)){
return ((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
if(lcoc_core.symbol$QMARK_(form$1, )){
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1(env$1, ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1(form$1, ));
late final dc.dynamic $if_$6;
if((form$1 is lcoc_core.IMeta$iface)){
$if_$6=((form$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
$if_$6=((lcoc_core.IMeta.extensions(form$1, ) as lcoc_core.IMeta$ext).$_meta$0(form$1, ));
}
final dc.dynamic $5=lcoc_core.with_meta(arg$4, $if_$6, );
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($5, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$4(arg$6, arg$5, $6, more_forms$1, ));
if((o6974$9 is lcoc_core.ISeqable$iface)){
return ((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
if(((lcoc_core.ISeq.satisfies(form$1, )) as dc.bool)){
final dc.dynamic maybe_prop$1=(lcoc_core.nth.$_invoke$3(more_forms$1, 0, null, ));
late final dc.dynamic $if_$8;
if(((false != more_forms$1) && (null != more_forms$1))){
final dc.bool and$6836_$AUTO_$3=lcoc_core.simple_symbol$QMARK_(maybe_prop$1, );
if(and$6836_$AUTO_$3){
final dc.bool and$6836_$AUTO_$4=(lcoc_core.name(maybe_prop$1, ).startsWith(".", ));
if(and$6836_$AUTO_$4){
late final dc.dynamic $if_$7;
if((maybe_prop$1 is lcoc_core.IMeta$iface)){
$if_$7=((maybe_prop$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
$if_$7=((lcoc_core.IMeta.extensions(maybe_prop$1, ) as lcoc_core.IMeta$ext).$_meta$0(maybe_prop$1, ));
}
final dc.dynamic $7=(const lcoc_core.Keyword(null, "builder", 1952461028, ).$_invoke$1($if_$7, ));
if(((false != $7) && (null != $7))){
$if_$8=false;
}else{
$if_$8=true;
}
}else{
$if_$8=and$6836_$AUTO_$4;
}
}else{
$if_$8=and$6836_$AUTO_$3;
}
}else{
$if_$8=more_forms$1;
}
late final dc.dynamic vec$9606_$1;
if(((false != $if_$8) && (null != $if_$8))){
vec$9606_$1=more_forms$1;
}else{
late final dc.dynamic $if_$10;
if(((false != more_forms$1) && (null != more_forms$1))){
final dc.bool Function(dc.dynamic, ) and$6836_$AUTO_$6=lcoc_core.simple_symbol$QMARK_;
late final dc.dynamic $if_$9;
if((maybe_prop$1 is lcoc_core.IMeta$iface)){
$if_$9=((maybe_prop$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
$if_$9=((lcoc_core.IMeta.extensions(maybe_prop$1, ) as lcoc_core.IMeta$ext).$_meta$0(maybe_prop$1, ));
}
final dc.dynamic or$6718_$AUTO_$1=(const lcoc_core.Keyword(null, "builder", 1952461028, ).$_invoke$1($if_$9, ));
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
$if_$10=or$6718_$AUTO_$1;
}else{
final dc.bool and$6836_$AUTO_$7=lcoc_core.simple_keyword$QMARK_(maybe_prop$1, );
if(and$6836_$AUTO_$7){
$if_$10=lcoc_core.re_matches(dc.RegExp("(?:b|.+B)uilder", ), lcoc_core.name(maybe_prop$1, ), );
}else{
$if_$10=and$6836_$AUTO_$7;
}
}
}else{
$if_$10=more_forms$1;
}
if(((false != $if_$10) && (null != $if_$10))){
assert((){
late final dc.bool $if_$11;
if(lcoc_core.vector$QMARK_(lcoc_core.second(more_forms$1, ), )){
$if_$11=true;
}else{
$if_$11=false;
}
return $if_$11;
}(), (){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "vector?", )), ));
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, (lcoc_core.symbol.$_invoke$2(null, "second", )), ));
(fl$2[1]=(lcoc_core.symbol.$_invoke$2(null, "more-forms", )));
final lcoc_core.PersistentList $8=lcoc_core.$_list_lit(fl$2, );
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$3[1]=1151);
(fl$3[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$3[3]=53);
(fl$3[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$3[5]=1151);
(fl$3[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$3[7]=34);
final dc.dynamic $9=lcoc_core.with_meta($8, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$3, ), -1, ), );
(fl$1[1]=$9);
final lcoc_core.PersistentList $10=lcoc_core.$_list_lit(fl$1, );
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "end-line", 1522187715, ), ));
(fl$4[1]=1151);
(fl$4[2]=const lcoc_core.Keyword(null, "end-column", 796248491, ));
(fl$4[3]=54);
(fl$4[4]=const lcoc_core.Keyword(null, "line", 878494669, ));
(fl$4[5]=1151);
(fl$4[6]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$4[7]=25);
final dc.dynamic $11=lcoc_core.with_meta($10, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 26632, 26632, fl$4, ), -1, ), );
final dc.String $12=(lcoc_core.pr_str.$_invoke$1($11, ));
final dc.String $13=(lcoc_core.str.$_invoke$2("Assert failed: ", $12, ));
return $13;
}()); // assert

final lcoc_core.VectorNode arg$7=lcoc_core.$_EMPTY_VECTOR.root;
late final dc.dynamic $if_$12;
if(lcoc_core.keyword$QMARK_(maybe_prop$1, )){
$if_$12=(lcoc_core.symbol.$_invoke$1((lcoc_core.str.$_invoke$2(".", lcoc_core.name(maybe_prop$1, ), )), ));
}else{
$if_$12=maybe_prop$1;
}
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(2, $if_$12, ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "build", )), )), lcoc_core.next(more_forms$1, ), ));
late final dc.dynamic $if_$13;
if((o6974$10 is lcoc_core.ISeqable$iface)){
$if_$13=((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$13=((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}
(fl$5[1]=$if_$13);
vec$9606_$1=lcoc_core.PersistentVector(null, 2, 5, arg$7, fl$5, -1, );
}else{
vec$9606_$1=lcoc_core.cons((lcoc_core.symbol.$_invoke$2(null, ".child", )), more_forms$1, );
}
}
late final dc.dynamic seq$9607_$1;
if((vec$9606_$1 is lcoc_core.ISeqable$iface)){
seq$9607_$1=((vec$9606_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9607_$1=((lcoc_core.ISeqable.extensions(vec$9606_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(vec$9606_$1, ));
}
final dc.dynamic first$9608_$1=lcoc_core.first(seq$9607_$1, );
final dc.dynamic seq$9607_$2=lcoc_core.next(seq$9607_$1, );
final dc.dynamic env$2=(lcoc_core.dissoc.$_invoke$2(env$1, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1(first$9608_$1, ));
final dc.dynamic o6974$12=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1(env$2, )), seq$9607_$2, ));
late final dc.dynamic $if_$14;
if((o6974$12 is lcoc_core.ISeqable$iface)){
$if_$14=((o6974$12 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$14=((lcoc_core.ISeqable.extensions(o6974$12, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$12, ));
}
final dc.dynamic $14=(lcoc_core.list.$_invoke$1($if_$14, ));
final dc.dynamic o6974$13=(lcoc_core.concat.$_invoke$3(form$1, arg$8, $14, ));
late final dc.dynamic $if_$16;
if((o6974$13 is lcoc_core.ISeqable$iface)){
$if_$16=((o6974$13 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$16=((lcoc_core.ISeqable.extensions(o6974$13, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$13, ));
}
late final dc.dynamic coll7096$1;
if((form$1 is lcoc_core.IMeta$iface)){
coll7096$1=((form$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
coll7096$1=((lcoc_core.IMeta.extensions(form$1, ) as lcoc_core.IMeta$ext).$_meta$0(form$1, ));
}
late final dc.dynamic $if_$15;
if((coll7096$1 is lcoc_core.IAssociative$iface)){
$if_$15=((coll7096$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword("cljd.flutter", "threaded-in", 1478070034, ), true, ));
}else{
$if_$15=((lcoc_core.IAssociative.extensions(coll7096$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(coll7096$1, const lcoc_core.Keyword("cljd.flutter", "threaded-in", 1478070034, ), true, ));
}
return lcoc_core.with_meta($if_$16, $if_$15, );
}
final dc.String arg$9=(lcoc_core.str.$_invoke$2("Unexpected widget form: ", (lcoc_core.pr_str.$_invoke$1(form$1, )), ));
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "form", 3383402018, ), ));
(fl$6[1]=form$1);
(fl$6[2]=const lcoc_core.Keyword(null, "more-forms", 2970852963, ));
(fl$6[3]=more_forms$1);
throw (lcoc_core.ex_info.$_invoke$2(arg$9, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(2, 12, 12, fl$6, ), -1, ), ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_$_widget_cont_M__18695hm$1

// BEGIN ifn_build_M__18695hm$1
class ifn_build_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_build_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_build_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic argsvec$QMARK_$1, dc.dynamic body$1, ){
if(lcoc_core.vector$QMARK_(argsvec$QMARK_$1, )){
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), argsvec$QMARK_$1, ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $2=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$1, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "tag", 2780644040, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "Widget", )), )), ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$2, ));
final dc.dynamic $3=lcoc_core.with_meta($2, $1, );
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($3, ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), )), (lcoc_core.list.$_invoke$1(true, )), ));
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $4=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$3, ));
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($4, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$3(arg$1, $5, body$1, ));
late final dc.dynamic $if_$4;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$3(arg$2, $7, $6, ));
if((o6974$5 is lcoc_core.ISeqable$iface)){
return ((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), ));
late final dc.dynamic $if_$5;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $8=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$5, ));
final dc.dynamic $12=(lcoc_core.list.$_invoke$1($8, ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), )), (lcoc_core.list.$_invoke$1(true, )), ));
late final dc.dynamic $if_$6;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $9=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$6, ));
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($9, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$4(arg$3, $10, (lcoc_core.list.$_invoke$1(argsvec$QMARK_$1, )), body$1, ));
late final dc.dynamic $if_$7;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($if_$7, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$3(arg$4, $12, $11, ));
if((o6974$9 is lcoc_core.ISeqable$iface)){
return ((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_build_M__18695hm$1

// BEGIN ifn_doto_image_canvas_M__18695hm$1
class ifn_doto_image_canvas_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_doto_image_canvas_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_doto_image_canvas_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic p$9655_$1, dc.dynamic doto_body$1, ){
final dc.dynamic w$1=(lcoc_core.nth.$_invoke$3(p$9655_$1, 0, null, ));
final dc.dynamic h$1=(lcoc_core.nth.$_invoke$3(p$9655_$1, 1, null, ));
final dc.dynamic arg$10=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "recorder__9653__auto__", )), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:d_ui", "PictureRecorder", )), )), ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($if_$1, ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "->", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:d_ui", "Canvas", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), )), doto_body$1, ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$3(arg$2, arg$1, $1, ));
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$3(arg$3, $3, $2, ));
late final dc.dynamic $if_$4;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "picture__9654__auto__", )), ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".endRecording", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "recorder__9653__auto__", )), )), ));
late final dc.dynamic $if_$5;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($if_$5, ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$4(arg$5, $5, arg$4, $4, ));
late final dc.dynamic $if_$6;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $6=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$6, ));
final dc.dynamic $13=(lcoc_core.list.$_invoke$1($6, ));
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "try", )), ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".toImageSync", )), ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "picture__9654__auto__", )), ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "int", )), )), (lcoc_core.list.$_invoke$1(w$1, )), ));
late final dc.dynamic $if_$7;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $8=(lcoc_core.list.$_invoke$1($if_$7, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "int", )), )), (lcoc_core.list.$_invoke$1(h$1, )), ));
late final dc.dynamic $if_$8;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($if_$8, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$4(arg$7, arg$6, $8, $7, ));
late final dc.dynamic $if_$9;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$9=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$9=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($if_$9, ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "finally", )), ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".dispose", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "picture__9654__auto__", )), )), ));
late final dc.dynamic $if_$10;
if((o6974$10 is lcoc_core.ISeqable$iface)){
$if_$10=((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$10=((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($if_$10, ));
final dc.dynamic o6974$11=(lcoc_core.concat.$_invoke$2(arg$8, $9, ));
late final dc.dynamic $if_$11;
if((o6974$11 is lcoc_core.ISeqable$iface)){
$if_$11=((o6974$11 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$11=((lcoc_core.ISeqable.extensions(o6974$11, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$11, ));
}
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($if_$11, ));
final dc.dynamic o6974$12=(lcoc_core.concat.$_invoke$3(arg$9, $11, $10, ));
late final dc.dynamic $if_$12;
if((o6974$12 is lcoc_core.ISeqable$iface)){
$if_$12=((o6974$12 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$12=((lcoc_core.ISeqable.extensions(o6974$12, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$12, ));
}
final dc.dynamic $12=(lcoc_core.list.$_invoke$1($if_$12, ));
final dc.dynamic o6974$13=(lcoc_core.concat.$_invoke$3(arg$10, $13, $12, ));
if((o6974$13 is lcoc_core.ISeqable$iface)){
return ((o6974$13 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$13, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$13, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_doto_image_canvas_M__18695hm$1

// BEGIN ifn_doto_layer_M__18695hm$1
class ifn_doto_layer_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_doto_layer_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_doto_layer_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic canvas$1, dc.dynamic layer_args$QMARK_$1, dc.dynamic doto_body$1, ){
late final dc.dynamic $if_$1;
if(((false != layer_args$QMARK_$1) && (null != layer_args$QMARK_$1))){
if(lcoc_core.vector$QMARK_(layer_args$QMARK_$1, )){
$if_$1=false;
}else{
$if_$1=true;
}
}else{
$if_$1=layer_args$QMARK_$1;
}
late final dc.dynamic doto_body$2;
if(((false != $if_$1) && (null != $if_$1))){
doto_body$2=lcoc_core.cons(layer_args$QMARK_$1, doto_body$1, );
}else{
doto_body$2=doto_body$1;
}
late final dc.dynamic layer_args$QMARK_$2;
if(lcoc_core.vector$QMARK_(layer_args$QMARK_$1, )){
layer_args$QMARK_$2=layer_args$QMARK_$1;
}else{
layer_args$QMARK_$2=null;
}
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1(canvas$1, ));
late final dc.dynamic $if_$2;
if((null == layer_args$QMARK_$2)){
$if_$2=(lcoc_core.symbol.$_invoke$2(null, ".save", ));
}else{
final dc.dynamic paint$1=(lcoc_core.nth.$_invoke$3(layer_args$QMARK_$2, 0, null, ));
final dc.dynamic rect$QMARK_$1=(lcoc_core.nth.$_invoke$3(layer_args$QMARK_$2, 1, null, ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".saveLayer", )), )), (lcoc_core.list.$_invoke$1(rect$QMARK_$1, )), (lcoc_core.list.$_invoke$1(paint$1, )), ));
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$5(arg$2, arg$1, $1, doto_body$2, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".restore", )), )), ));
if((o6974$2 is lcoc_core.ISeqable$iface)){
return ((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_doto_layer_M__18695hm$1

// BEGIN ifn_expand_directive_M__18695hm$1
class ifn_expand_directive_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuuuuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_expand_directive_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_expand_directive_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_env$1, dc.dynamic env$1, dc.dynamic k$1, dc.dynamic v$1, dc.dynamic form$1, dc.dynamic more_forms$1, ){
final dc.dynamic ksym$1=(lcoc_core.symbol.$_invoke$2(null, "k__9556__auto__", ));
final dc.dynamic forms$1=lcoc_core.cons(form$1, more_forms$1, );
late final dc.int hash$1;
if((k$1 is lcoc_core.IHash$iface)){
hash$1=(((k$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$1=(((lcoc_core.IHash.extensions(k$1, ) as lcoc_core.IHash$ext).$_hash$0(k$1, )) as dc.int);
}
switch(hash$1){
case 3592187073:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "bg-watcher", 3592187073, ), k$1, ))){
late final dc.dynamic vec$9560_$1;
if((v$1 is lcoc_core.ISeqable$iface)){
vec$9560_$1=((v$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
vec$9560_$1=((lcoc_core.ISeqable.extensions(v$1, ) as lcoc_core.ISeqable$ext).$_seq$0(v$1, ));
}
late final dc.dynamic seq$9561_$1;
if((vec$9560_$1 is lcoc_core.ISeqable$iface)){
seq$9561_$1=((vec$9560_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9561_$1=((lcoc_core.ISeqable.extensions(vec$9560_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(vec$9560_$1, ));
}
final dc.dynamic first$9562_$1=lcoc_core.first(seq$9561_$1, );
final dc.dynamic seq$9561_$2=lcoc_core.next(seq$9561_$1, );
late final dc.dynamic seq$9564_$1;
if((first$9562_$1 is lcoc_core.ISeqable$iface)){
seq$9564_$1=((first$9562_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9564_$1=((lcoc_core.ISeqable.extensions(first$9562_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(first$9562_$1, ));
}
final dc.dynamic first$9565_$1=lcoc_core.first(seq$9564_$1, );
final dc.dynamic seq$9564_$2=lcoc_core.next(seq$9564_$1, );
final dc.dynamic first$9565_$2=lcoc_core.first(seq$9564_$2, );
final dc.dynamic seq$9564_$3=lcoc_core.next(seq$9564_$2, );
final dc.dynamic vec$9566_$1=lcoc_flutter.collect_options(seq$9564_$3, (dc.dynamic p1$9558_$SHARP_$1, ){
final dc.dynamic or$6718_$AUTO_$1=lcoc_core.qualified_keyword$QMARK_(p1$9558_$SHARP_$1, );
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
return or$6718_$AUTO_$1;
}
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "dispose", 4183551234, ), ));
(fl$8[1]=const lcoc_core.Keyword(null, "dispose", 4183551234, ));
(fl$8[2]=const lcoc_core.Keyword(null, "refresh-on", 2738917650, ));
(fl$8[3]=const lcoc_core.Keyword(null, "refresh-on", 2738917650, ));
(fl$8[4]=const lcoc_core.Keyword(null, ">", 1674685720, ));
(fl$8[5]=const lcoc_core.Keyword(null, ">", 1674685720, ));
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 17039364, 17039364, fl$8, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
return (lcoc_core.PersistentHashSet(null, cast$1, -1, ).$_invoke$1(p1$9558_$SHARP_$1, ));
}, );
late final dc.dynamic seq$9567_$1;
if((vec$9566_$1 is lcoc_core.ISeqable$iface)){
seq$9567_$1=((vec$9566_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9567_$1=((lcoc_core.ISeqable.extensions(vec$9566_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(vec$9566_$1, ));
}
final dc.dynamic first$9568_$1=lcoc_core.first(seq$9567_$1, );
final dc.dynamic seq$9567_$2=lcoc_core.next(seq$9567_$1, );
if(((false != seq$9567_$2) && (null != seq$9567_$2))){
throw dc.Exception("Extra forms found after options.", );
}else{
}
return lcoc_flutter.expand_bg_watcher($AMPERSAND_env$1, env$1, first$9565_$1, first$9565_$2, first$9568_$1, seq$9561_$2, forms$1, );
}
continue _default$1;
case 3975793334:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "color", 3975793334, ), k$1, ))){
return lcoc_flutter.expand_color(env$1, v$1, forms$1, );
}
continue _default$1;
case 2622683294:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "height", 2622683294, ), k$1, ))){
return lcoc_flutter.expand_height_width(env$1, (lcoc_core.list$STAR_.$_invoke$3(k$1, v$1, forms$1, )), );
}
continue _default$1;
case 3725961430:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "spy", 3725961430, ), k$1, ))){
return lcoc_flutter.expand_spy(env$1, v$1, forms$1, );
}
continue _default$1;
case 1765300105:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "context", 1765300105, ), k$1, ))){
final dc.dynamic test$1=(const lcoc_core.Keyword(null, "closest-ctx", 201898431, ).$_invoke$1(env$1, ));
if(((false != test$1) && (null != test$1))){
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic o6974$13=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(v$1, )), (lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), ));
late final dc.dynamic $if_$8;
if((o6974$13 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$13 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$13, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$13, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$8, ));
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic o6974$14=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1(env$1, )), forms$1, ));
late final dc.dynamic $if_$9;
if((o6974$14 is lcoc_core.ISeqable$iface)){
$if_$9=((o6974$14 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$9=((lcoc_core.ISeqable.extensions(o6974$14, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$14, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$9, ));
final dc.dynamic o6974$15=(lcoc_core.concat.$_invoke$3(arg$1, $3, $2, ));
if((o6974$15 is lcoc_core.ISeqable$iface)){
return ((o6974$15 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$15, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$15, ));
}
return lcoc_flutter.stateless_flush(env$1, (lcoc_core.list$STAR_.$_invoke$3(const lcoc_core.Keyword(null, "context", 1765300105, ), v$1, forms$1, )), );
}
continue _default$1;
case 2858810816:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "keep-alive", 2858810816, ), k$1, ))){
return lcoc_flutter.expand_keep_alive($AMPERSAND_env$1, env$1, v$1, forms$1, );
}
continue _default$1;
case 893154113:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "bind", 893154113, ), k$1, ))){
return lcoc_flutter.expand_bind(env$1, v$1, forms$1, );
}
continue _default$1;
case 397789404:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "global-key", 397789404, ), k$1, ))){
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1(ksym$1, ));
final dc.dynamic o6974$16=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "GlobalValueKey", )), )), (lcoc_core.list.$_invoke$1(v$1, )), ));
late final dc.dynamic $if_$10;
if((o6974$16 is lcoc_core.ISeqable$iface)){
$if_$10=((o6974$16 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$10=((lcoc_core.ISeqable.extensions(o6974$16, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$16, ));
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($if_$10, ));
final dc.dynamic o6974$17=(lcoc_core.concat.$_invoke$2(arg$2, $4, ));
late final dc.dynamic $if_$11;
if((o6974$17 is lcoc_core.ISeqable$iface)){
$if_$11=((o6974$17 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$11=((lcoc_core.ISeqable.extensions(o6974$17, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$17, ));
}
final dc.dynamic $5=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$11, ));
final dc.dynamic $8=(lcoc_core.list.$_invoke$1($5, ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), ));
late final dc.dynamic $if_$12;
if((env$1 is lcoc_core.IAssociative$iface)){
$if_$12=((env$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "key", 3455907201, ), ksym$1, ));
}else{
$if_$12=((lcoc_core.IAssociative.extensions(env$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), ksym$1, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$12, ));
final dc.dynamic o6974$18=(lcoc_core.concat.$_invoke$3(arg$3, $6, forms$1, ));
late final dc.dynamic $if_$13;
if((o6974$18 is lcoc_core.ISeqable$iface)){
$if_$13=((o6974$18 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$13=((lcoc_core.ISeqable.extensions(o6974$18, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$18, ));
}
final dc.dynamic $7=(lcoc_core.list.$_invoke$1($if_$13, ));
final dc.dynamic o6974$19=(lcoc_core.concat.$_invoke$3(arg$4, $8, $7, ));
if((o6974$19 is lcoc_core.ISeqable$iface)){
return ((o6974$19 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$19, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$19, ));
}
continue _default$1;
case 1593422210:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "padding", 1593422210, ), k$1, ))){
return lcoc_flutter.expand_padding(env$1, v$1, forms$1, );
}
continue _default$1;
case 1211575717:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "watch", 1211575717, ), k$1, ))){
late final dc.dynamic some$6849_$AUTO_$1;
if((v$1 is lcoc_core.ISeqable$iface)){
some$6849_$AUTO_$1=((v$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
some$6849_$AUTO_$1=((lcoc_core.ISeqable.extensions(v$1, ) as lcoc_core.ISeqable$ext).$_seq$0(v$1, ));
}
if((null == some$6849_$AUTO_$1)){
final dc.dynamic o6974$21=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1(env$1, )), forms$1, ));
if((o6974$21 is lcoc_core.ISeqable$iface)){
return ((o6974$21 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$21, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$21, ));
}
late final dc.dynamic seq$9570_$1;
if((some$6849_$AUTO_$1 is lcoc_core.ISeqable$iface)){
seq$9570_$1=((some$6849_$AUTO_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9570_$1=((lcoc_core.ISeqable.extensions(some$6849_$AUTO_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(some$6849_$AUTO_$1, ));
}
final dc.dynamic first$9571_$1=lcoc_core.first(seq$9570_$1, );
final dc.dynamic seq$9570_$2=lcoc_core.next(seq$9570_$1, );
final dc.dynamic first$9571_$2=lcoc_core.first(seq$9570_$2, );
final dc.dynamic seq$9570_$3=lcoc_core.next(seq$9570_$2, );
final dc.dynamic vec$9572_$1=lcoc_flutter.collect_options(seq$9570_$3, (dc.dynamic p1$9557_$SHARP_$1, ){
final dc.dynamic or$6718_$AUTO_$2=lcoc_core.qualified_keyword$QMARK_(p1$9557_$SHARP_$1, );
if(((false != or$6718_$AUTO_$2) && (null != or$6718_$AUTO_$2))){
return or$6718_$AUTO_$2;
}
final dc.List<dc.dynamic> fl$9=(dc.List<dc.dynamic>.filled(11, const lcoc_core.Keyword(null, "dispose", 4183551234, ), ));
(fl$9[1]=const lcoc_core.Keyword(null, "dispose", 4183551234, ));
(fl$9[2]=const lcoc_core.Keyword(null, "value>", 207619144, ));
(fl$9[3]=const lcoc_core.Keyword(null, "value>", 207619144, ));
(fl$9[4]=const lcoc_core.Keyword(null, "refresh-on", 2738917650, ));
(fl$9[5]=const lcoc_core.Keyword(null, "refresh-on", 2738917650, ));
final dc.List<dc.dynamic> fl$10=(dc.List<dc.dynamic>.filled(4, const lcoc_core.Keyword(null, "as", 55427094, ), ));
(fl$10[1]=const lcoc_core.Keyword(null, "as", 55427094, ));
(fl$10[2]=const lcoc_core.Keyword(null, "default", 3376916406, ));
(fl$10[3]=const lcoc_core.Keyword(null, "default", 3376916406, ));
(fl$9[6]=lcoc_core.BitmapNode(2, 536870913, 536870913, fl$10, ));
(fl$9[7]=const lcoc_core.Keyword(null, ">", 1674685720, ));
(fl$9[8]=const lcoc_core.Keyword(null, ">", 1674685720, ));
(fl$9[9]=const lcoc_core.Keyword(null, "dispose-value", 3330559482, ));
(fl$9[10]=const lcoc_core.Keyword(null, "dispose-value", 3330559482, ));
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$2=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(7, 88342788, 84148484, fl$9, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
return (lcoc_core.PersistentHashSet(null, cast$2, -1, ).$_invoke$1(p1$9557_$SHARP_$1, ));
}, );
late final dc.dynamic seq$9573_$1;
if((vec$9572_$1 is lcoc_core.ISeqable$iface)){
seq$9573_$1=((vec$9572_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9573_$1=((lcoc_core.ISeqable.extensions(vec$9572_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(vec$9572_$1, ));
}
final dc.dynamic first$9574_$1=lcoc_core.first(seq$9573_$1, );
final dc.dynamic seq$9573_$2=lcoc_core.next(seq$9573_$1, );
return lcoc_flutter.expand_watch($AMPERSAND_env$1, env$1, first$9571_$1, first$9571_$2, first$9574_$1, (lcoc_core.list$STAR_.$_invoke$3(const lcoc_core.Keyword(null, "watch", 1211575717, ), seq$9573_$2, forms$1, )), );
}
continue _default$1;
case 1941633041:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "-impl-repl-point", 1941633041, ), k$1, ))){
return lcoc_flutter.expand_repl_point($AMPERSAND_env$1, env$1, v$1, forms$1, );
}
continue _default$1;
case 940093845:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "get", 940093845, ), k$1, ))){
return lcoc_flutter.expand_get_inherited(env$1, v$1, forms$1, );
}
continue _default$1;
case 1332085626:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "managed", 1332085626, ), k$1, ))){
late final dc.dynamic some$6849_$AUTO_$2;
if((v$1 is lcoc_core.ISeqable$iface)){
some$6849_$AUTO_$2=((v$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
some$6849_$AUTO_$2=((lcoc_core.ISeqable.extensions(v$1, ) as lcoc_core.ISeqable$ext).$_seq$0(v$1, ));
}
if((null == some$6849_$AUTO_$2)){
final dc.dynamic o6974$25=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1(env$1, )), forms$1, ));
if((o6974$25 is lcoc_core.ISeqable$iface)){
return ((o6974$25 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$25, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$25, ));
}
late final dc.dynamic seq$9576_$1;
if((some$6849_$AUTO_$2 is lcoc_core.ISeqable$iface)){
seq$9576_$1=((some$6849_$AUTO_$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9576_$1=((lcoc_core.ISeqable.extensions(some$6849_$AUTO_$2, ) as lcoc_core.ISeqable$ext).$_seq$0(some$6849_$AUTO_$2, ));
}
final dc.dynamic first$9577_$1=lcoc_core.first(seq$9576_$1, );
final dc.dynamic seq$9576_$2=lcoc_core.next(seq$9576_$1, );
final dc.dynamic first$9577_$2=lcoc_core.first(seq$9576_$2, );
final dc.dynamic seq$9576_$3=lcoc_core.next(seq$9576_$2, );
final dc.List<dc.dynamic> fl$11=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "dispose", 4183551234, ), ));
(fl$11[1]=const lcoc_core.Keyword(null, "dispose", 4183551234, ));
(fl$11[2]=const lcoc_core.Keyword(null, "update", 1494783845, ));
(fl$11[3]=const lcoc_core.Keyword(null, "update", 1494783845, ));
(fl$11[4]=const lcoc_core.Keyword(null, "refresh-on", 2738917650, ));
(fl$11[5]=const lcoc_core.Keyword(null, "refresh-on", 2738917650, ));
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$3=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 262180, 262180, fl$11, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
final dc.dynamic vec$9578_$1=lcoc_flutter.collect_options(seq$9576_$3, lcoc_core.PersistentHashSet(null, cast$3, -1, ), );
late final dc.dynamic seq$9579_$1;
if((vec$9578_$1 is lcoc_core.ISeqable$iface)){
seq$9579_$1=((vec$9578_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9579_$1=((lcoc_core.ISeqable.extensions(vec$9578_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(vec$9578_$1, ));
}
final dc.dynamic first$9580_$1=lcoc_core.first(seq$9579_$1, );
final dc.dynamic seq$9579_$2=lcoc_core.next(seq$9579_$1, );
return lcoc_flutter.expand_resource($AMPERSAND_env$1, env$1, first$9577_$1, first$9577_$2, first$9580_$1, (lcoc_core.list$STAR_.$_invoke$3(const lcoc_core.Keyword(null, "managed", 1332085626, ), seq$9579_$2, forms$1, )), );
}
continue _default$1;
case 3455907201:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "key", 3455907201, ), k$1, ))){
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1(ksym$1, ));
final dc.dynamic o6974$28=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_foundation", "ValueKey", )), )), (lcoc_core.list.$_invoke$1(v$1, )), ));
late final dc.dynamic $if_$14;
if((o6974$28 is lcoc_core.ISeqable$iface)){
$if_$14=((o6974$28 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$14=((lcoc_core.ISeqable.extensions(o6974$28, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$28, ));
}
final dc.dynamic $9=(lcoc_core.list.$_invoke$1($if_$14, ));
final dc.dynamic o6974$29=(lcoc_core.concat.$_invoke$2(arg$5, $9, ));
late final dc.dynamic $if_$15;
if((o6974$29 is lcoc_core.ISeqable$iface)){
$if_$15=((o6974$29 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$15=((lcoc_core.ISeqable.extensions(o6974$29, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$29, ));
}
final dc.dynamic $10=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$15, ));
final dc.dynamic $13=(lcoc_core.list.$_invoke$1($10, ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), ));
late final dc.dynamic $if_$16;
if((env$1 is lcoc_core.IAssociative$iface)){
$if_$16=((env$1 as lcoc_core.IAssociative$iface).$_assoc$2(const lcoc_core.Keyword(null, "key", 3455907201, ), ksym$1, ));
}else{
$if_$16=((lcoc_core.IAssociative.extensions(env$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), ksym$1, ));
}
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($if_$16, ));
final dc.dynamic o6974$30=(lcoc_core.concat.$_invoke$3(arg$6, $11, forms$1, ));
late final dc.dynamic $if_$17;
if((o6974$30 is lcoc_core.ISeqable$iface)){
$if_$17=((o6974$30 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$17=((lcoc_core.ISeqable.extensions(o6974$30, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$30, ));
}
final dc.dynamic $12=(lcoc_core.list.$_invoke$1($if_$17, ));
final dc.dynamic o6974$31=(lcoc_core.concat.$_invoke$3(arg$7, $13, $12, ));
if((o6974$31 is lcoc_core.ISeqable$iface)){
return ((o6974$31 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$31, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$31, ));
}
continue _default$1;
case 679283015:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "animate", 679283015, ), k$1, ))){
late final dc.dynamic some$6849_$AUTO_$3;
if((v$1 is lcoc_core.ISeqable$iface)){
some$6849_$AUTO_$3=((v$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
some$6849_$AUTO_$3=((lcoc_core.ISeqable.extensions(v$1, ) as lcoc_core.ISeqable$ext).$_seq$0(v$1, ));
}
if((null == some$6849_$AUTO_$3)){
final dc.dynamic o6974$33=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1(env$1, )), forms$1, ));
if((o6974$33 is lcoc_core.ISeqable$iface)){
return ((o6974$33 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$33, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$33, ));
}
late final dc.dynamic seq$9582_$1;
if((some$6849_$AUTO_$3 is lcoc_core.ISeqable$iface)){
seq$9582_$1=((some$6849_$AUTO_$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9582_$1=((lcoc_core.ISeqable.extensions(some$6849_$AUTO_$3, ) as lcoc_core.ISeqable$ext).$_seq$0(some$6849_$AUTO_$3, ));
}
final dc.dynamic first$9583_$1=lcoc_core.first(seq$9582_$1, );
final dc.dynamic seq$9582_$2=lcoc_core.next(seq$9582_$1, );
final dc.dynamic first$9583_$2=lcoc_core.first(seq$9582_$2, );
final dc.dynamic seq$9582_$3=lcoc_core.next(seq$9582_$2, );
final dc.List<dc.dynamic> fl$12=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "lerp", 115064163, ), ));
(fl$12[1]=const lcoc_core.Keyword(null, "lerp", 115064163, ));
(fl$12[2]=const lcoc_core.Keyword(null, "on-end", 2183108005, ));
(fl$12[3]=const lcoc_core.Keyword(null, "on-end", 2183108005, ));
(fl$12[4]=const lcoc_core.Keyword(null, "duration", 3166872430, ));
(fl$12[5]=const lcoc_core.Keyword(null, "duration", 3166872430, ));
(fl$12[6]=const lcoc_core.Keyword(null, "curve", 418324989, ));
(fl$12[7]=const lcoc_core.Keyword(null, "curve", 418324989, ));
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$4=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(4, 536887336, 536887336, fl$12, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
final dc.dynamic vec$9584_$1=lcoc_flutter.collect_options(seq$9582_$3, lcoc_core.PersistentHashSet(null, cast$4, -1, ), );
late final dc.dynamic seq$9585_$1;
if((vec$9584_$1 is lcoc_core.ISeqable$iface)){
seq$9585_$1=((vec$9584_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9585_$1=((lcoc_core.ISeqable.extensions(vec$9584_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(vec$9584_$1, ));
}
final dc.dynamic first$9586_$1=lcoc_core.first(seq$9585_$1, );
final dc.dynamic seq$9585_$2=lcoc_core.next(seq$9585_$1, );
return lcoc_flutter.expand_animate($AMPERSAND_env$1, env$1, first$9583_$1, first$9583_$2, first$9586_$1, (lcoc_core.list$STAR_.$_invoke$3(const lcoc_core.Keyword(null, "animate", 679283015, ), seq$9585_$2, forms$1, )), );
}
continue _default$1;
case 928173128:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "let", 928173128, ), k$1, ))){
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "let", )), ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1(v$1, ));
final dc.dynamic o6974$36=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1(env$1, )), forms$1, ));
late final dc.dynamic $if_$18;
if((o6974$36 is lcoc_core.ISeqable$iface)){
$if_$18=((o6974$36 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$18=((lcoc_core.ISeqable.extensions(o6974$36, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$36, ));
}
final dc.dynamic $14=(lcoc_core.list.$_invoke$1($if_$18, ));
final dc.dynamic o6974$37=(lcoc_core.concat.$_invoke$3(arg$9, arg$8, $14, ));
if((o6974$37 is lcoc_core.ISeqable$iface)){
return ((o6974$37 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$37, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$37, ));
}
continue _default$1;
case 7503990:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "vsync", 7503990, ), k$1, ))){
return lcoc_flutter.expand_vsync(env$1, v$1, forms$1, );
}
continue _default$1;
case 2554302619:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "width", 2554302619, ), k$1, ))){
return lcoc_flutter.expand_height_width(env$1, (lcoc_core.list$STAR_.$_invoke$3(k$1, v$1, forms$1, )), );
}
continue _default$1;
case 2890158092:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "when", 2890158092, ), k$1, ))){
return lcoc_flutter.expand_visible(env$1, v$1, forms$1, );
}
continue _default$1;
_default$1: default:
throw dc.ArgumentError((lcoc_core.str.$_invoke$2("No matching clause: ", (lcoc_core.pr_str.$_invoke$1(k$1, )), )), );
}
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_expand_directive_M__18695hm$1

// BEGIN ifn_get_of_M__18695hm$1
class ifn_get_of_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuXX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_get_of_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_get_of_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$2(dc.dynamic ctx$1, dc.dynamic k$1, ){
return (lcoc_flutter.get_of.$_invoke$3(ctx$1, k$1, null, ));
}

dc.dynamic $_invoke$3(dc.dynamic ctx$2, dc.dynamic k$2, dc.dynamic not_found$1, ){
final f_widgets.BuildContext ctx$3=(ctx$2 as f_widgets.BuildContext);
final f_widgets.InheritedElement? some$6849_$AUTO_$1=(ctx$3.getElementForInheritedWidgetOfExactType<lcoc_flutter.InheritedBindings>());
if((null == some$6849_$AUTO_$1)){
return not_found$1;
}
final f_widgets.InheritedElement arg$2=(some$6849_$AUTO_$1 as f_widgets.InheritedElement);
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(1, k$2, ));
final dc.Object? cast$1=(lcoc_core.PersistentVector(null, 1, 5, arg$1, fl$1, -1, ) as dc.Object?);
(ctx$3.dependOnInheritedElement(arg$2, aspect: cast$1, ));
late final lcoc_flutter.InheritedBindings? some_$GT_$7772_$AUTO_$2;
if((null == some$6849_$AUTO_$1)){
some_$GT_$7772_$AUTO_$2=null;
}else{
some_$GT_$7772_$AUTO_$2=((some$6849_$AUTO_$1 as f_widgets.InheritedElement).widget as lcoc_flutter.InheritedBindings);
}
late final dc.dynamic o7140$1;
if((null == some_$GT_$7772_$AUTO_$2)){
o7140$1=null;
}else{
o7140$1=(some_$GT_$7772_$AUTO_$2 as lcoc_flutter.InheritedBindings).bindings;
}
if((o7140$1 is lcoc_core.ILookup$iface)){
return ((o7140$1 as lcoc_core.ILookup$iface).$_lookup$2(k$2, not_found$1, ));
}
return ((lcoc_core.ILookup.extensions(o7140$1, ) as lcoc_core.ILookup$ext).$_lookup$2(o7140$1, k$2, not_found$1, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_get_of_M__18695hm$1

// BEGIN ifn_peek_of_M__18695hm$1
class ifn_peek_of_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuXX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_peek_of_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_peek_of_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$2(dc.dynamic ctx$1, dc.dynamic k$1, ){
return (lcoc_flutter.peek_of.$_invoke$3(ctx$1, k$1, null, ));
}

dc.dynamic $_invoke$3(dc.dynamic ctx$2, dc.dynamic k$2, dc.dynamic not_found$1, ){
final f_widgets.BuildContext ctx$3=(ctx$2 as f_widgets.BuildContext);
final f_widgets.InheritedElement? some$6849_$AUTO_$1=(ctx$3.getElementForInheritedWidgetOfExactType<lcoc_flutter.InheritedBindings>());
if((null == some$6849_$AUTO_$1)){
return not_found$1;
}
late final lcoc_flutter.InheritedBindings? some_$GT_$7772_$AUTO_$2;
if((null == some$6849_$AUTO_$1)){
some_$GT_$7772_$AUTO_$2=null;
}else{
some_$GT_$7772_$AUTO_$2=((some$6849_$AUTO_$1 as f_widgets.InheritedElement).widget as lcoc_flutter.InheritedBindings);
}
late final dc.dynamic o7140$1;
if((null == some_$GT_$7772_$AUTO_$2)){
o7140$1=null;
}else{
o7140$1=(some_$GT_$7772_$AUTO_$2 as lcoc_flutter.InheritedBindings).bindings;
}
if((o7140$1 is lcoc_core.ILookup$iface)){
return ((o7140$1 as lcoc_core.ILookup$iface).$_lookup$2(k$2, not_found$1, ));
}
return ((lcoc_core.ILookup.extensions(o7140$1, ) as lcoc_core.ILookup$ext).$_lookup$2(o7140$1, k$2, not_found$1, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_peek_of_M__18695hm$1

// BEGIN ifn_retriable_M__18695hm$1
class ifn_retriable_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_retriable_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_retriable_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic async_try_body$1, ){
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "doto", )), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "Retriable", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "fn", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$0());
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$1, ));
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "try", )), )), async_try_body$1, ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$3(arg$1, $3, $2, ));
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1(null, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart:core", "Map", )), )), ));
late final dc.dynamic $if_$4;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$4(arg$3, $5, arg$2, $4, ));
late final dc.dynamic $if_$5;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $6=(lcoc_core.list.$_invoke$1($if_$5, ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$3(arg$4, $6, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "retry!", )), )), ));
if((o6974$6 is lcoc_core.ISeqable$iface)){
return ((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_retriable_M__18695hm$1

// BEGIN ifn_run_M__18695hm$1
class ifn_run_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_run_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_run_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic widget_body$1, ){
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "runApp", )), ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "cond->", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_foundation", "kDebugMode", )), )), ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$1, ));
final dc.dynamic $2=(lcoc_core.list$STAR_.$_invoke$3(const lcoc_core.Keyword(null, "bind", 893154113, ), $1, widget_body$1, ));
final dc.dynamic $3=lcoc_flutter.stateless_flush(lcoc_core.$_EMPTY_MAP, $2, );
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($3, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$4(arg$1, $4, (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_foundation", "kDebugMode", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "repl-hud", )), )), ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($if_$2, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$2(arg$2, $5, ));
if((o6974$3 is lcoc_core.ISeqable$iface)){
return ((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_run_M__18695hm$1

// BEGIN ifn_sub_M__18695hm$1
class ifn_sub_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$3;

ifn_sub_M__18695hm$1(this.meta$3, ):super();

dc.dynamic $_meta$0(){
return meta$3;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$3, ){
return lcoc_flutter.ifn_sub_M__18695hm$1(m$2647_$AUTO_$3, );
}

dc.dynamic $_invoke$vararg(dc.dynamic s$1, dc.dynamic f$1, dc.dynamic args$1, ){
if(lcoc_core.vector$QMARK_(s$1, )){
return lcoc_flutter.reify_sub_M__l8l851$1(null, args$1, f$1, s$1, );
}
return lcoc_flutter.reify_sub_M__l8l851$2(null, args$1, f$1, s$1, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_sub_M__18695hm$1

// BEGIN ifn_widget_M__18695hm$1
class ifn_widget_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_uuZ implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_widget_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.ifn_widget_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic body$1, ){
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$0());
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$1, ));
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$3(arg$1, $2, body$1, ));
late final dc.dynamic $if_$3;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
late final dc.dynamic $if_$2;
if(($AMPERSAND_form$1 is lcoc_core.IMeta$iface)){
$if_$2=(($AMPERSAND_form$1 as lcoc_core.IMeta$iface).$_meta$0());
}else{
$if_$2=((lcoc_core.IMeta.extensions($AMPERSAND_form$1, ) as lcoc_core.IMeta$ext).$_meta$0($AMPERSAND_form$1, ));
}
return lcoc_core.with_meta($if_$3, $if_$2, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_widget_M__18695hm$1

// BEGIN lerp
dc.dynamic lerp(dc.dynamic from$1, dc.dynamic to$1, ){
late final f_widgets.Tween doto$7753_$AUTO_$1;
if((to$1 is lcoc_flutter.ITweenable$iface)){
doto$7753_$AUTO_$1=(((to$1 as lcoc_flutter.ITweenable$iface).$_tween$0()) as f_widgets.Tween);
}else{
doto$7753_$AUTO_$1=(((lcoc_flutter.ITweenable.extensions(to$1, ) as lcoc_flutter.ITweenable$ext).$_tween$0(to$1, )) as f_widgets.Tween);
}
doto$7753_$AUTO_$1.begin=from$1;
return doto$7753_$AUTO_$1.lerp;
}

// END lerp

// BEGIN managed_repl_hud_M__caaxye$1
class managed_repl_hud_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final _0;

managed_repl_hud_M__caaxye$1(this._0, key$9, ):super(key: key$9, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.ResourceState(null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9179_$AUTO_$1, ){
final lcoc_flutter.ResourceState doto$7753_$AUTO_$1=(state$9179_$AUTO_$1 as lcoc_flutter.ResourceState);
doto$7753_$AUTO_$1.k=null;
doto$7753_$AUTO_$1.resource=(lcoc_core.atom.$_invoke$1(null, ));
return doto$7753_$AUTO_$1;
}

dc.dynamic $_dispose_state$1(dc.dynamic state$9179_$AUTO_$2, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$3=(state$9179_$AUTO_$2 as lcoc_flutter.ResourceState);
state$9179_$AUTO_$3.k=null;
state$9179_$AUTO_$3.resource=null;
return state$9179_$AUTO_$3;
}

dc.dynamic $_build$2(dc.dynamic state$9179_$AUTO_$4, dc.dynamic ctx$9180_$AUTO_$1, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$5=(state$9179_$AUTO_$4 as lcoc_flutter.ResourceState);
final f_widgets.BuildContext ctx$9180_$AUTO_$2=(ctx$9180_$AUTO_$1 as f_widgets.BuildContext);
final lcoc_core.Atom $STAR_hud_enabled$1=(state$9179_$AUTO_$5.resource as lcoc_core.Atom);
return lcoc_flutter.managed_repl_hud_M__caaxye$2($STAR_hud_enabled$1, _0, null, );
}

dc.dynamic $_update_state$1(dc.dynamic state$9179_$AUTO_$27, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$28=(state$9179_$AUTO_$27 as lcoc_flutter.ResourceState);
if((lcoc_core.$EQ_.$_invoke$2(null, state$9179_$AUTO_$28.k, ))){
return null;
}
state$9179_$AUTO_$28.resource=(lcoc_core.atom.$_invoke$1(null, ));
state$9179_$AUTO_$28.k=null;
return state$9179_$AUTO_$28;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END managed_repl_hud_M__caaxye$1

// BEGIN managed_repl_hud_M__caaxye$2
class managed_repl_hud_M__caaxye$2 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final lcoc_core.Atom _0;
final _1;

managed_repl_hud_M__caaxye$2(this._0, this._1, key$8, ):super(key: key$8, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.ResourceState(null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9179_$AUTO_$6, ){
final lcoc_flutter.ResourceState doto$7753_$AUTO_$3=(state$9179_$AUTO_$6 as lcoc_flutter.ResourceState);
doto$7753_$AUTO_$3.k=null;
doto$7753_$AUTO_$3.resource=(lcoc_core.println.$_invoke$1("[* RDY)_", ));
return doto$7753_$AUTO_$3;
}

dc.dynamic $_dispose_state$1(dc.dynamic state$9179_$AUTO_$7, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$8=(state$9179_$AUTO_$7 as lcoc_flutter.ResourceState);
state$9179_$AUTO_$8.k=null;
state$9179_$AUTO_$8.resource=null;
return state$9179_$AUTO_$8;
}

dc.dynamic $_build$2(dc.dynamic state$9179_$AUTO_$9, dc.dynamic ctx$9180_$AUTO_$3, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$10=(state$9179_$AUTO_$9 as lcoc_flutter.ResourceState);
final f_widgets.BuildContext ctx$9180_$AUTO_$4=(ctx$9180_$AUTO_$3 as f_widgets.BuildContext);
final dc.dynamic $UNDERSCORE_$1=state$9179_$AUTO_$10.resource;
final lcoc_core.VectorNode arg$6=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword("cljd.flutter.repl-impl", "hud-enabled", 1353731370, ), ));
(fl$2[1]=_0);
late final lcoc_flutter.GlobalValueKey? k$9286_$AUTO_$1;
if(f_foundation.kDebugMode){
k$9286_$AUTO_$1=null;
}else{
k$9286_$AUTO_$1=const lcoc_flutter.GlobalValueKey(const lcoc_core.Keyword("cljd.flutter", "app-root", 2193565623, ), );
}
late final f_widgets.Key? $if_$1;
if((null != k$9286_$AUTO_$1)){
$if_$1=((k$9286_$AUTO_$1 as lcoc_flutter.GlobalValueKey) as f_widgets.Key);
}else{
$if_$1=null;
}
final lcoc_flutter.widget_repl_hud_M__4wk9ma$1 child$9287_$AUTO_$1=lcoc_flutter.widget_repl_hud_M__4wk9ma$1(_1, $if_$1, );
late final f_widgets.StatelessWidget $if_$2;
if(f_foundation.kDebugMode){
$if_$2=lcoc_flutter.widget_repl_hud_M__4wk9ma$2(_0, _1, child$9287_$AUTO_$1, ctx$9180_$AUTO_$4, state$9179_$AUTO_$10, this, (const lcoc_flutter.GlobalValueKey(const lcoc_core.Keyword("cljd.flutter", "app-root", 2193565623, ), ) as f_widgets.Key?), );
}else{
$if_$2=child$9287_$AUTO_$1;
}
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, lcoc_flutter.Bind(null, lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 1024, 1024, fl$2, ), -1, ), $if_$2, ), ));
(fl$1[1]=lcoc_flutter.watch_repl_hud_M__caaxye$1(_0, _1, null, ));
late final dc.List<f_widgets.Widget> casted$1;
if((lcoc_core.PersistentVector(null, 2, 5, arg$6, fl$1, -1, ) is dc.List<f_widgets.Widget>)){
casted$1=(lcoc_core.PersistentVector(null, 2, 5, arg$6, fl$1, -1, ) as dc.List<f_widgets.Widget>);
}else{
casted$1=((lcoc_core.PersistentVector(null, 2, 5, arg$6, fl$1, -1, ) as dc.List).cast<f_widgets.Widget>());
}
final f_widgets.Stack child$9287_$AUTO_$6=f_widgets.Stack(alignment: f_widgets.AlignmentGeometry.topLeft, fit: f_widgets.StackFit.expand, children: casted$1, );
if(f_foundation.kDebugMode){
final dc.dynamic test$9=(lcoc_flutter.get_of.$_invoke$2(ctx$9180_$AUTO_$4, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$9) && (null != test$9))){
final dc.List<dc.dynamic> fl$18=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$18[1]=1273);
(fl$18[2]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$18[3]=5);
(fl$18[4]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$18[5]=(lcoc_core.symbol.$_invoke$2(null, "cljd.flutter", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8413184, 8413184, fl$18, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "child", )), _1, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), ctx$9180_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "___9178__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "ctx__9180__auto__", )), ctx$9180_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "*hud-enabled", )), _0, (lcoc_core.symbol.$_invoke$2(null, "state__9179__auto__", )), state$9179_$AUTO_$10, ], ));
}, child$9287_$AUTO_$6, );
}
return child$9287_$AUTO_$6;
}
return child$9287_$AUTO_$6;
}

dc.dynamic $_update_state$1(dc.dynamic state$9179_$AUTO_$25, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$26=(state$9179_$AUTO_$25 as lcoc_flutter.ResourceState);
if((lcoc_core.$EQ_.$_invoke$2(null, state$9179_$AUTO_$26.k, ))){
return null;
}
state$9179_$AUTO_$26.resource=(lcoc_core.println.$_invoke$1("[* RDY)_", ));
state$9179_$AUTO_$26.k=null;
return state$9179_$AUTO_$26;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END managed_repl_hud_M__caaxye$2

// BEGIN managed_repl_hud_M__caaxye$3
class managed_repl_hud_M__caaxye$3 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final lcoc_core.Atom _0;
final _1;
final _2;
final dc.dynamic _3;
final lcoc_flutter.WatchState _4;
final _5;
final lcoc_flutter.watch_repl_hud_M__caaxye$1 _6;

managed_repl_hud_M__caaxye$3(this._0, this._1, this._2, this._3, this._4, this._5, this._6, key$6, ):super(key: key$6, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.ResourceState(null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9179_$AUTO_$11, ){
final lcoc_flutter.ResourceState doto$7753_$AUTO_$10=(state$9179_$AUTO_$11 as lcoc_flutter.ResourceState);
doto$7753_$AUTO_$10.k=null;
doto$7753_$AUTO_$10.resource=(lcoc_core.atom.$_invoke$1(lcoc_core.$_EMPTY_MAP, ));
return doto$7753_$AUTO_$10;
}

dc.dynamic $_dispose_state$1(dc.dynamic state$9179_$AUTO_$12, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$13=(state$9179_$AUTO_$12 as lcoc_flutter.ResourceState);
state$9179_$AUTO_$13.k=null;
state$9179_$AUTO_$13.resource=null;
return state$9179_$AUTO_$13;
}

dc.dynamic $_build$2(dc.dynamic state$9179_$AUTO_$14, dc.dynamic ctx$9180_$AUTO_$5, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$15=(state$9179_$AUTO_$14 as lcoc_flutter.ResourceState);
final f_widgets.BuildContext ctx$9180_$AUTO_$6=(ctx$9180_$AUTO_$5 as f_widgets.BuildContext);
final lcoc_core.Atom $STAR_hud_state$1=(state$9179_$AUTO_$15.resource as lcoc_core.Atom);
final f_widgets.Listener child$9287_$AUTO_$5=f_widgets.Listener(behavior: f_widgets.HitTestBehavior.opaque, onPointerDown: (dc.dynamic e$1, ){
final f_rendering.BoxHitTestResult result$1=f_rendering.BoxHitTestResult();
(((const lcoc_flutter.GlobalValueKey(const lcoc_core.Keyword("cljd.flutter", "app-root", 2193565623, ), ).currentContext as f_widgets.Element).renderObject as f_rendering.RenderBox).hitTest(result$1, position: (e$1 as f_widgets.PointerDownEvent).position, ));
final dc.dynamic some$6849_$AUTO_$1=lcoc_core.some((dc.dynamic p$9621_$1, ){
final f_rendering.HitTestEntry map$9622_$1=(p$9621_$1 as f_rendering.HitTestEntry);
final fsg_hit_test.HitTestTarget target$1=map$9622_$1.target;
if((target$1 is f_rendering.RenderObject)){
final f_rendering.RenderObject some_$GT_$7772_$AUTO_$1=(target$1 as f_rendering.RenderObject);
final f_widgets.DebugCreator some_$GT_$7772_$AUTO_$2=(some_$GT_$7772_$AUTO_$1.debugCreator as f_widgets.DebugCreator);
return some_$GT_$7772_$AUTO_$2.element;
}
return null;
}, result$1.path, );
if((null == some$6849_$AUTO_$1)){
return null;
}
final f_widgets.Element target$2=(some$6849_$AUTO_$1 as f_widgets.Element);
final dc.List<f_widgets.StatefulElement> repl_elts$1=<f_widgets.StatefulElement>[];
(target$2.visitAncestorElements((dc.dynamic anc$1, ){
final dc.bool and$6836_$AUTO_$1=((anc$1 as f_widgets.Element) is f_widgets.StatefulElement);
late final dc.bool $if_$3;
if(and$6836_$AUTO_$1){
$if_$3=(((anc$1 as f_widgets.Element) as f_widgets.StatefulElement).state is lcoc_flutter.ReplState);
}else{
$if_$3=and$6836_$AUTO_$1;
}
if($if_$3){
(repl_elts$1.add(((anc$1 as f_widgets.Element) as f_widgets.StatefulElement), ));
}else{
}
return true;
}, ));
final f_widgets.StatefulElement some_$GT_$7772_$AUTO_$4=repl_elts$1.first;
final f_widgets.State<f_widgets.StatefulWidget> some$6849_$AUTO_$2=some_$GT_$7772_$AUTO_$4.state;
final lcoc_flutter.ReplState state$1=(some$6849_$AUTO_$2 as lcoc_flutter.ReplState);
if((_3 is dc.Function)){
((_3 as dc.Function)(state$1, ));
}else if((_3 is lcoc_core.IFn$iface)){
((_3 as lcoc_core.IFn$iface).$_invoke$1(state$1, ));
}else{
(lcoc_core.IFn.extensions(_3, ).$_invoke$1(_3, state$1, ));
}
(lcoc_core.reset$BANG_((const lcoc_core.Keyword(null, "*active-state", 1166969386, ).$_invoke$1(state$1.m, )), state$1, ));
return (lcoc_core.swap$BANG_.$_invoke$4($STAR_hud_state$1, lcoc_core.assoc, const lcoc_core.Keyword(null, "repl-elts", 3705923751, ), lcoc_core.vec(repl_elts$1.reversed, ), ));
}, child: (lcoc_flutter.managed_repl_hud_M__caaxye$4(_0, $STAR_hud_state$1, _1, _2, _3, _4, _5, _6, null, ) as f_widgets.Widget?), );
if(f_foundation.kDebugMode){
final dc.dynamic test$8=(lcoc_flutter.get_of.$_invoke$2(ctx$9180_$AUTO_$6, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$8) && (null != test$8))){
final dc.List<dc.dynamic> fl$16=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$16[1]=1285);
(fl$16[2]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$16[3]=10);
(fl$16[4]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$16[5]=(lcoc_core.symbol.$_invoke$2(null, "cljd.flutter", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8413184, 8413184, fl$16, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), _6, (lcoc_core.symbol.$_invoke$2(null, "child", )), _1, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), _2, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), _5, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), _4, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), ctx$9180_$AUTO_$6, (lcoc_core.symbol.$_invoke$2(null, "___9178__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "*hud-state", )), $STAR_hud_state$1, (lcoc_core.symbol.$_invoke$2(null, "ctx__9180__auto__", )), ctx$9180_$AUTO_$6, (lcoc_core.symbol.$_invoke$2(null, "set-env", )), _3, (lcoc_core.symbol.$_invoke$2(null, "*hud-enabled", )), _0, (lcoc_core.symbol.$_invoke$2(null, "state__9179__auto__", )), state$9179_$AUTO_$15, ], ));
}, child$9287_$AUTO_$5, );
}
return child$9287_$AUTO_$5;
}
return child$9287_$AUTO_$5;
}

dc.dynamic $_update_state$1(dc.dynamic state$9179_$AUTO_$23, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$24=(state$9179_$AUTO_$23 as lcoc_flutter.ResourceState);
if((lcoc_core.$EQ_.$_invoke$2(null, state$9179_$AUTO_$24.k, ))){
return null;
}
state$9179_$AUTO_$24.resource=(lcoc_core.atom.$_invoke$1(lcoc_core.$_EMPTY_MAP, ));
state$9179_$AUTO_$24.k=null;
return state$9179_$AUTO_$24;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END managed_repl_hud_M__caaxye$3

// BEGIN managed_repl_hud_M__caaxye$4
class managed_repl_hud_M__caaxye$4 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final lcoc_core.Atom _0;
final lcoc_core.Atom _1;
final _2;
final _3;
final dc.dynamic _4;
final lcoc_flutter.WatchState _5;
final _6;
final lcoc_flutter.watch_repl_hud_M__caaxye$1 _7;

managed_repl_hud_M__caaxye$4(this._0, this._1, this._2, this._3, this._4, this._5, this._6, this._7, key$5, ):super(key: key$5, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.ResourceState(null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9179_$AUTO_$16, ){
final lcoc_flutter.ResourceState doto$7753_$AUTO_$12=(state$9179_$AUTO_$16 as lcoc_flutter.ResourceState);
doto$7753_$AUTO_$12.k=null;
doto$7753_$AUTO_$12.resource=f_widgets.ValueNotifier<dc.dynamic>(null, );
return doto$7753_$AUTO_$12;
}

dc.dynamic $_dispose_state$1(dc.dynamic state$9179_$AUTO_$17, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$18=(state$9179_$AUTO_$17 as lcoc_flutter.ResourceState);
state$9179_$AUTO_$18.k=null;
((state$9179_$AUTO_$18.resource as f_widgets.ValueNotifier<dc.dynamic>).dispose());
state$9179_$AUTO_$18.resource=null;
return state$9179_$AUTO_$18;
}

dc.dynamic $_build$2(dc.dynamic state$9179_$AUTO_$19, dc.dynamic ctx$9180_$AUTO_$7, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$20=(state$9179_$AUTO_$19 as lcoc_flutter.ResourceState);
final f_widgets.BuildContext ctx$9180_$AUTO_$8=(ctx$9180_$AUTO_$7 as f_widgets.BuildContext);
final f_widgets.ValueNotifier<dc.dynamic> notifier$9390_$AUTO_$1=(state$9179_$AUTO_$20.resource as f_widgets.ValueNotifier<dc.dynamic>);
final f_widgets.CustomPaint child$9287_$AUTO_$2=f_widgets.CustomPaint(painter: (lcoc_flutter.reify_repl_hud_M__6xmvcd$1(notifier$9390_$AUTO_$1, notifier$9390_$AUTO_$1, ) as f_widgets.CustomPainter?), );
late final f_widgets.Widget threaded_in_form$9344_$AUTO_$1;
if(f_foundation.kDebugMode){
threaded_in_form$9344_$AUTO_$1=lcoc_flutter.widget_repl_hud_M__4wk9ma$3(_0, _1, notifier$9390_$AUTO_$1, _2, child$9287_$AUTO_$2, _3, ctx$9180_$AUTO_$8, notifier$9390_$AUTO_$1, _4, _5, _6, state$9179_$AUTO_$20, _7, this, null, );
}else{
threaded_in_form$9344_$AUTO_$1=child$9287_$AUTO_$2;
}
final lcoc_flutter.watch_repl_hud_M__caaxye$2 child$9287_$AUTO_$4=lcoc_flutter.watch_repl_hud_M__caaxye$2(_0, _1, notifier$9390_$AUTO_$1, _2, ctx$9180_$AUTO_$8, notifier$9390_$AUTO_$1, _4, state$9179_$AUTO_$20, this, threaded_in_form$9344_$AUTO_$1, null, );
if(f_foundation.kDebugMode){
final dc.dynamic test$7=(lcoc_flutter.get_of.$_invoke$2(ctx$9180_$AUTO_$8, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$7) && (null != test$7))){
final dc.List<dc.dynamic> fl$14=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "ns", 1494845879, ), ));
(fl$14[1]=(lcoc_core.symbol.$_invoke$2(null, "cljd.flutter", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 8388608, 8388608, fl$14, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), _7, (lcoc_core.symbol.$_invoke$2(null, "child", )), _2, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), _3, (lcoc_core.symbol.$_invoke$2(null, "notifier__9390__auto__", )), notifier$9390_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), _6, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), _5, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), ctx$9180_$AUTO_$8, (lcoc_core.symbol.$_invoke$2(null, "___9178__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "*rects", )), notifier$9390_$AUTO_$1, (lcoc_core.symbol.$_invoke$2(null, "*hud-state", )), _1, (lcoc_core.symbol.$_invoke$2(null, "ctx__9180__auto__", )), ctx$9180_$AUTO_$8, (lcoc_core.symbol.$_invoke$2(null, "set-env", )), _4, (lcoc_core.symbol.$_invoke$2(null, "*hud-enabled", )), _0, (lcoc_core.symbol.$_invoke$2(null, "state__9179__auto__", )), state$9179_$AUTO_$20, ], ));
}, child$9287_$AUTO_$4, );
}
return child$9287_$AUTO_$4;
}
return child$9287_$AUTO_$4;
}

dc.dynamic $_update_state$1(dc.dynamic state$9179_$AUTO_$21, ){
final lcoc_flutter.ResourceState state$9179_$AUTO_$22=(state$9179_$AUTO_$21 as lcoc_flutter.ResourceState);
if((lcoc_core.$EQ_.$_invoke$2(null, state$9179_$AUTO_$22.k, ))){
return null;
}
((state$9179_$AUTO_$22.resource as f_widgets.ValueNotifier<dc.dynamic>).dispose());
state$9179_$AUTO_$22.resource=f_widgets.ValueNotifier<dc.dynamic>(null, );
state$9179_$AUTO_$22.k=null;
return state$9179_$AUTO_$22;
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END managed_repl_hud_M__caaxye$4

// BEGIN peek-of
lcoc_core.IFn$iface peek_of=lcoc_flutter.ifn_peek_of_M__18695hm$1(null, );

// END peek-of

// BEGIN refresh-on-expr
dc.dynamic refresh_on_expr(dc.dynamic opts$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic expr$1, ){
if(lcoc_core.contains$QMARK_(opts$1, const lcoc_core.Keyword(null, "refresh-on", 2738917650, ), )){
return (const lcoc_core.Keyword(null, "refresh-on", 2738917650, ).$_invoke$1(opts$1, ));
}
final dc.dynamic f$1=(const lcoc_core.Keyword(null, "closed-overs", 3637630378, ).$_invoke$1($AMPERSAND_env$1, ));
late final dc.dynamic closed_overs$1;
if((f$1 is dc.Function)){
closed_overs$1=(f$1 as dc.Function)(expr$1, );
}else if((f$1 is lcoc_core.IFn$iface)){
closed_overs$1=((f$1 as lcoc_core.IFn$iface).$_invoke$1(expr$1, ));
}else{
closed_overs$1=(lcoc_core.IFn.extensions(f$1, ).$_invoke$1(f$1, expr$1, ));
}
final dc.dynamic test$1=lcoc_core.next(closed_overs$1, );
if(((false != test$1) && (null != test$1))){
return lcoc_core.vec(closed_overs$1, );
}
return lcoc_core.first(closed_overs$1, );
}

// END refresh-on-expr

// BEGIN reify_repl_hud_M__6xmvcd$1
class reify_repl_hud_M__6xmvcd$1 extends f_widgets.CustomPainter {
final f_widgets.ValueNotifier<dc.dynamic> _0;

reify_repl_hud_M__6xmvcd$1(this._0, repaint$1, ):super(repaint: repaint$1, );

void paint(f_widgets.Canvas canvas$1, f_widgets.Size size$1, ){
final f_widgets.HSVColor color$1=(f_widgets.HSVColor.fromColor((const f_widgets.Color.fromRGBO(255, 0, 255, 0.7, )), ));
final dc.double hue$1=color$1.hue;
final f_widgets.Paint doto$7753_$AUTO_$14=f_widgets.Paint();
doto$7753_$AUTO_$14.style=f_widgets.PaintingStyle.stroke;
final f_widgets.Paint paint$1=doto$7753_$AUTO_$14;
final dc.dynamic rects$1=lcoc_core.deref(_0, );
late final dc.int cast$1;
if((rects$1 is lcoc_core.ICounted$iface)){
cast$1=(((rects$1 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
cast$1=(((lcoc_core.ICounted.extensions(rects$1, ) as lcoc_core.ICounted$ext).$_count$0(rects$1, )) as dc.int);
}
final dc.int N_1$1=(cast$1 - 1);
(lcoc_core.reduce_kv((dc.dynamic $UNDERSCORE_$2, dc.dynamic i$1, dc.dynamic rect$1, ){
final f_widgets.Rect arg$3=(rect$1 as f_widgets.Rect);
paint$1.strokeWidth=((1 + ((6 - 1) * d_math.pow(0.5, (N_1$1 - (i$1 as dc.num)), ))) as dc.num).toDouble();
paint$1.color=(color$1.withHue(((hue$1 + ((i$1 as dc.num) * 41.5)) % 360.0), ).toColor());
return (canvas$1.drawRect(arg$3, paint$1, ));
}, null, rects$1, ));
return null;
}

dc.bool shouldRepaint(f_widgets.CustomPainter old$1, ){
return true;
}
}

// END reify_repl_hud_M__6xmvcd$1

// BEGIN reify_spawn_repl$BANG__M__18695hm$1
class reify_spawn_repl$BANG__M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_XuX implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;
final dc.dynamic _0;
final da.StreamSink<dc.dynamic> _1;

reify_spawn_repl$BANG__M__18695hm$1(this.meta$1, this._0, this._1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.reify_spawn_repl$BANG__M__18695hm$1(m$2647_$AUTO_$1, _0, _1, );
}

dc.dynamic $_invoke$0(){
if((_0 is dc.Function)){
return (_0 as dc.Function)();
}
if((_0 is lcoc_core.IFn$iface)){
return ((_0 as lcoc_core.IFn$iface).$_invoke$0());
}
return (lcoc_core.IFn.extensions(_0, ).$_invoke$0(_0, ));
}

dc.dynamic $_invoke$2(dc.dynamic f$2, dc.dynamic mode$2, ){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(2, f$2, ));
(fl$1[1]=mode$2);
return (_1.add(lcoc_core.PersistentVector(null, 2, 5, arg$1, fl$1, -1, ), ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END reify_spawn_repl$BANG__M__18695hm$1

// BEGIN reify_sub_M__l8l851$1
class reify_sub_M__l8l851$1 extends dc.Object implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_flutter.Subscribable$iface {
final meta$1;
final _0;
final _1;
final _2;

reify_sub_M__l8l851$1(this.meta$1, this._0, this._1, this._2, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcoc_flutter.reify_sub_M__l8l851$1(m$2647_$AUTO_$1, _0, _1, _2, );
}

dc.dynamic $_subscribe$1(dc.dynamic f$BANG_$1, ){
final lcoc_core.Volatile v$1=lcoc_core.Volatile(null, );
v$1.value=v$1;
final lcoc_core.Volatile $UNDERSCORE_$1=v$1;
late final dc.int n$1;
if((_2 is lcoc_core.ICounted$iface)){
n$1=(((_2 as lcoc_core.ICounted$iface).$_count$0()) as dc.int);
}else{
n$1=(((lcoc_core.ICounted.extensions(_2, ) as lcoc_core.ICounted$ext).$_count$0(_2, )) as dc.int);
}
final lcoc_core.Volatile ins$1=lcoc_core.Volatile(lcoc_core.vec((lcoc_core.repeat.$_invoke$2(n$1, null, )), ), );
final dc.dynamic subs$1=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.map_indexed.$_invoke$1((dc.dynamic i$1, dc.dynamic s$2, ){
dc.dynamic f$BANG_9039$1(dc.dynamic x$1, ){
final dc.dynamic coll7096$1=ins$1.value;
late final dc.dynamic setval$2;
if((coll7096$1 is lcoc_core.IAssociative$iface)){
setval$2=((coll7096$1 as lcoc_core.IAssociative$iface).$_assoc$2(i$1, x$1, ));
}else{
setval$2=((lcoc_core.IAssociative.extensions(coll7096$1, ) as lcoc_core.IAssociative$ext).$_assoc$2(coll7096$1, i$1, x$1, ));
}
ins$1.value=setval$2;
final dc.dynamic ins$2=setval$2;
final dc.dynamic prev$1=lcoc_core.deref(v$1, );
if(dc.identical(prev$1, (v$1 as dc.Object?), )){
return null;
}
final dc.dynamic r$1=(lcoc_core.apply.$_invoke$3(_1, ins$2, _0, ));
if((lcoc_core.not$EQ_.$_invoke$2(r$1, prev$1, ))){
v$1.value=r$1;
if((f$BANG_$1 is dc.Function)){
return (f$BANG_$1 as dc.Function)(r$1, );
}
if((f$BANG_$1 is lcoc_core.IFn$iface)){
return ((f$BANG_$1 as lcoc_core.IFn$iface).$_invoke$1(r$1, ));
}
return (lcoc_core.IFn.extensions(f$BANG_$1, ).$_invoke$1(f$BANG_$1, r$1, ));
}
return null;
}
if((s$2 is lcoc_flutter.Subscribable$iface)){
return ((s$2 as lcoc_flutter.Subscribable$iface).$_subscribe$1(f$BANG_9039$1, ));
}
return ((lcoc_flutter.Subscribable.extensions(s$2, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(s$2, f$BANG_9039$1, ));
}, )), _2, ));
final dc.dynamic setval$4=(lcoc_core.apply.$_invoke$3(_1, lcoc_core.deref(ins$1, ), _0, ));
v$1.value=setval$4;
if((f$BANG_$1 is dc.Function)){
((f$BANG_$1 as dc.Function)(setval$4, ));
}else if((f$BANG_$1 is lcoc_core.IFn$iface)){
((f$BANG_$1 as lcoc_core.IFn$iface).$_invoke$1(setval$4, ));
}else{
(lcoc_core.IFn.extensions(f$BANG_$1, ).$_invoke$1(f$BANG_$1, setval$4, ));
}
return subs$1;
}

dc.dynamic $_call_with_immediate_value$2(dc.dynamic subs$2, dc.dynamic f$BANG_$2, ){
final lcoc_core.Volatile vtv$1=lcoc_core.Volatile(lcoc_core.transient(lcoc_core.$_EMPTY_VECTOR, ), );
dc.dynamic push$BANG_$1(dc.dynamic p1$9441_$SHARP_$1, ){
final dc.dynamic setval$5=(lcoc_core.conj$BANG_.$_invoke$2(vtv$1.value, p1$9441_$SHARP_$1, ));
vtv$1.value=setval$5;
return setval$5;
}
final dc.dynamic all_immediates$1=lcoc_core.reduce_kv((dc.dynamic $UNDERSCORE_$2, dc.dynamic i$2, dc.dynamic s$3, ){
final dc.dynamic sub9045$1=(lcoc_core.nth.$_invoke$2(subs$2, i$2, ));
late final dc.dynamic or$6718_$AUTO_$1;
if((s$3 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$1=((s$3 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub9045$1, push$BANG_$1, ));
}else{
or$6718_$AUTO_$1=((lcoc_flutter.Subscribable.extensions(s$3, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(s$3, sub9045$1, push$BANG_$1, ));
}
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
return or$6718_$AUTO_$1;
}
return lcoc_core.reduced(false, );
}, true, _2, );
if(((false != all_immediates$1) && (null != all_immediates$1))){
final dc.dynamic arg$1=lcoc_core.persistent$BANG_(lcoc_core.deref(vtv$1, ), );
if((f$BANG_$2 is dc.Function)){
((f$BANG_$2 as dc.Function)(arg$1, ));
}else if((f$BANG_$2 is lcoc_core.IFn$iface)){
((f$BANG_$2 as lcoc_core.IFn$iface).$_invoke$1(arg$1, ));
}else{
(lcoc_core.IFn.extensions(f$BANG_$2, ).$_invoke$1(f$BANG_$2, arg$1, ));
}
}else{
}
return all_immediates$1;
}

dc.dynamic $_unsubscribe$1(dc.dynamic subs$3, ){
return (lcoc_core.dorun.$_invoke$1((lcoc_core.map.$_invoke$3(lcoc_flutter.$_unsubscribe, _2, subs$3, )), ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END reify_sub_M__l8l851$1

// BEGIN reify_sub_M__l8l851$2
class reify_sub_M__l8l851$2 extends dc.Object implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_flutter.Subscribable$iface {
final meta$2;
final _0;
final _1;
final _2;

reify_sub_M__l8l851$2(this.meta$2, this._0, this._1, this._2, ):super();

dc.dynamic $_meta$0(){
return meta$2;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$2, ){
return lcoc_flutter.reify_sub_M__l8l851$2(m$2647_$AUTO_$2, _0, _1, _2, );
}

dc.dynamic $_subscribe$1(dc.dynamic f$BANG_$3, ){
final lcoc_core.Volatile v$2=lcoc_core.Volatile(null, );
v$2.value=v$2;
dc.dynamic f$BANG_9039$2(dc.dynamic x$2, ){
final dc.dynamic x$3=(lcoc_core.apply.$_invoke$3(_1, x$2, _0, ));
if((lcoc_core.not$EQ_.$_invoke$2(x$3, lcoc_core.deref(v$2, ), ))){
v$2.value=x$3;
if((f$BANG_$3 is dc.Function)){
return (f$BANG_$3 as dc.Function)(x$3, );
}
if((f$BANG_$3 is lcoc_core.IFn$iface)){
return ((f$BANG_$3 as lcoc_core.IFn$iface).$_invoke$1(x$3, ));
}
return (lcoc_core.IFn.extensions(f$BANG_$3, ).$_invoke$1(f$BANG_$3, x$3, ));
}
return null;
}
if((_2 is lcoc_flutter.Subscribable$iface)){
return ((_2 as lcoc_flutter.Subscribable$iface).$_subscribe$1(f$BANG_9039$2, ));
}
return ((lcoc_flutter.Subscribable.extensions(_2, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(_2, f$BANG_9039$2, ));
}

dc.dynamic $_call_with_immediate_value$2(dc.dynamic sub$1, dc.dynamic f$BANG_$4, ){
dc.dynamic f$BANG_9046$2(dc.dynamic p1$9442_$SHARP_$1, ){
final dc.dynamic arg$2=(lcoc_core.apply.$_invoke$3(_1, p1$9442_$SHARP_$1, _0, ));
if((f$BANG_$4 is dc.Function)){
return (f$BANG_$4 as dc.Function)(arg$2, );
}
if((f$BANG_$4 is lcoc_core.IFn$iface)){
return ((f$BANG_$4 as lcoc_core.IFn$iface).$_invoke$1(arg$2, ));
}
return (lcoc_core.IFn.extensions(f$BANG_$4, ).$_invoke$1(f$BANG_$4, arg$2, ));
}
if((_2 is lcoc_flutter.Subscribable$iface)){
return ((_2 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$1, f$BANG_9046$2, ));
}
return ((lcoc_flutter.Subscribable.extensions(_2, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(_2, sub$1, f$BANG_9046$2, ));
}

dc.dynamic $_unsubscribe$1(dc.dynamic sub$2, ){
if((_2 is lcoc_flutter.Subscribable$iface)){
return ((_2 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub$2, ));
}
return ((lcoc_flutter.Subscribable.extensions(_2, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(_2, sub$2, ));
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END reify_sub_M__l8l851$2

// BEGIN repl-hud
dc.dynamic repl_hud(dc.dynamic child$1, ){
return lcoc_flutter.managed_repl_hud_M__caaxye$1(child$1, null, );
}

// END repl-hud

// BEGIN retriable
lcoc_core.IFn$iface retriable=lcoc_flutter.ifn_retriable_M__18695hm$1(null, );

// END retriable

// BEGIN retry!
dc.dynamic retry$BANG_(dc.dynamic retriable$1, ){
final dc.dynamic maybe_f$1=(retriable$1 as lcoc_flutter.Retriable).thunk;
late final da.FutureOr<dc.dynamic> Function() wrapper_f$1;
if((maybe_f$1 is da.FutureOr<dc.dynamic> Function())){
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
final dc.Future setval$1=dc.Future(wrapper_f$1, );
(retriable$1 as lcoc_flutter.Retriable).fut=setval$1;
final dc.Future this_fut$1=setval$1;
return (this_fut$1.then((dc.dynamic x$1, ){
try {
if(dc.identical(this_fut$1, (retriable$1 as lcoc_flutter.Retriable).fut, )){
return lcoc_core.run$BANG_((dc.dynamic p1$9638_$SHARP_$1, ){
if((p1$9638_$SHARP_$1 is dc.Function)){
return (p1$9638_$SHARP_$1 as dc.Function)(x$1, );
}
if((p1$9638_$SHARP_$1 is lcoc_core.IFn$iface)){
return ((p1$9638_$SHARP_$1 as lcoc_core.IFn$iface).$_invoke$1(x$1, ));
}
return (lcoc_core.IFn.extensions(p1$9638_$SHARP_$1, ).$_invoke$1(p1$9638_$SHARP_$1, x$1, ));
}, (retriable$1 as lcoc_flutter.Retriable).subscriptions.values, );
}
return null;
} on dc.Object catch (e$1) {
return dc.print(e$1, );
}
}, ));
}

// END retry!

// BEGIN run
lcoc_core.IFn$iface run=lcoc_flutter.ifn_run_M__18695hm$1(null, );

// END run

// BEGIN spawn-repl!
dc.dynamic spawn_repl$BANG_(dc.dynamic tag$1, ){
final dc.StringSink out$1=lcoc_core.$STAR_out$STAR_;
final lcocfr_impl.PrefixingStringSink prval$1=lcocfr_impl.prefixing_string_sink(out$1, (lcoc_core.str.$_invoke$3("[", tag$1, " =)", )), );
final lcocfr_impl.PrefixingStringSink prack$1=lcocfr_impl.prefixing_string_sink(out$1, (lcoc_core.str.$_invoke$3("[", tag$1, " !)", )), );
void ack$BANG_$1(){
return (prack$1.writeln(">", ));
}
final da.StreamController map$9612_$1=da.StreamController(sync: true, );
final da.StreamSink<dc.dynamic> sink$1=map$9612_$1.sink;
final da.Stream<dc.dynamic> stream$1=map$9612_$1.stream;
final dc.dynamic close$1=map$9612_$1.close;
dc.dynamic maybe_f$3(){
(lcoc_core.println.$_invoke$1("ClojureDart\n", ));
(lcoc_core.println.$_invoke$1("Use `(pick!)` to toggle the widget picker. The picked widget becomes `*1`.", ));
(lcoc_core.println.$_invoke$1("Use `(mount!)` to replace the picked widget by `*1`.", ));
(lcoc_core.println.$_invoke$1("`*env` contains the lexical scope for the picked widget.\nBuildContext at `(:ctx *env)`.", ));
(stream$1.forEach((dc.dynamic p$9613_$1, ){
final dc.dynamic f$1=(lcoc_core.nth.$_invoke$3(p$9613_$1, 0, null, ));
final dc.dynamic mode$1=(lcoc_core.nth.$_invoke$3(p$9613_$1, 1, null, ));
final dc.dynamic prev_ns$1=lcoc_core.$STAR_ns$STAR_;
try {
late final dc.dynamic r$1;
if((f$1 is dc.Function)){
r$1=(f$1 as dc.Function)();
}else if((f$1 is lcoc_core.IFn$iface)){
r$1=((f$1 as lcoc_core.IFn$iface).$_invoke$0());
}else{
r$1=(lcoc_core.IFn.extensions(f$1, ).$_invoke$0(f$1, ));
}
lcoc_core.$STAR_3=lcoc_core.$STAR_2;
lcoc_core.$STAR_2=lcoc_core.$STAR_1;
lcoc_core.$STAR_1=r$1;
late final dc.int hash$1;
if((mode$1 is lcoc_core.IHash$iface)){
hash$1=(((mode$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$1=(((lcoc_core.IHash.extensions(mode$1, ) as lcoc_core.IHash$ext).$_hash$0(mode$1, )) as dc.int);
}
switch(hash$1){
case 2972524322:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "user", 2972524322, ), mode$1, ))){
dc.dynamic maybe_f$1(){
return (lcoc_core.prn.$_invoke$1(r$1, ));
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
final lcoc_core.BitmapNode $1=(node$7856_$AUTO_$1.inode_assoc_transient(0, cast$1, k$7857_$AUTO_$1, lcoc_core.Volatile(prval$1, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$1;
if((lcoc_core.PersistentHashMap(null, $1, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$1=(lcoc_core.PersistentHashMap(null, $1, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$1=((lcoc_core.PersistentHashMap(null, $1, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$1, zoneValues: casted$1, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}
continue _default$1;
case 2217056000:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "tooling", 2217056000, ), mode$1, ))){
return null;
}
continue _default$1;
_default$1: default:
throw dc.ArgumentError((lcoc_core.str.$_invoke$2("No matching clause: ", (lcoc_core.pr_str.$_invoke$1(mode$1, )), )), );
}
} on dc.Object catch (e$SHARP_$1, st$SHARP_$1) {
lcoc_core.$STAR_e=e$SHARP_$1;
lcoc_core.$STAR_st=st$SHARP_$1;
dc.dynamic maybe_f$2(){
final dc.dynamic or$6718_$AUTO_$1=lcoc_core.ex_message(e$SHARP_$1, );
late final dc.dynamic $if_$1;
if(((false != or$6718_$AUTO_$1) && (null != or$6718_$AUTO_$1))){
$if_$1=or$6718_$AUTO_$1;
}else{
$if_$1=(const lcoc_core.Keyword(null, "cause", 2480149224, ).$_invoke$1(e$SHARP_$1, ));
}
return (lcoc_core.println.$_invoke$2("Error: ", $if_$1, ));
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
final dc.dynamic k$7857_$AUTO_$2=(lcoc_core.symbol.$_invoke$2("cljd.core", "*out*", ));
late final dc.int cast$2;
if((k$7857_$AUTO_$2 is lcoc_core.IHash$iface)){
cast$2=(((k$7857_$AUTO_$2 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$2=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$2, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$2, )) as dc.int);
}
final lcoc_core.BitmapNode $2=(node$7856_$AUTO_$2.inode_assoc_transient(0, cast$2, k$7857_$AUTO_$2, lcoc_core.Volatile(lcoc_core.$STAR_err$STAR_, ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$2;
if((lcoc_core.PersistentHashMap(null, $2, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$2=(lcoc_core.PersistentHashMap(null, $2, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$2=((lcoc_core.PersistentHashMap(null, $2, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
(da.runZoned<dc.dynamic>(wrapper_f$2, zoneValues: casted$2, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, ));
return null;
} finally {
late final dc.int hash$2;
if((mode$1 is lcoc_core.IHash$iface)){
hash$2=(((mode$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$2=(((lcoc_core.IHash.extensions(mode$1, ) as lcoc_core.IHash$ext).$_hash$0(mode$1, )) as dc.int);
}
switch(hash$2){
case 2972524322:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "user", 2972524322, ), mode$1, ))){
(lcoc_core.print.$_invoke$1((lcoc_core.str.$_invoke$2(lcoc_core.$STAR_ns$STAR_, "=> ", )), ));
}else{
continue _default$2;
}
break;
case 2217056000:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "tooling", 2217056000, ), mode$1, ))){
if((lcoc_core.$EQ_.$_invoke$2(lcoc_core.$STAR_ns$STAR_, prev_ns$1, ))){
}else{
(lcoc_core.print.$_invoke$1((lcoc_core.str.$_invoke$3("\n", lcoc_core.$STAR_ns$STAR_, "=> ", )), ));
}
}else{
continue _default$2;
}
break;
_default$2: default:
throw dc.ArgumentError((lcoc_core.str.$_invoke$2("No matching clause: ", (lcoc_core.pr_str.$_invoke$1(mode$1, )), )), );
}
((lcoc_core.$STAR_out$STAR_ as lcocfr_impl.PrefixingStringSink).flush());
(prack$1.writeln((lcoc_core.str.$_invoke$1(lcoc_core.$STAR_ns$STAR_, )), ));
}
}, ));
final lcoc_flutter.reify_spawn_repl$BANG__M__18695hm$1 f$3=lcoc_flutter.reify_spawn_repl$BANG__M__18695hm$1(null, close$1, sink$1, );
final lcoc_flutter.reify_spawn_repl$BANG__M__18695hm$1 setval$6=f$3;
lcoc_flutter.$STAR__repl_control_$STAR_=setval$6;
return setval$6;
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
final dc.dynamic k$7857_$AUTO_$3=(lcoc_core.symbol.$_invoke$2("cljd.core", "*3", ));
late final dc.int cast$3;
if((k$7857_$AUTO_$3 is lcoc_core.IHash$iface)){
cast$3=(((k$7857_$AUTO_$3 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$3=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$3, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$3, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$4=(node$7856_$AUTO_$3.inode_assoc_transient(0, cast$3, k$7857_$AUTO_$3, lcoc_core.Volatile(null, ), ));
final dc.dynamic k$7857_$AUTO_$4=(lcoc_core.symbol.$_invoke$2("cljd.core", "*print-length*", ));
late final dc.int cast$4;
if((k$7857_$AUTO_$4 is lcoc_core.IHash$iface)){
cast$4=(((k$7857_$AUTO_$4 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$4=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$4, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$4, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$5=(node$7856_$AUTO_$4.inode_assoc_transient(0, cast$4, k$7857_$AUTO_$4, lcoc_core.Volatile(40, ), ));
final dc.dynamic k$7857_$AUTO_$5=(lcoc_core.symbol.$_invoke$2("cljd.flutter", "*-repl-control-*", ));
late final dc.int cast$5;
if((k$7857_$AUTO_$5 is lcoc_core.IHash$iface)){
cast$5=(((k$7857_$AUTO_$5 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$5=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$5, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$5, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$6=(node$7856_$AUTO_$5.inode_assoc_transient(0, cast$5, k$7857_$AUTO_$5, lcoc_core.Volatile(null, ), ));
final dc.dynamic k$7857_$AUTO_$6=(lcoc_core.symbol.$_invoke$2("cljd.core", "*print-level*", ));
late final dc.int cast$6;
if((k$7857_$AUTO_$6 is lcoc_core.IHash$iface)){
cast$6=(((k$7857_$AUTO_$6 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$6=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$6, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$6, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$7=(node$7856_$AUTO_$6.inode_assoc_transient(0, cast$6, k$7857_$AUTO_$6, lcoc_core.Volatile(6, ), ));
final dc.dynamic k$7857_$AUTO_$7=(lcoc_core.symbol.$_invoke$2("cljd.core", "*st", ));
late final dc.int cast$7;
if((k$7857_$AUTO_$7 is lcoc_core.IHash$iface)){
cast$7=(((k$7857_$AUTO_$7 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$7=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$7, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$7, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$8=(node$7856_$AUTO_$7.inode_assoc_transient(0, cast$7, k$7857_$AUTO_$7, lcoc_core.Volatile(null, ), ));
final dc.dynamic k$7857_$AUTO_$8=(lcoc_core.symbol.$_invoke$2("cljd.core", "*1", ));
late final dc.int cast$8;
if((k$7857_$AUTO_$8 is lcoc_core.IHash$iface)){
cast$8=(((k$7857_$AUTO_$8 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$8=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$8, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$8, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$9=(node$7856_$AUTO_$8.inode_assoc_transient(0, cast$8, k$7857_$AUTO_$8, lcoc_core.Volatile(null, ), ));
final dc.dynamic k$7857_$AUTO_$9=(lcoc_core.symbol.$_invoke$2("cljd.core", "*2", ));
late final dc.int cast$9;
if((k$7857_$AUTO_$9 is lcoc_core.IHash$iface)){
cast$9=(((k$7857_$AUTO_$9 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$9=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$9, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$9, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$10=(node$7856_$AUTO_$9.inode_assoc_transient(0, cast$9, k$7857_$AUTO_$9, lcoc_core.Volatile(null, ), ));
final dc.dynamic k$7857_$AUTO_$10=(lcoc_core.symbol.$_invoke$2("cljd.core", "*out*", ));
late final dc.int cast$10;
if((k$7857_$AUTO_$10 is lcoc_core.IHash$iface)){
cast$10=(((k$7857_$AUTO_$10 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$10=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$10, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$10, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$11=(node$7856_$AUTO_$10.inode_assoc_transient(0, cast$10, k$7857_$AUTO_$10, lcoc_core.Volatile(lcocfr_impl.prefixing_string_sink(out$1, (lcoc_core.str.$_invoke$3("[", tag$1, " o)", )), ), ), ));
final dc.dynamic k$7857_$AUTO_$11=(lcoc_core.symbol.$_invoke$2("cljd.core", "*e", ));
late final dc.int cast$11;
if((k$7857_$AUTO_$11 is lcoc_core.IHash$iface)){
cast$11=(((k$7857_$AUTO_$11 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$11=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$11, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$11, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$12=(node$7856_$AUTO_$11.inode_assoc_transient(0, cast$11, k$7857_$AUTO_$11, lcoc_core.Volatile(null, ), ));
final dc.dynamic k$7857_$AUTO_$12=(lcoc_core.symbol.$_invoke$2("cljd.core", "*env", ));
late final dc.int cast$12;
if((k$7857_$AUTO_$12 is lcoc_core.IHash$iface)){
cast$12=(((k$7857_$AUTO_$12 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$12=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$12, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$12, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$13=(node$7856_$AUTO_$12.inode_assoc_transient(0, cast$12, k$7857_$AUTO_$12, lcoc_core.Volatile(null, ), ));
final dc.dynamic k$7857_$AUTO_$13=(lcoc_core.symbol.$_invoke$2("cljd.core", "*err*", ));
late final dc.int cast$13;
if((k$7857_$AUTO_$13 is lcoc_core.IHash$iface)){
cast$13=(((k$7857_$AUTO_$13 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$13=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$13, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$13, )) as dc.int);
}
final lcoc_core.BitmapNode node$7856_$AUTO_$14=(node$7856_$AUTO_$13.inode_assoc_transient(0, cast$13, k$7857_$AUTO_$13, lcoc_core.Volatile(lcocfr_impl.prefixing_string_sink(out$1, (lcoc_core.str.$_invoke$3("[", tag$1, " e)", )), ), ), ));
final dc.dynamic k$7857_$AUTO_$14=(lcoc_core.symbol.$_invoke$2("cljd.core", "*ns*", ));
late final dc.int cast$14;
if((k$7857_$AUTO_$14 is lcoc_core.IHash$iface)){
cast$14=(((k$7857_$AUTO_$14 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
cast$14=(((lcoc_core.IHash.extensions(k$7857_$AUTO_$14, ) as lcoc_core.IHash$ext).$_hash$0(k$7857_$AUTO_$14, )) as dc.int);
}
final lcoc_core.BitmapNode $3=(node$7856_$AUTO_$14.inode_assoc_transient(0, cast$14, k$7857_$AUTO_$14, lcoc_core.Volatile((lcoc_core.symbol.$_invoke$2(null, "repl.uninitialized", )), ), ));
late final dc.Map<dc.Object?, dc.Object?>? casted$3;
if((lcoc_core.PersistentHashMap(null, $3, -1, ) is dc.Map<dc.Object?, dc.Object?>?)){
casted$3=(lcoc_core.PersistentHashMap(null, $3, -1, ) as dc.Map<dc.Object?, dc.Object?>?);
}else{
casted$3=((lcoc_core.PersistentHashMap(null, $3, -1, ) as dc.Map).cast<dc.Object?, dc.Object?>());
}
return da.runZoned<dc.dynamic>(wrapper_f$3, zoneValues: casted$3, zoneSpecification: lcoc_core.$_async_error_handler_zone_spec, );
}

// END spawn-repl!

// BEGIN stateless-flush
dc.dynamic stateless_flush(dc.dynamic env$1, dc.dynamic forms$1, ){
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "reify", )), ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "extends", 2423719685, ), ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "StatelessWidget", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, ".key", )), )), (lcoc_core.list.$_invoke$1((const lcoc_core.Keyword(null, "key", 3455907201, ).$_invoke$1(env$1, )), )), ));
late final dc.dynamic $if_$1;
if((o6974$1 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($if_$1, ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "name-hint", 2341976313, ), ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1("widget", ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "no-meta", 2746638389, ), ));
final dc.dynamic arg$2=(lcoc_core.list.$_invoke$1(true, ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "build", )), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "___9553__auto__", )), )), (lcoc_core.list.$_invoke$1(lcoc_flutter.closest_context$v1, )), ));
late final dc.dynamic $if_$2;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$2, ));
final dc.dynamic $3=(lcoc_core.list.$_invoke$1($1, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "-widget-cont", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.assoc.$_invoke$5(env$1, const lcoc_core.Keyword(null, "key", 3455907201, ), null, const lcoc_core.Keyword(null, "closest-ctx", 201898431, ), true, )), )), forms$1, ));
late final dc.dynamic $if_$3;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $2=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$3(arg$1, $3, $2, ));
late final dc.dynamic $if_$4;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($if_$4, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$8(arg$7, arg$6, $5, arg$5, arg$4, arg$3, arg$2, $4, ));
if((o6974$5 is lcoc_core.ISeqable$iface)){
return ((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}

// END stateless-flush

// BEGIN sub
lcoc_core.IFn$iface sub=lcoc_flutter.ifn_sub_M__18695hm$1(null, );

// END sub

// BEGIN tween-with
f_widgets.Tween tween_with(dc.dynamic f$1, dc.dynamic end$1, ){
if(((false != f$1) && (null != f$1))){
final lcoc_flutter.CustomTween doto$7753_$AUTO_$1=lcoc_flutter.CustomTween(f$1, null, );
doto$7753_$AUTO_$1.end=end$1;
return doto$7753_$AUTO_$1;
}
if((end$1 is f_widgets.Tween)){
return end$1;
}
if((end$1 is lcoc_flutter.ITweenable$iface)){
return ((end$1 as lcoc_flutter.ITweenable$iface).$_tween$0());
}
return ((lcoc_flutter.ITweenable.extensions(end$1, ) as lcoc_flutter.ITweenable$ext).$_tween$0(end$1, ));
}

// END tween-with

// BEGIN value-sym
dc.dynamic value_sym(dc.dynamic ensured_binding$1, ){
if(lcoc_core.map$QMARK_(ensured_binding$1, )){
return (const lcoc_core.Keyword(null, "as", 55427094, ).$_invoke$1(ensured_binding$1, ));
}
if(lcoc_core.vector$QMARK_(ensured_binding$1, )){
return lcoc_core.peek(ensured_binding$1, );
}
if(lcoc_core.simple_symbol$QMARK_(ensured_binding$1, )){
return ensured_binding$1;
}
return null;
}

// END value-sym

// BEGIN watch_repl_hud_M__caaxye$1
class watch_repl_hud_M__caaxye$1 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final lcoc_core.Atom _0;
final _1;

watch_repl_hud_M__caaxye$1(this._0, this._1, key$7, ):super(key: key$7, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.WatchState(null, null, null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9129_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$1=(state$9129_$AUTO_$1 as lcoc_flutter.WatchState);
state$9123_$AUTO_$1.k=_0;
state$9123_$AUTO_$1.subscribable=_0;
dc.dynamic update$9126_$AUTO_$1(dc.dynamic set_env$3, ){
if((lcoc_core.$EQ_.$_invoke$2(set_env$3, state$9123_$AUTO_$1.latest, ))){
return null;
}
return (state$9123_$AUTO_$1.$_invoke$1(set_env$3, ));
}
late final dc.dynamic sub$9127_$AUTO_$1;
if((_0 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$1=((_0 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$1, ));
}else{
sub$9127_$AUTO_$1=((lcoc_flutter.Subscribable.extensions(_0, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(_0, update$9126_$AUTO_$1, ));
}
late final dc.dynamic or$6718_$AUTO_$1;
if((_0 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$1=((_0 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$1, update$9126_$AUTO_$1, ));
}else{
or$6718_$AUTO_$1=((lcoc_flutter.Subscribable.extensions(_0, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(_0, sub$9127_$AUTO_$1, update$9126_$AUTO_$1, ));
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
final dc.dynamic doto$7753_$AUTO_$9=state$9129_$AUTO_$3.subscribable;
final dc.dynamic sub9052$1=state$9129_$AUTO_$3.subscription;
if((doto$7753_$AUTO_$9 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$9 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$1, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$9, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$9, sub9052$1, ));
}
state$9129_$AUTO_$3.subscribable=null;
state$9129_$AUTO_$3.subscription=null;
return state$9129_$AUTO_$3;
}

dc.dynamic $_build$2(dc.dynamic state$9129_$AUTO_$4, dc.dynamic ctx$9130_$AUTO_$1, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$2=(state$9129_$AUTO_$4 as lcoc_flutter.WatchState);
final dc.dynamic set_env$4=state$9123_$AUTO_$2.latest;
final f_widgets.BuildContext context$9100_$AUTO_$5=(ctx$9130_$AUTO_$1 as f_widgets.BuildContext);
if(((false != set_env$4) && (null != set_env$4))){
return lcoc_flutter.managed_repl_hud_M__caaxye$3(_0, _1, ctx$9130_$AUTO_$1, set_env$4, state$9123_$AUTO_$2, state$9129_$AUTO_$4, this, null, );
}
return (const f_widgets.SizedBox.shrink(key: null, ));
}

dc.dynamic $_update_state$1(dc.dynamic state$9129_$AUTO_$10, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$6=(state$9129_$AUTO_$10 as lcoc_flutter.WatchState);
if((lcoc_core.$EQ_.$_invoke$2(_0, state$9123_$AUTO_$6.k, ))){
return null;
}
final dc.dynamic doto$7753_$AUTO_$24=state$9123_$AUTO_$6.subscribable;
final dc.dynamic sub9052$4=state$9123_$AUTO_$6.subscription;
if((doto$7753_$AUTO_$24 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$24 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$4, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$24, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$24, sub9052$4, ));
}
state$9123_$AUTO_$6.k=_0;
state$9123_$AUTO_$6.subscribable=_0;
dc.dynamic update$9126_$AUTO_$4(dc.dynamic set_env$5, ){
if((lcoc_core.$EQ_.$_invoke$2(set_env$5, state$9123_$AUTO_$6.latest, ))){
return null;
}
return (state$9123_$AUTO_$6.$_invoke$1(set_env$5, ));
}
late final dc.dynamic sub$9127_$AUTO_$4;
if((_0 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$4=((_0 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$4, ));
}else{
sub$9127_$AUTO_$4=((lcoc_flutter.Subscribable.extensions(_0, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(_0, update$9126_$AUTO_$4, ));
}
late final dc.dynamic or$6718_$AUTO_$4;
if((_0 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$4=((_0 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$4, update$9126_$AUTO_$4, ));
}else{
or$6718_$AUTO_$4=((lcoc_flutter.Subscribable.extensions(_0, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(_0, sub$9127_$AUTO_$4, update$9126_$AUTO_$4, ));
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

// END watch_repl_hud_M__caaxye$1

// BEGIN watch_repl_hud_M__caaxye$2
class watch_repl_hud_M__caaxye$2 extends f_widgets.StatefulWidget implements lcoc_flutter.StateLifecycle$iface {
final lcoc_core.Atom _0;
final lcoc_core.Atom _1;
final f_widgets.ValueNotifier<dc.dynamic> _2;
final _3;
final f_widgets.BuildContext _4;
final f_widgets.ValueNotifier<dc.dynamic> _5;
final dc.dynamic _6;
final lcoc_flutter.ResourceState _7;
final lcoc_flutter.managed_repl_hud_M__caaxye$4 _8;
final f_widgets.Widget _9;

watch_repl_hud_M__caaxye$2(this._0, this._1, this._2, this._3, this._4, this._5, this._6, this._7, this._8, this._9, key$4, ):super(key: key$4, );

f_widgets.State<f_widgets.StatefulWidget> createState(){
return lcoc_flutter.WatchState(null, null, null, null, );
}

dc.dynamic $_init_state$1(dc.dynamic state$9129_$AUTO_$5, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$3=(state$9129_$AUTO_$5 as lcoc_flutter.WatchState);
state$9123_$AUTO_$3.k=_1;
state$9123_$AUTO_$3.subscribable=_1;
dc.dynamic update$9126_$AUTO_$2(dc.dynamic p$9625_$1, ){
late final dc.dynamic map$9626_$2;
if(((lcoc_core.ISeq.satisfies(p$9625_$1, )) as dc.bool)){
final dc.dynamic test$4=lcoc_core.next(p$9625_$1, );
if(((false != test$4) && (null != test$4))){
map$9626_$2=lcoc_core.seq_to_map_for_destructuring(p$9625_$1, );
}else{
late final dc.dynamic $if_$5;
if((p$9625_$1 is lcoc_core.ISeqable$iface)){
$if_$5=((p$9625_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(p$9625_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(p$9625_$1, ));
}
if(((false != $if_$5) && (null != $if_$5))){
map$9626_$2=lcoc_core.first(p$9625_$1, );
}else{
map$9626_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9626_$2=p$9625_$1;
}
late final dc.dynamic repl_elts$3;
if((map$9626_$2 is lcoc_core.ILookup$iface)){
repl_elts$3=((map$9626_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "repl-elts", 3705923751, ), ));
}else{
repl_elts$3=((lcoc_core.ILookup.extensions(map$9626_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9626_$2, const lcoc_core.Keyword(null, "repl-elts", 3705923751, ), ));
}
if((lcoc_core.$EQ_.$_invoke$2(repl_elts$3, state$9123_$AUTO_$3.latest, ))){
return null;
}
return (state$9123_$AUTO_$3.$_invoke$1(repl_elts$3, ));
}
late final dc.dynamic sub$9127_$AUTO_$2;
if((_1 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$2=((_1 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$2, ));
}else{
sub$9127_$AUTO_$2=((lcoc_flutter.Subscribable.extensions(_1, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(_1, update$9126_$AUTO_$2, ));
}
late final dc.dynamic or$6718_$AUTO_$2;
if((_1 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$2=((_1 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$2, update$9126_$AUTO_$2, ));
}else{
or$6718_$AUTO_$2=((lcoc_flutter.Subscribable.extensions(_1, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(_1, sub$9127_$AUTO_$2, update$9126_$AUTO_$2, ));
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
final dc.dynamic doto$7753_$AUTO_$19=state$9129_$AUTO_$7.subscribable;
final dc.dynamic sub9052$2=state$9129_$AUTO_$7.subscription;
if((doto$7753_$AUTO_$19 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$19 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$2, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$19, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$19, sub9052$2, ));
}
state$9129_$AUTO_$7.subscribable=null;
state$9129_$AUTO_$7.subscription=null;
return state$9129_$AUTO_$7;
}

dc.dynamic $_build$2(dc.dynamic state$9129_$AUTO_$8, dc.dynamic ctx$9130_$AUTO_$2, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$4=(state$9129_$AUTO_$8 as lcoc_flutter.WatchState);
final dc.dynamic repl_elts$4=state$9123_$AUTO_$4.latest;
final f_widgets.BuildContext context$9100_$AUTO_$9=(ctx$9130_$AUTO_$2 as f_widgets.BuildContext);
final dc.dynamic rects$2=(lcoc_core.into.$_invoke$3(lcoc_core.$_EMPTY_VECTOR, (lcoc_core.keep.$_invoke$1((dc.dynamic p$9627_$1, ){
final f_widgets.Element map$9628_$1=(p$9627_$1 as f_widgets.Element);
final f_widgets.RenderObject? ro$1=map$9628_$1.renderObject;
if((null != ro$1)){
return (f_rendering.MatrixUtils.transformRect(((ro$1 as f_widgets.RenderObject).getTransformTo(null, )), (ro$1 as f_widgets.RenderObject).paintBounds, ));
}
return null;
}, )), repl_elts$4, ));
final dc.dynamic $UNDERSCORE_$3=lcoc_core.reset$BANG_(_5, rects$2, );
if(f_foundation.kDebugMode){
final dc.dynamic test$5=(lcoc_flutter.get_of.$_invoke$2(context$9100_$AUTO_$9, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$5) && (null != test$5))){
final dc.List<dc.dynamic> fl$12=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "ns", 1494845879, ), ));
(fl$12[1]=(lcoc_core.symbol.$_invoke$2(null, "cljd.flutter", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 8388608, 8388608, fl$12, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), this, (lcoc_core.symbol.$_invoke$2(null, "child", )), _3, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), ctx$9130_$AUTO_$2, (lcoc_core.symbol.$_invoke$2(null, "notifier__9390__auto__", )), _5, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), state$9129_$AUTO_$8, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), state$9123_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), context$9100_$AUTO_$9, (lcoc_core.symbol.$_invoke$2(null, "___9178__auto__", )), _8, (lcoc_core.symbol.$_invoke$2(null, "*rects", )), _2, (lcoc_core.symbol.$_invoke$2(null, "threaded-in-form__9344__auto__", )), _9, (lcoc_core.symbol.$_invoke$2(null, "*hud-state", )), _1, (lcoc_core.symbol.$_invoke$2(null, "repl-elts", )), repl_elts$4, (lcoc_core.symbol.$_invoke$2(null, "ctx__9180__auto__", )), _4, (lcoc_core.symbol.$_invoke$2(null, "set-env", )), _6, (lcoc_core.symbol.$_invoke$2(null, "*hud-enabled", )), _0, (lcoc_core.symbol.$_invoke$2(null, "state__9179__auto__", )), _7, (lcoc_core.symbol.$_invoke$2(null, "rects", )), rects$2, ], ));
}, _9, );
}
return _9;
}
return _9;
}

dc.dynamic $_update_state$1(dc.dynamic state$9129_$AUTO_$9, ){
final lcoc_flutter.WatchState state$9123_$AUTO_$5=(state$9129_$AUTO_$9 as lcoc_flutter.WatchState);
if((lcoc_core.$EQ_.$_invoke$2(_1, state$9123_$AUTO_$5.k, ))){
return null;
}
final dc.dynamic doto$7753_$AUTO_$20=state$9123_$AUTO_$5.subscribable;
final dc.dynamic sub9052$3=state$9123_$AUTO_$5.subscription;
if((doto$7753_$AUTO_$20 is lcoc_flutter.Subscribable$iface)){
((doto$7753_$AUTO_$20 as lcoc_flutter.Subscribable$iface).$_unsubscribe$1(sub9052$3, ));
}else{
((lcoc_flutter.Subscribable.extensions(doto$7753_$AUTO_$20, ) as lcoc_flutter.Subscribable$ext).$_unsubscribe$1(doto$7753_$AUTO_$20, sub9052$3, ));
}
state$9123_$AUTO_$5.k=_1;
state$9123_$AUTO_$5.subscribable=_1;
dc.dynamic update$9126_$AUTO_$3(dc.dynamic p$9629_$1, ){
late final dc.dynamic map$9630_$2;
if(((lcoc_core.ISeq.satisfies(p$9629_$1, )) as dc.bool)){
final dc.dynamic test$6=lcoc_core.next(p$9629_$1, );
if(((false != test$6) && (null != test$6))){
map$9630_$2=lcoc_core.seq_to_map_for_destructuring(p$9629_$1, );
}else{
late final dc.dynamic $if_$6;
if((p$9629_$1 is lcoc_core.ISeqable$iface)){
$if_$6=((p$9629_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(p$9629_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(p$9629_$1, ));
}
if(((false != $if_$6) && (null != $if_$6))){
map$9630_$2=lcoc_core.first(p$9629_$1, );
}else{
map$9630_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9630_$2=p$9629_$1;
}
late final dc.dynamic repl_elts$5;
if((map$9630_$2 is lcoc_core.ILookup$iface)){
repl_elts$5=((map$9630_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "repl-elts", 3705923751, ), ));
}else{
repl_elts$5=((lcoc_core.ILookup.extensions(map$9630_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9630_$2, const lcoc_core.Keyword(null, "repl-elts", 3705923751, ), ));
}
if((lcoc_core.$EQ_.$_invoke$2(repl_elts$5, state$9123_$AUTO_$5.latest, ))){
return null;
}
return (state$9123_$AUTO_$5.$_invoke$1(repl_elts$5, ));
}
late final dc.dynamic sub$9127_$AUTO_$3;
if((_1 is lcoc_flutter.Subscribable$iface)){
sub$9127_$AUTO_$3=((_1 as lcoc_flutter.Subscribable$iface).$_subscribe$1(update$9126_$AUTO_$3, ));
}else{
sub$9127_$AUTO_$3=((lcoc_flutter.Subscribable.extensions(_1, ) as lcoc_flutter.Subscribable$ext).$_subscribe$1(_1, update$9126_$AUTO_$3, ));
}
late final dc.dynamic or$6718_$AUTO_$3;
if((_1 is lcoc_flutter.Subscribable$iface)){
or$6718_$AUTO_$3=((_1 as lcoc_flutter.Subscribable$iface).$_call_with_immediate_value$2(sub$9127_$AUTO_$3, update$9126_$AUTO_$3, ));
}else{
or$6718_$AUTO_$3=((lcoc_flutter.Subscribable.extensions(_1, ) as lcoc_flutter.Subscribable$ext).$_call_with_immediate_value$2(_1, sub$9127_$AUTO_$3, update$9126_$AUTO_$3, ));
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

// END watch_repl_hud_M__caaxye$2

// BEGIN widget
lcoc_core.IFn$iface widget=lcoc_flutter.ifn_widget_M__18695hm$1(null, );

// END widget

// BEGIN widget_repl_hud_M__4wk9ma$1
class widget_repl_hud_M__4wk9ma$1 extends f_widgets.StatelessWidget {
final _0;

widget_repl_hud_M__4wk9ma$1(this._0, key$1, ):super(key: key$1, );

f_widgets.Widget build(f_widgets.BuildContext context$9100_$AUTO_$3, ){
return _0;
}
}

// END widget_repl_hud_M__4wk9ma$1

// BEGIN widget_repl_hud_M__4wk9ma$2
class widget_repl_hud_M__4wk9ma$2 extends f_widgets.StatelessWidget {
final lcoc_core.Atom _0;
final _1;
final lcoc_flutter.widget_repl_hud_M__4wk9ma$1 _2;
final f_widgets.BuildContext _3;
final lcoc_flutter.ResourceState _4;
final lcoc_flutter.managed_repl_hud_M__caaxye$2 _5;

widget_repl_hud_M__4wk9ma$2(this._0, this._1, this._2, this._3, this._4, this._5, key$2, ):super(key: key$2, );

f_widgets.Widget build(f_widgets.BuildContext context$9100_$AUTO_$4, ){
final dc.dynamic test$1=(lcoc_flutter.get_of.$_invoke$2(context$9100_$AUTO_$4, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$1) && (null != test$1))){
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(2, const lcoc_core.Keyword(null, "ns", 1494845879, ), ));
(fl$3[1]=(lcoc_core.symbol.$_invoke$2(null, "cljd.flutter", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(1, 8388608, 8388608, fl$3, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "child", )), _1, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), context$9100_$AUTO_$4, (lcoc_core.symbol.$_invoke$2(null, "___9178__auto__", )), _5, (lcoc_core.symbol.$_invoke$2(null, "k__9291__auto__", )), const lcoc_flutter.GlobalValueKey(const lcoc_core.Keyword("cljd.flutter", "app-root", 2193565623, ), ), (lcoc_core.symbol.$_invoke$2(null, "ctx__9180__auto__", )), _3, (lcoc_core.symbol.$_invoke$2(null, "*hud-enabled", )), _0, (lcoc_core.symbol.$_invoke$2(null, "state__9179__auto__", )), _4, ], ));
}, _2, );
}
return _2;
}
}

// END widget_repl_hud_M__4wk9ma$2

// BEGIN widget_repl_hud_M__4wk9ma$3
class widget_repl_hud_M__4wk9ma$3 extends f_widgets.StatelessWidget {
final lcoc_core.Atom _0;
final lcoc_core.Atom _1;
final f_widgets.ValueNotifier<dc.dynamic> _2;
final _3;
final f_widgets.CustomPaint _4;
final _5;
final f_widgets.BuildContext _6;
final f_widgets.ValueNotifier<dc.dynamic> _7;
final dc.dynamic _8;
final lcoc_flutter.WatchState _9;
final _10;
final lcoc_flutter.ResourceState _11;
final lcoc_flutter.watch_repl_hud_M__caaxye$1 _12;
final lcoc_flutter.managed_repl_hud_M__caaxye$4 _13;

widget_repl_hud_M__4wk9ma$3(this._0, this._1, this._2, this._3, this._4, this._5, this._6, this._7, this._8, this._9, this._10, this._11, this._12, this._13, key$3, ):super(key: key$3, );

f_widgets.Widget build(f_widgets.BuildContext context$9100_$AUTO_$8, ){
final dc.dynamic test$2=(lcoc_flutter.get_of.$_invoke$2(context$9100_$AUTO_$8, const lcoc_core.Keyword("cljd.flutter", "repl", 2765474413, ), ));
if(((false != test$2) && (null != test$2))){
final dc.List<dc.dynamic> fl$8=(dc.List<dc.dynamic>.filled(6, const lcoc_core.Keyword(null, "line", 878494669, ), ));
(fl$8[1]=1325);
(fl$8[2]=const lcoc_core.Keyword(null, "column", 3362807310, ));
(fl$8[3]=10);
(fl$8[4]=const lcoc_core.Keyword(null, "ns", 1494845879, ));
(fl$8[5]=(lcoc_core.symbol.$_invoke$2(null, "cljd.flutter", )));
return lcoc_flutter.ReplPointWidget(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(3, 8413184, 8413184, fl$8, ), -1, ), (){
return (lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, <dc.dynamic>[(lcoc_core.symbol.$_invoke$2(null, "___9128__auto__", )), _12, (lcoc_core.symbol.$_invoke$2(null, "child", )), _3, (lcoc_core.symbol.$_invoke$2(null, "ctx__9130__auto__", )), _5, (lcoc_core.symbol.$_invoke$2(null, "notifier__9390__auto__", )), _7, (lcoc_core.symbol.$_invoke$2(null, "state__9129__auto__", )), _10, (lcoc_core.symbol.$_invoke$2(null, "state__9123__auto__", )), _9, (lcoc_core.symbol.$_invoke$2(null, "context__9100__auto__", )), context$9100_$AUTO_$8, (lcoc_core.symbol.$_invoke$2(null, "___9178__auto__", )), _13, (lcoc_core.symbol.$_invoke$2(null, "*rects", )), _2, (lcoc_core.symbol.$_invoke$2(null, "*hud-state", )), _1, (lcoc_core.symbol.$_invoke$2(null, "ctx__9180__auto__", )), _6, (lcoc_core.symbol.$_invoke$2(null, "set-env", )), _8, (lcoc_core.symbol.$_invoke$2(null, "*hud-enabled", )), _0, (lcoc_core.symbol.$_invoke$2(null, "state__9179__auto__", )), _11, ], ));
}, _4, );
}
return _4;
}
}

// END widget_repl_hud_M__4wk9ma$3

// BEGIN with-notifier
dc.dynamic with_notifier(dc.dynamic $AMPERSAND_form$1, dc.dynamic $AMPERSAND_env$1, dc.dynamic p$9642_$1, dc.dynamic child_prop$1, dc.dynamic child$1, ){
late final dc.dynamic seq$9644_$1;
if((p$9642_$1 is lcoc_core.ISeqable$iface)){
seq$9644_$1=((p$9642_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
seq$9644_$1=((lcoc_core.ISeqable.extensions(p$9642_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(p$9642_$1, ));
}
final dc.dynamic first$9645_$1=lcoc_core.first(seq$9644_$1, );
final dc.dynamic seq$9644_$2=lcoc_core.next(seq$9644_$1, );
final dc.dynamic name$1=(lcoc_core.nth.$_invoke$3(first$9645_$1, 0, null, ));
final dc.dynamic init$1=(lcoc_core.nth.$_invoke$3(first$9645_$1, 1, null, ));
final lcoc_core.PersistentVector body$2=lcoc_core.vec(seq$9644_$2, );
final dc.dynamic expr$1=lcoc_core.peek(body$2, );
final dc.dynamic body$3=lcoc_core.pop(body$2, );
final dc.dynamic arg$9=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "widget", )), ));
final dc.dynamic arg$8=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "managed", 1332085626, ), ));
final dc.dynamic arg$3=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "notifier__9641__auto__", )), ));
final dc.dynamic arg$2=(lcoc_core.symbol.$_invoke$2("\$lib:f_widgets", "ValueNotifier", ));
final dc.dynamic arg$1=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "type-params", 3003227952, ), ));
final dc.dynamic o6974$2=(lcoc_core.concat.$_invoke$1((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("dart:core", "dynamic", )), )), ));
late final dc.dynamic $if_$1;
if((o6974$2 is lcoc_core.ISeqable$iface)){
$if_$1=((o6974$2 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(o6974$2, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$2, ));
}
final dc.dynamic $1=(lcoc_core.list.$_invoke$1($if_$1, ));
final dc.dynamic o6974$3=(lcoc_core.concat.$_invoke$2(arg$1, $1, ));
late final dc.dynamic $if_$2;
if((o6974$3 is lcoc_core.ISeqable$iface)){
$if_$2=((o6974$3 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$2=((lcoc_core.ISeqable.extensions(o6974$3, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$3, ));
}
final dc.dynamic $2=(lcoc_core.apply.$_invoke$2(lcoc_core.hash_map, $if_$2, ));
final dc.dynamic $3=lcoc_core.with_meta(arg$2, $2, );
final dc.dynamic $4=(lcoc_core.list.$_invoke$1($3, ));
final dc.dynamic o6974$4=(lcoc_core.concat.$_invoke$2($4, (lcoc_core.list.$_invoke$1(init$1, )), ));
late final dc.dynamic $if_$3;
if((o6974$4 is lcoc_core.ISeqable$iface)){
$if_$3=((o6974$4 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$3=((lcoc_core.ISeqable.extensions(o6974$4, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$4, ));
}
final dc.dynamic $5=(lcoc_core.list.$_invoke$1($if_$3, ));
final dc.dynamic o6974$5=(lcoc_core.concat.$_invoke$2(arg$3, $5, ));
late final dc.dynamic $if_$4;
if((o6974$5 is lcoc_core.ISeqable$iface)){
$if_$4=((o6974$5 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$4=((lcoc_core.ISeqable.extensions(o6974$5, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$5, ));
}
final dc.dynamic $6=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$4, ));
final dc.dynamic $13=(lcoc_core.list.$_invoke$1($6, ));
final dc.dynamic arg$7=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "let", 928173128, ), ));
final dc.dynamic o6974$6=(lcoc_core.concat.$_invoke$2((lcoc_core.list.$_invoke$1(name$1, )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "notifier__9641__auto__", )), )), ));
late final dc.dynamic $if_$5;
if((o6974$6 is lcoc_core.ISeqable$iface)){
$if_$5=((o6974$6 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$5=((lcoc_core.ISeqable.extensions(o6974$6, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$6, ));
}
final dc.dynamic $7=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$5, ));
final dc.dynamic $12=(lcoc_core.list.$_invoke$1($7, ));
final dc.dynamic arg$6=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "widget", )), ));
final dc.dynamic arg$5=(lcoc_core.list.$_invoke$1(const lcoc_core.Keyword(null, "let", 928173128, ), ));
final dc.dynamic arg$4=(lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.flutter", "_", )), ));
final dc.dynamic o6974$7=(lcoc_core.concat.$_invoke$3((lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2("cljd.core", "reset!", )), )), (lcoc_core.list.$_invoke$1((lcoc_core.symbol.$_invoke$2(null, "notifier__9641__auto__", )), )), (lcoc_core.list.$_invoke$1(expr$1, )), ));
late final dc.dynamic $if_$6;
if((o6974$7 is lcoc_core.ISeqable$iface)){
$if_$6=((o6974$7 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$6=((lcoc_core.ISeqable.extensions(o6974$7, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$7, ));
}
final dc.dynamic $8=(lcoc_core.list.$_invoke$1($if_$6, ));
final dc.dynamic o6974$8=(lcoc_core.concat.$_invoke$2(arg$4, $8, ));
late final dc.dynamic $if_$7;
if((o6974$8 is lcoc_core.ISeqable$iface)){
$if_$7=((o6974$8 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$7=((lcoc_core.ISeqable.extensions(o6974$8, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$8, ));
}
final dc.dynamic $9=(lcoc_core.apply.$_invoke$2(lcoc_core.vector, $if_$7, ));
final dc.dynamic $10=(lcoc_core.list.$_invoke$1($9, ));
final dc.dynamic o6974$9=(lcoc_core.concat.$_invoke$4(arg$6, body$3, arg$5, $10, ));
late final dc.dynamic $if_$8;
if((o6974$9 is lcoc_core.ISeqable$iface)){
$if_$8=((o6974$9 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$8=((lcoc_core.ISeqable.extensions(o6974$9, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$9, ));
}
final dc.dynamic $11=(lcoc_core.list.$_invoke$1($if_$8, ));
final dc.dynamic o6974$10=(lcoc_core.concat.$_invoke$8(arg$9, arg$8, $13, arg$7, $12, $11, (lcoc_core.list.$_invoke$1(child_prop$1, )), (lcoc_core.list.$_invoke$1(child$1, )), ));
if((o6974$10 is lcoc_core.ISeqable$iface)){
return ((o6974$10 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$10, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$10, ));
}

// END with-notifier
