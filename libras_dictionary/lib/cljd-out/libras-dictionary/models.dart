// ignore_for_file: type=lint, unnecessary_cast, unnecessary_type_check, unused_import, unused_local_variable, unused_label, unnecessary_question_mark, unused_catch_clause, type_check_with_null, dead_code
import "dart:core" as dc;
import "models.dart" as lcold_models;
import "../cljd/core.dart" as lcoc_core;
import "dart:collection" as d_collection;

// BEGIN ->DictItem
lcold_models.DictItem $_$GT_DictItem(dc.dynamic title$1, dc.dynamic description$1, dc.dynamic exemplo$1, dc.dynamic libras$1, dc.dynamic video_url$1, dc.dynamic image_url$1, dc.dynamic youtube_id$1, dc.dynamic link$1, dc.dynamic source$1, ){
return lcold_models.DictItem(title$1, description$1, exemplo$1, libras$1, video_url$1, image_url$1, youtube_id$1, link$1, source$1, null, (lcoc_core.$_EMPTY_MAP as dc.Map), -1, );
}

// END ->DictItem

// BEGIN DictItem
class DictItem<K, V> extends dc.Object with lcoc_core.EqualsEquivMixin, d_collection.MapMixin<K, V>, lcoc_core.ToStringMixin implements lcoc_core.IRecord$iface, lcoc_core.IEquiv$iface, lcoc_core.IMap$iface, lcoc_core.ISeqable$iface, lcoc_core.IAssociative$iface, lcoc_core.ILookup$iface, lcoc_core.ICounted$iface, lcoc_core.ICollection$iface, lcoc_core.IWithMeta$iface, lcoc_core.IMeta$iface, lcoc_core.IKVReduce$iface, lcoc_core.IHash$iface, lcoc_core.IPrint$iface {
final title;
final description;
final exemplo;
final libras;
final video_url;
final image_url;
final youtube_id;
final link;
final source;
final meta$7946_$AUTO_;
final dc.Map extmap$7945_$AUTO_;
dc.int hash$7947_$AUTO_;

DictItem(this.title, this.description, this.exemplo, this.libras, this.video_url, this.image_url, this.youtube_id, this.link, this.source, this.meta$7946_$AUTO_, this.extmap$7945_$AUTO_, this.hash$7947_$AUTO_, ):super();

dc.dynamic $_equiv$1(dc.dynamic other9674$1, ){
final dc.bool or$6718_$AUTO_$1=dc.identical((this as dc.Object?), other9674$1, );
if(or$6718_$AUTO_$1){
return or$6718_$AUTO_$1;
}
final dc.bool and$6836_$AUTO_$1=(other9674$1 is lcold_models.DictItem);
if(and$6836_$AUTO_$1){
final lcold_models.DictItem other9674$2=(other9674$1 as lcold_models.DictItem);
final dc.bool or$6718_$AUTO_$2=(-1 == hash$7947_$AUTO_);
late final dc.bool and$6836_$AUTO_$2;
if(or$6718_$AUTO_$2){
and$6836_$AUTO_$2=or$6718_$AUTO_$2;
}else{
final dc.bool or$6718_$AUTO_$3=(-1 == other9674$2.hash$7947_$AUTO_);
if(or$6718_$AUTO_$3){
and$6836_$AUTO_$2=or$6718_$AUTO_$3;
}else{
and$6836_$AUTO_$2=(hash$7947_$AUTO_ == other9674$2.hash$7947_$AUTO_);
}
}
if(and$6836_$AUTO_$2){
final dc.bool and$6836_$AUTO_$3=(lcoc_core.$EQ_.$_invoke$2(title, (const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(other9674$2, )), ));
if(and$6836_$AUTO_$3){
final dc.bool and$6836_$AUTO_$4=(lcoc_core.$EQ_.$_invoke$2(description, (const lcoc_core.Keyword(null, "description", 1880444823, ).$_invoke$1(other9674$2, )), ));
if(and$6836_$AUTO_$4){
final dc.bool and$6836_$AUTO_$5=(lcoc_core.$EQ_.$_invoke$2(exemplo, (const lcoc_core.Keyword(null, "exemplo", 261906216, ).$_invoke$1(other9674$2, )), ));
if(and$6836_$AUTO_$5){
final dc.bool and$6836_$AUTO_$6=(lcoc_core.$EQ_.$_invoke$2(libras, (const lcoc_core.Keyword(null, "libras", 154282157, ).$_invoke$1(other9674$2, )), ));
if(and$6836_$AUTO_$6){
final dc.bool and$6836_$AUTO_$7=(lcoc_core.$EQ_.$_invoke$2(video_url, (const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(other9674$2, )), ));
if(and$6836_$AUTO_$7){
final dc.bool and$6836_$AUTO_$8=(lcoc_core.$EQ_.$_invoke$2(image_url, (const lcoc_core.Keyword(null, "image-url", 2752788238, ).$_invoke$1(other9674$2, )), ));
if(and$6836_$AUTO_$8){
final dc.bool and$6836_$AUTO_$9=(lcoc_core.$EQ_.$_invoke$2(youtube_id, (const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(other9674$2, )), ));
if(and$6836_$AUTO_$9){
final dc.bool and$6836_$AUTO_$10=(lcoc_core.$EQ_.$_invoke$2(link, (const lcoc_core.Keyword(null, "link", 1569434702, ).$_invoke$1(other9674$2, )), ));
if(and$6836_$AUTO_$10){
final dc.bool and$6836_$AUTO_$11=(lcoc_core.$EQ_.$_invoke$2(source, (const lcoc_core.Keyword(null, "source", 10120462, ).$_invoke$1(other9674$2, )), ));
if(and$6836_$AUTO_$11){
return (lcoc_core.$EQ_.$_invoke$2(extmap$7945_$AUTO_, other9674$2.extmap$7945_$AUTO_, ));
}
return and$6836_$AUTO_$11;
}
return and$6836_$AUTO_$10;
}
return and$6836_$AUTO_$9;
}
return and$6836_$AUTO_$8;
}
return and$6836_$AUTO_$7;
}
return and$6836_$AUTO_$6;
}
return and$6836_$AUTO_$5;
}
return and$6836_$AUTO_$4;
}
return and$6836_$AUTO_$3;
}
return and$6836_$AUTO_$2;
}
return and$6836_$AUTO_$1;
}

dc.dynamic $_dissoc$1(dc.dynamic k$7949_$AUTO_$1, ){
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(11, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$1[1]=const lcoc_core.Keyword(null, "youtube-id", 605402307, ));
(fl$1[2]=const lcoc_core.Keyword(null, "exemplo", 261906216, ));
(fl$1[3]=const lcoc_core.Keyword(null, "exemplo", 261906216, ));
(fl$1[4]=const lcoc_core.Keyword(null, "libras", 154282157, ));
(fl$1[5]=const lcoc_core.Keyword(null, "libras", 154282157, ));
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "link", 1569434702, ), ));
(fl$2[1]=const lcoc_core.Keyword(null, "link", 1569434702, ));
(fl$2[2]=const lcoc_core.Keyword(null, "source", 10120462, ));
(fl$2[3]=const lcoc_core.Keyword(null, "source", 10120462, ));
(fl$2[4]=const lcoc_core.Keyword(null, "image-url", 2752788238, ));
(fl$2[5]=const lcoc_core.Keyword(null, "image-url", 2752788238, ));
(fl$2[6]=const lcoc_core.Keyword(null, "title", 3035382670, ));
(fl$2[7]=const lcoc_core.Keyword(null, "title", 3035382670, ));
(fl$1[6]=lcoc_core.BitmapNode(4, 285212932, 285212932, fl$2, ));
(fl$1[7]=const lcoc_core.Keyword(null, "video-url", 3045839472, ));
(fl$1[8]=const lcoc_core.Keyword(null, "video-url", 3045839472, ));
(fl$1[9]=const lcoc_core.Keyword(null, "description", 1880444823, ));
(fl$1[10]=const lcoc_core.Keyword(null, "description", 1880444823, ));
final lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic> cast$1=(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(9, 8478984, 8462600, fl$1, ), -1, ) as lcoc_core.PersistentHashMap<dc.dynamic, dc.dynamic>);
final dc.bool $1=lcoc_core.contains$QMARK_(lcoc_core.PersistentHashSet(null, cast$1, -1, ), k$7949_$AUTO_$1, );
if($1){
return (lcoc_core.dissoc.$_invoke$2(lcoc_core.with_meta((lcoc_core.into.$_invoke$2(lcoc_core.$_EMPTY_MAP, this, )), meta$7946_$AUTO_, ), k$7949_$AUTO_$1, ));
}
final dc.dynamic or$6718_$AUTO_$4=(lcoc_core.dissoc.$_invoke$2(extmap$7945_$AUTO_, k$7949_$AUTO_$1, ));
late final dc.Map cast$2;
if(((false != or$6718_$AUTO_$4) && (null != or$6718_$AUTO_$4))){
cast$2=(or$6718_$AUTO_$4 as dc.Map);
}else{
cast$2=(lcoc_core.$_EMPTY_MAP as dc.Map);
}
return lcold_models.DictItem(title, description, exemplo, libras, video_url, image_url, youtube_id, link, source, meta$7946_$AUTO_, cast$2, -1, );
}

dc.dynamic $_seq$0(){
final lcoc_core.VectorNode arg$1=lcoc_core.$_EMPTY_VECTOR.root;
final dc.List<dc.dynamic> fl$3=(dc.List<dc.dynamic>.filled(9, dc.MapEntry(const lcoc_core.Keyword(null, "title", 3035382670, ), title, ), ));
(fl$3[1]=dc.MapEntry(const lcoc_core.Keyword(null, "description", 1880444823, ), description, ));
(fl$3[2]=dc.MapEntry(const lcoc_core.Keyword(null, "exemplo", 261906216, ), exemplo, ));
(fl$3[3]=dc.MapEntry(const lcoc_core.Keyword(null, "libras", 154282157, ), libras, ));
(fl$3[4]=dc.MapEntry(const lcoc_core.Keyword(null, "video-url", 3045839472, ), video_url, ));
(fl$3[5]=dc.MapEntry(const lcoc_core.Keyword(null, "image-url", 2752788238, ), image_url, ));
(fl$3[6]=dc.MapEntry(const lcoc_core.Keyword(null, "youtube-id", 605402307, ), youtube_id, ));
(fl$3[7]=dc.MapEntry(const lcoc_core.Keyword(null, "link", 1569434702, ), link, ));
(fl$3[8]=dc.MapEntry(const lcoc_core.Keyword(null, "source", 10120462, ), source, ));
final dc.dynamic o6974$1=(lcoc_core.concat.$_invoke$2(lcoc_core.PersistentVector(null, 9, 5, arg$1, fl$3, -1, ), extmap$7945_$AUTO_, ));
if((o6974$1 is lcoc_core.ISeqable$iface)){
return ((o6974$1 as lcoc_core.ISeqable$iface).$_seq$0());
}
return ((lcoc_core.ISeqable.extensions(o6974$1, ) as lcoc_core.ISeqable$ext).$_seq$0(o6974$1, ));
}

dc.dynamic $_assoc$2(dc.dynamic k$7954_$AUTO_$1, dc.dynamic val$7952_$AUTO_$1, ){
late final dc.int hash$1;
if((k$7954_$AUTO_$1 is lcoc_core.IHash$iface)){
hash$1=(((k$7954_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$1=(((lcoc_core.IHash.extensions(k$7954_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(k$7954_$AUTO_$1, )) as dc.int);
}
switch(hash$1){
case 1569434702:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "link", 1569434702, ), k$7954_$AUTO_$1, ))){
return lcold_models.DictItem(title, description, exemplo, libras, video_url, image_url, youtube_id, val$7952_$AUTO_$1, source, meta$7946_$AUTO_, extmap$7945_$AUTO_, -1, );
}
continue _default$1;
case 10120462:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "source", 10120462, ), k$7954_$AUTO_$1, ))){
return lcold_models.DictItem(title, description, exemplo, libras, video_url, image_url, youtube_id, link, val$7952_$AUTO_$1, meta$7946_$AUTO_, extmap$7945_$AUTO_, -1, );
}
continue _default$1;
case 261906216:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "exemplo", 261906216, ), k$7954_$AUTO_$1, ))){
return lcold_models.DictItem(title, description, val$7952_$AUTO_$1, libras, video_url, image_url, youtube_id, link, source, meta$7946_$AUTO_, extmap$7945_$AUTO_, -1, );
}
continue _default$1;
case 1880444823:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "description", 1880444823, ), k$7954_$AUTO_$1, ))){
return lcold_models.DictItem(title, val$7952_$AUTO_$1, exemplo, libras, video_url, image_url, youtube_id, link, source, meta$7946_$AUTO_, extmap$7945_$AUTO_, -1, );
}
continue _default$1;
case 3035382670:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "title", 3035382670, ), k$7954_$AUTO_$1, ))){
return lcold_models.DictItem(val$7952_$AUTO_$1, description, exemplo, libras, video_url, image_url, youtube_id, link, source, meta$7946_$AUTO_, extmap$7945_$AUTO_, -1, );
}
continue _default$1;
case 154282157:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "libras", 154282157, ), k$7954_$AUTO_$1, ))){
return lcold_models.DictItem(title, description, exemplo, val$7952_$AUTO_$1, video_url, image_url, youtube_id, link, source, meta$7946_$AUTO_, extmap$7945_$AUTO_, -1, );
}
continue _default$1;
case 605402307:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "youtube-id", 605402307, ), k$7954_$AUTO_$1, ))){
return lcold_models.DictItem(title, description, exemplo, libras, video_url, image_url, val$7952_$AUTO_$1, link, source, meta$7946_$AUTO_, extmap$7945_$AUTO_, -1, );
}
continue _default$1;
case 2752788238:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "image-url", 2752788238, ), k$7954_$AUTO_$1, ))){
return lcold_models.DictItem(title, description, exemplo, libras, video_url, val$7952_$AUTO_$1, youtube_id, link, source, meta$7946_$AUTO_, extmap$7945_$AUTO_, -1, );
}
continue _default$1;
case 3045839472:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "video-url", 3045839472, ), k$7954_$AUTO_$1, ))){
return lcold_models.DictItem(title, description, exemplo, libras, val$7952_$AUTO_$1, image_url, youtube_id, link, source, meta$7946_$AUTO_, extmap$7945_$AUTO_, -1, );
}
continue _default$1;
_default$1: default:
late final dc.Map cast$3;
if((extmap$7945_$AUTO_ is lcoc_core.IAssociative$iface)){
cast$3=(((extmap$7945_$AUTO_ as lcoc_core.IAssociative$iface).$_assoc$2(k$7954_$AUTO_$1, val$7952_$AUTO_$1, )) as dc.Map);
}else{
cast$3=(((lcoc_core.IAssociative.extensions(extmap$7945_$AUTO_, ) as lcoc_core.IAssociative$ext).$_assoc$2(extmap$7945_$AUTO_, k$7954_$AUTO_$1, val$7952_$AUTO_$1, )) as dc.Map);
}
return lcold_models.DictItem(title, description, exemplo, libras, video_url, image_url, youtube_id, link, source, meta$7946_$AUTO_, cast$3, -1, );
}
}

dc.dynamic $_contains_key$QMARK_$1(dc.dynamic key$7944_$AUTO_$1, ){
late final dc.int hash$2;
if((key$7944_$AUTO_$1 is lcoc_core.IHash$iface)){
hash$2=(((key$7944_$AUTO_$1 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$2=(((lcoc_core.IHash.extensions(key$7944_$AUTO_$1, ) as lcoc_core.IHash$ext).$_hash$0(key$7944_$AUTO_$1, )) as dc.int);
}
switch(hash$2){
case 1569434702:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "link", 1569434702, ), key$7944_$AUTO_$1, ))){
return true;
}
continue _default$2;
case 10120462:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "source", 10120462, ), key$7944_$AUTO_$1, ))){
return true;
}
continue _default$2;
case 261906216:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "exemplo", 261906216, ), key$7944_$AUTO_$1, ))){
return true;
}
continue _default$2;
case 1880444823:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "description", 1880444823, ), key$7944_$AUTO_$1, ))){
return true;
}
continue _default$2;
case 3035382670:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "title", 3035382670, ), key$7944_$AUTO_$1, ))){
return true;
}
continue _default$2;
case 154282157:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "libras", 154282157, ), key$7944_$AUTO_$1, ))){
return true;
}
continue _default$2;
case 605402307:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "youtube-id", 605402307, ), key$7944_$AUTO_$1, ))){
return true;
}
continue _default$2;
case 2752788238:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "image-url", 2752788238, ), key$7944_$AUTO_$1, ))){
return true;
}
continue _default$2;
case 3045839472:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "video-url", 3045839472, ), key$7944_$AUTO_$1, ))){
return true;
}
continue _default$2;
_default$2: default:
return lcoc_core.contains$QMARK_(extmap$7945_$AUTO_, key$7944_$AUTO_$1, );
}
}

dc.dynamic $_lookup$1(dc.dynamic key$7944_$AUTO_$2, ){
if((this is lcoc_core.ILookup$iface)){
return ((this as lcoc_core.ILookup$iface).$_lookup$2(key$7944_$AUTO_$2, null, ));
}
return ((lcoc_core.ILookup.extensions(this, ) as lcoc_core.ILookup$ext).$_lookup$2(this, key$7944_$AUTO_$2, null, ));
}

dc.dynamic $_lookup$2(dc.dynamic key$7944_$AUTO_$3, dc.dynamic not_found$7958_$AUTO_$1, ){
late final dc.int hash$3;
if((key$7944_$AUTO_$3 is lcoc_core.IHash$iface)){
hash$3=(((key$7944_$AUTO_$3 as lcoc_core.IHash$iface).$_hash$0()) as dc.int);
}else{
hash$3=(((lcoc_core.IHash.extensions(key$7944_$AUTO_$3, ) as lcoc_core.IHash$ext).$_hash$0(key$7944_$AUTO_$3, )) as dc.int);
}
switch(hash$3){
case 1569434702:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "link", 1569434702, ), key$7944_$AUTO_$3, ))){
return link;
}
continue _default$3;
case 10120462:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "source", 10120462, ), key$7944_$AUTO_$3, ))){
return source;
}
continue _default$3;
case 261906216:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "exemplo", 261906216, ), key$7944_$AUTO_$3, ))){
return exemplo;
}
continue _default$3;
case 1880444823:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "description", 1880444823, ), key$7944_$AUTO_$3, ))){
return description;
}
continue _default$3;
case 3035382670:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "title", 3035382670, ), key$7944_$AUTO_$3, ))){
return title;
}
continue _default$3;
case 154282157:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "libras", 154282157, ), key$7944_$AUTO_$3, ))){
return libras;
}
continue _default$3;
case 605402307:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "youtube-id", 605402307, ), key$7944_$AUTO_$3, ))){
return youtube_id;
}
continue _default$3;
case 2752788238:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "image-url", 2752788238, ), key$7944_$AUTO_$3, ))){
return image_url;
}
continue _default$3;
case 3045839472:
if((lcoc_core.$EQ_.$_invoke$2(const lcoc_core.Keyword(null, "video-url", 3045839472, ), key$7944_$AUTO_$3, ))){
return video_url;
}
continue _default$3;
_default$3: default:
if((extmap$7945_$AUTO_ is lcoc_core.ILookup$iface)){
return ((extmap$7945_$AUTO_ as lcoc_core.ILookup$iface).$_lookup$2(key$7944_$AUTO_$3, not_found$7958_$AUTO_$1, ));
}
return ((lcoc_core.ILookup.extensions(extmap$7945_$AUTO_, ) as lcoc_core.ILookup$ext).$_lookup$2(extmap$7945_$AUTO_, key$7944_$AUTO_$3, not_found$7958_$AUTO_$1, ));
}
}

dc.dynamic $_count$0(){
return (9 + extmap$7945_$AUTO_.length);
}

dc.dynamic $_conj$1(dc.dynamic o$7961_$AUTO_$1, ){
final dc.bool and$6836_$AUTO_$12=lcoc_core.vector$QMARK_(o$7961_$AUTO_$1, );
late final dc.bool $if_$2;
if(and$6836_$AUTO_$12){
late final dc.dynamic $if_$1;
if((o$7961_$AUTO_$1 is lcoc_core.ICounted$iface)){
$if_$1=((o$7961_$AUTO_$1 as lcoc_core.ICounted$iface).$_count$0());
}else{
$if_$1=((lcoc_core.ICounted.extensions(o$7961_$AUTO_$1, ) as lcoc_core.ICounted$ext).$_count$0(o$7961_$AUTO_$1, ));
}
$if_$2=($if_$1 == 2);
}else{
$if_$2=and$6836_$AUTO_$12;
}
if($if_$2){
late final dc.dynamic k7097$2;
if((o$7961_$AUTO_$1 is lcoc_core.IIndexed$iface)){
k7097$2=((o$7961_$AUTO_$1 as lcoc_core.IIndexed$iface).$_nth$1(0, ));
}else{
k7097$2=((lcoc_core.IIndexed.extensions(o$7961_$AUTO_$1, ) as lcoc_core.IIndexed$ext).$_nth$1(o$7961_$AUTO_$1, 0, ));
}
late final dc.dynamic v7098$2;
if((o$7961_$AUTO_$1 is lcoc_core.IIndexed$iface)){
v7098$2=((o$7961_$AUTO_$1 as lcoc_core.IIndexed$iface).$_nth$1(1, ));
}else{
v7098$2=((lcoc_core.IIndexed.extensions(o$7961_$AUTO_$1, ) as lcoc_core.IIndexed$ext).$_nth$1(o$7961_$AUTO_$1, 1, ));
}
if((this is lcoc_core.IAssociative$iface)){
return ((this as lcoc_core.IAssociative$iface).$_assoc$2(k7097$2, v7098$2, ));
}
return ((lcoc_core.IAssociative.extensions(this, ) as lcoc_core.IAssociative$ext).$_assoc$2(this, k7097$2, v7098$2, ));
}
final dc.Function f7029$1=lcoc_core.$_conj;
if((o$7961_$AUTO_$1 is lcoc_core.IReduce$iface)){
return ((o$7961_$AUTO_$1 as lcoc_core.IReduce$iface).$_reduce$2(f7029$1, this, ));
}
return ((lcoc_core.IReduce.extensions(o$7961_$AUTO_$1, ) as lcoc_core.IReduce$ext).$_reduce$2(o$7961_$AUTO_$1, f7029$1, this, ));
}

dc.dynamic $_with_meta$1(dc.dynamic meta$7963_$AUTO_$1, ){
return lcold_models.DictItem(title, description, exemplo, libras, video_url, image_url, youtube_id, link, source, meta$7963_$AUTO_$1, extmap$7945_$AUTO_, hash$7947_$AUTO_, );
}

dc.dynamic $_meta$0(){
return meta$7946_$AUTO_;
}

dc.dynamic $_kv_reduce$2(dc.dynamic f$7966_$AUTO_$1, dc.dynamic init$7967_$AUTO_$1, ){
dc.dynamic f7029$2(dc.dynamic ret$7968_$AUTO_$1, dc.dynamic p$9675_$1, ){
final dc.dynamic k$7969_$AUTO_$1=(lcoc_core.nth.$_invoke$3(p$9675_$1, 0, null, ));
final dc.dynamic v$7970_$AUTO_$1=(lcoc_core.nth.$_invoke$3(p$9675_$1, 1, null, ));
if((f$7966_$AUTO_$1 is dc.Function)){
return (f$7966_$AUTO_$1 as dc.Function)(ret$7968_$AUTO_$1, k$7969_$AUTO_$1, v$7970_$AUTO_$1, );
}
if((f$7966_$AUTO_$1 is lcoc_core.IFn$iface)){
return ((f$7966_$AUTO_$1 as lcoc_core.IFn$iface).$_invoke$3(ret$7968_$AUTO_$1, k$7969_$AUTO_$1, v$7970_$AUTO_$1, ));
}
return (lcoc_core.IFn.extensions(f$7966_$AUTO_$1, ).$_invoke$3(f$7966_$AUTO_$1, ret$7968_$AUTO_$1, k$7969_$AUTO_$1, v$7970_$AUTO_$1, ));
}
if((this is lcoc_core.IReduce$iface)){
return ((this as lcoc_core.IReduce$iface).$_reduce$2(f7029$2, init$7967_$AUTO_$1, ));
}
return ((lcoc_core.IReduce.extensions(this, ) as lcoc_core.IReduce$ext).$_reduce$2(this, f7029$2, init$7967_$AUTO_$1, ));
}

dc.Iterable<dc.MapEntry<K, V>> get entries{
final dc.List<dc.dynamic> fl$4=(dc.List<dc.dynamic>.filled(9, dc.MapEntry(const lcoc_core.Keyword(null, "title", 3035382670, ), title, ), ));
(fl$4[1]=dc.MapEntry(const lcoc_core.Keyword(null, "description", 1880444823, ), description, ));
(fl$4[2]=dc.MapEntry(const lcoc_core.Keyword(null, "exemplo", 261906216, ), exemplo, ));
(fl$4[3]=dc.MapEntry(const lcoc_core.Keyword(null, "libras", 154282157, ), libras, ));
(fl$4[4]=dc.MapEntry(const lcoc_core.Keyword(null, "video-url", 3045839472, ), video_url, ));
(fl$4[5]=dc.MapEntry(const lcoc_core.Keyword(null, "image-url", 2752788238, ), image_url, ));
(fl$4[6]=dc.MapEntry(const lcoc_core.Keyword(null, "youtube-id", 605402307, ), youtube_id, ));
(fl$4[7]=dc.MapEntry(const lcoc_core.Keyword(null, "link", 1569434702, ), link, ));
(fl$4[8]=dc.MapEntry(const lcoc_core.Keyword(null, "source", 10120462, ), source, ));
final dc.Iterable<dc.dynamic> $2=(fl$4.followedBy(extmap$7945_$AUTO_.entries, ));
return ($2.cast<dc.MapEntry<K, V>>());
}

dc.Iterable<K> get keys{
final dc.List<dc.dynamic> fl$5=(dc.List<dc.dynamic>.filled(9, const lcoc_core.Keyword(null, "title", 3035382670, ), ));
(fl$5[1]=const lcoc_core.Keyword(null, "description", 1880444823, ));
(fl$5[2]=const lcoc_core.Keyword(null, "exemplo", 261906216, ));
(fl$5[3]=const lcoc_core.Keyword(null, "libras", 154282157, ));
(fl$5[4]=const lcoc_core.Keyword(null, "video-url", 3045839472, ));
(fl$5[5]=const lcoc_core.Keyword(null, "image-url", 2752788238, ));
(fl$5[6]=const lcoc_core.Keyword(null, "youtube-id", 605402307, ));
(fl$5[7]=const lcoc_core.Keyword(null, "link", 1569434702, ));
(fl$5[8]=const lcoc_core.Keyword(null, "source", 10120462, ));
final dc.Iterable<dc.dynamic> $3=(fl$5.followedBy(extmap$7945_$AUTO_.keys, ));
return ($3.cast<K>());
}

dc.Iterable<V> get values{
final dc.List<dc.dynamic> fl$6=(dc.List<dc.dynamic>.filled(9, title, ));
(fl$6[1]=description);
(fl$6[2]=exemplo);
(fl$6[3]=libras);
(fl$6[4]=video_url);
(fl$6[5]=image_url);
(fl$6[6]=youtube_id);
(fl$6[7]=link);
(fl$6[8]=source);
final dc.Iterable<dc.dynamic> $4=(fl$6.followedBy(extmap$7945_$AUTO_.values, ));
return ($4.cast<V>());
}

V? operator [](dc.Object? k$7976_$AUTO_$1, ){
if((this is lcoc_core.ILookup$iface)){
return ((this as lcoc_core.ILookup$iface).$_lookup$2(k$7976_$AUTO_$1, null, ));
}
return ((lcoc_core.ILookup.extensions(this, ) as lcoc_core.ILookup$ext).$_lookup$2(this, k$7976_$AUTO_$1, null, ));
}

void operator []=(K key$7978_$AUTO_$1, V val$7979_$AUTO_$1, ){
throw dc.UnsupportedError("[]= not supported on defrecord", );
}

V? remove(dc.Object? val$7981_$AUTO_$1, ){
throw dc.UnsupportedError("remove not supported on defrecord", );
}

void clear(){
throw dc.UnsupportedError("clear not supported on defrecord", );
}

lcold_models.DictItem<RK, RV> cast<RK, RV>(){
return lcold_models.DictItem<RK, RV>(title, description, exemplo, libras, video_url, image_url, youtube_id, link, source, meta$7946_$AUTO_, extmap$7945_$AUTO_, hash$7947_$AUTO_, );
}

dc.dynamic $_hash$0(){
final dc.int h$7614_$AUTO_$1=hash$7947_$AUTO_;
if((h$7614_$AUTO_$1 < 0)){
final dc.int h$7614_$AUTO_$2=(-856567172 ^ lcoc_core.hash_unordered_coll(this, ));
hash$7947_$AUTO_=h$7614_$AUTO_$2;
return h$7614_$AUTO_$2;
}
return h$7614_$AUTO_$1;
}

dc.dynamic $_print$1(dc.dynamic sink$7986_$AUTO_$1, ){
return lcoc_core.print_map(this, sink$7986_$AUTO_$1, );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END DictItem

// BEGIN ifn_make_dict_item_M__18695hm$1
class ifn_make_dict_item_M__18695hm$1 extends dc.Object with lcoc_core.IFnMixin_Z implements lcoc_core.IMeta$iface, lcoc_core.IWithMeta$iface, lcoc_core.Fn$iface, lcoc_core.IFn$iface {
final meta$1;

ifn_make_dict_item_M__18695hm$1(this.meta$1, ):super();

dc.dynamic $_meta$0(){
return meta$1;
}

dc.dynamic $_with_meta$1(dc.dynamic m$2647_$AUTO_$1, ){
return lcold_models.ifn_make_dict_item_M__18695hm$1(m$2647_$AUTO_$1, );
}

dc.dynamic $_invoke$vararg(dc.dynamic p$9679_$1, ){
late final dc.dynamic map$9681_$2;
if(((lcoc_core.ISeq.satisfies(p$9679_$1, )) as dc.bool)){
final dc.dynamic test$1=lcoc_core.next(p$9679_$1, );
if(((false != test$1) && (null != test$1))){
map$9681_$2=lcoc_core.seq_to_map_for_destructuring(p$9679_$1, );
}else{
late final dc.dynamic $if_$1;
if((p$9679_$1 is lcoc_core.ISeqable$iface)){
$if_$1=((p$9679_$1 as lcoc_core.ISeqable$iface).$_seq$0());
}else{
$if_$1=((lcoc_core.ISeqable.extensions(p$9679_$1, ) as lcoc_core.ISeqable$ext).$_seq$0(p$9679_$1, ));
}
if(((false != $if_$1) && (null != $if_$1))){
map$9681_$2=lcoc_core.first(p$9679_$1, );
}else{
map$9681_$2=lcoc_core.$_EMPTY_MAP;
}
}
}else{
map$9681_$2=p$9679_$1;
}
late final dc.dynamic youtube_id$1;
if((map$9681_$2 is lcoc_core.ILookup$iface)){
youtube_id$1=((map$9681_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
}else{
youtube_id$1=((lcoc_core.ILookup.extensions(map$9681_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9681_$2, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
}
late final dc.dynamic image_url$1;
if((map$9681_$2 is lcoc_core.ILookup$iface)){
image_url$1=((map$9681_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "image-url", 2752788238, ), ));
}else{
image_url$1=((lcoc_core.ILookup.extensions(map$9681_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9681_$2, const lcoc_core.Keyword(null, "image-url", 2752788238, ), ));
}
late final dc.dynamic libras$1;
if((map$9681_$2 is lcoc_core.ILookup$iface)){
libras$1=((map$9681_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "libras", 154282157, ), ));
}else{
libras$1=((lcoc_core.ILookup.extensions(map$9681_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9681_$2, const lcoc_core.Keyword(null, "libras", 154282157, ), ));
}
late final dc.dynamic description$1;
if((map$9681_$2 is lcoc_core.ILookup$iface)){
description$1=((map$9681_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "description", 1880444823, ), ));
}else{
description$1=((lcoc_core.ILookup.extensions(map$9681_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9681_$2, const lcoc_core.Keyword(null, "description", 1880444823, ), ));
}
late final dc.dynamic video_url$1;
if((map$9681_$2 is lcoc_core.ILookup$iface)){
video_url$1=((map$9681_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "video-url", 3045839472, ), ));
}else{
video_url$1=((lcoc_core.ILookup.extensions(map$9681_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9681_$2, const lcoc_core.Keyword(null, "video-url", 3045839472, ), ));
}
late final dc.dynamic source$1;
if((map$9681_$2 is lcoc_core.ILookup$iface)){
source$1=((map$9681_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "source", 10120462, ), ));
}else{
source$1=((lcoc_core.ILookup.extensions(map$9681_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9681_$2, const lcoc_core.Keyword(null, "source", 10120462, ), ));
}
late final dc.dynamic title$1;
if((map$9681_$2 is lcoc_core.ILookup$iface)){
title$1=((map$9681_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "title", 3035382670, ), ));
}else{
title$1=((lcoc_core.ILookup.extensions(map$9681_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9681_$2, const lcoc_core.Keyword(null, "title", 3035382670, ), ));
}
late final dc.dynamic exemplo$1;
if((map$9681_$2 is lcoc_core.ILookup$iface)){
exemplo$1=((map$9681_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "exemplo", 261906216, ), ));
}else{
exemplo$1=((lcoc_core.ILookup.extensions(map$9681_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9681_$2, const lcoc_core.Keyword(null, "exemplo", 261906216, ), ));
}
late final dc.dynamic link$1;
if((map$9681_$2 is lcoc_core.ILookup$iface)){
link$1=((map$9681_$2 as lcoc_core.ILookup$iface).$_lookup$1(const lcoc_core.Keyword(null, "link", 1569434702, ), ));
}else{
link$1=((lcoc_core.ILookup.extensions(map$9681_$2, ) as lcoc_core.ILookup$ext).$_lookup$1(map$9681_$2, const lcoc_core.Keyword(null, "link", 1569434702, ), ));
}
final dc.List<dc.dynamic> fl$1=(dc.List<dc.dynamic>.filled(11, const lcoc_core.Keyword(null, "youtube-id", 605402307, ), ));
(fl$1[1]=youtube_id$1);
(fl$1[2]=const lcoc_core.Keyword(null, "exemplo", 261906216, ));
(fl$1[3]=exemplo$1);
(fl$1[4]=const lcoc_core.Keyword(null, "libras", 154282157, ));
(fl$1[5]=libras$1);
final dc.List<dc.dynamic> fl$2=(dc.List<dc.dynamic>.filled(8, const lcoc_core.Keyword(null, "link", 1569434702, ), ));
(fl$2[1]=link$1);
(fl$2[2]=const lcoc_core.Keyword(null, "source", 10120462, ));
(fl$2[3]=source$1);
(fl$2[4]=const lcoc_core.Keyword(null, "image-url", 2752788238, ));
(fl$2[5]=image_url$1);
(fl$2[6]=const lcoc_core.Keyword(null, "title", 3035382670, ));
(fl$2[7]=title$1);
(fl$1[6]=lcoc_core.BitmapNode(4, 285212932, 285212932, fl$2, ));
(fl$1[7]=const lcoc_core.Keyword(null, "video-url", 3045839472, ));
(fl$1[8]=video_url$1);
(fl$1[9]=const lcoc_core.Keyword(null, "description", 1880444823, ));
(fl$1[10]=description$1);
return lcold_models.map_$GT_DictItem(lcoc_core.PersistentHashMap(null, lcoc_core.BitmapNode(9, 8478984, 8462600, fl$1, ), -1, ), );
}

dc.dynamic noSuchMethod(i)=>super.noSuchMethod(i);
}

// END ifn_make_dict_item_M__18695hm$1

// BEGIN make-dict-item
lcoc_core.IFn$iface make_dict_item=lcold_models.ifn_make_dict_item_M__18695hm$1(null, );

// END make-dict-item

// BEGIN map->DictItem
lcold_models.DictItem map_$GT_DictItem(dc.dynamic m$7987_$AUTO_$1, ){
late final dc.bool $if_$3;
if((m$7987_$AUTO_$1 is lcoc_core.PersistentHashMap)){
$if_$3=false;
}else{
$if_$3=true;
}
late final dc.dynamic m$7987_$AUTO_$2;
if($if_$3){
m$7987_$AUTO_$2=(lcoc_core.into.$_invoke$2(lcoc_core.$_EMPTY_MAP, m$7987_$AUTO_$1, ));
}else{
m$7987_$AUTO_$2=m$7987_$AUTO_$1;
}
return lcold_models.DictItem((const lcoc_core.Keyword(null, "title", 3035382670, ).$_invoke$1(m$7987_$AUTO_$2, )), (const lcoc_core.Keyword(null, "description", 1880444823, ).$_invoke$1(m$7987_$AUTO_$2, )), (const lcoc_core.Keyword(null, "exemplo", 261906216, ).$_invoke$1(m$7987_$AUTO_$2, )), (const lcoc_core.Keyword(null, "libras", 154282157, ).$_invoke$1(m$7987_$AUTO_$2, )), (const lcoc_core.Keyword(null, "video-url", 3045839472, ).$_invoke$1(m$7987_$AUTO_$2, )), (const lcoc_core.Keyword(null, "image-url", 2752788238, ).$_invoke$1(m$7987_$AUTO_$2, )), (const lcoc_core.Keyword(null, "youtube-id", 605402307, ).$_invoke$1(m$7987_$AUTO_$2, )), (const lcoc_core.Keyword(null, "link", 1569434702, ).$_invoke$1(m$7987_$AUTO_$2, )), (const lcoc_core.Keyword(null, "source", 10120462, ).$_invoke$1(m$7987_$AUTO_$2, )), null, (lcoc_core.persistent$BANG_((lcoc_core.dissoc$BANG_.$_invoke$2((lcoc_core.dissoc$BANG_.$_invoke$2((lcoc_core.dissoc$BANG_.$_invoke$2((lcoc_core.dissoc$BANG_.$_invoke$2((lcoc_core.dissoc$BANG_.$_invoke$2((lcoc_core.dissoc$BANG_.$_invoke$2((lcoc_core.dissoc$BANG_.$_invoke$2((lcoc_core.dissoc$BANG_.$_invoke$2((lcoc_core.dissoc$BANG_.$_invoke$2(lcoc_core.transient(m$7987_$AUTO_$2, ), const lcoc_core.Keyword(null, "title", 3035382670, ), )), const lcoc_core.Keyword(null, "description", 1880444823, ), )), const lcoc_core.Keyword(null, "exemplo", 261906216, ), )), const lcoc_core.Keyword(null, "libras", 154282157, ), )), const lcoc_core.Keyword(null, "video-url", 3045839472, ), )), const lcoc_core.Keyword(null, "image-url", 2752788238, ), )), const lcoc_core.Keyword(null, "youtube-id", 605402307, ), )), const lcoc_core.Keyword(null, "link", 1569434702, ), )), const lcoc_core.Keyword(null, "source", 10120462, ), )), ) as dc.Map), -1, );
}

// END map->DictItem
