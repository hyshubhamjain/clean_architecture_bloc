// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookModel {

 String get title; String get subtitle; String get author; String get illustrator; String get description; String get language; List<BookCategory> get categories; List<AgeGroup> get ageGroup; String get type; String get coverUrl; int get pagesCount; FileType get fileType; String get storagePath; bool get isPremium; double get price; double get popularityScore; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookModelCopyWith<BookModel> get copyWith => _$BookModelCopyWithImpl<BookModel>(this as BookModel, _$identity);

  /// Serializes this BookModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookModel&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.author, author) || other.author == author)&&(identical(other.illustrator, illustrator) || other.illustrator == illustrator)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.ageGroup, ageGroup)&&(identical(other.type, type) || other.type == type)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.pagesCount, pagesCount) || other.pagesCount == pagesCount)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.storagePath, storagePath) || other.storagePath == storagePath)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.price, price) || other.price == price)&&(identical(other.popularityScore, popularityScore) || other.popularityScore == popularityScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subtitle,author,illustrator,description,language,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(ageGroup),type,coverUrl,pagesCount,fileType,storagePath,isPremium,price,popularityScore,createdAt,updatedAt);

@override
String toString() {
  return 'BookModel(title: $title, subtitle: $subtitle, author: $author, illustrator: $illustrator, description: $description, language: $language, categories: $categories, ageGroup: $ageGroup, type: $type, coverUrl: $coverUrl, pagesCount: $pagesCount, fileType: $fileType, storagePath: $storagePath, isPremium: $isPremium, price: $price, popularityScore: $popularityScore, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BookModelCopyWith<$Res>  {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) _then) = _$BookModelCopyWithImpl;
@useResult
$Res call({
 String title, String subtitle, String author, String illustrator, String description, String language, List<BookCategory> categories, List<AgeGroup> ageGroup, String type, String coverUrl, int pagesCount, FileType fileType, String storagePath, bool isPremium, double price, double popularityScore, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$BookModelCopyWithImpl<$Res>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._self, this._then);

  final BookModel _self;
  final $Res Function(BookModel) _then;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? subtitle = null,Object? author = null,Object? illustrator = null,Object? description = null,Object? language = null,Object? categories = null,Object? ageGroup = null,Object? type = null,Object? coverUrl = null,Object? pagesCount = null,Object? fileType = null,Object? storagePath = null,Object? isPremium = null,Object? price = null,Object? popularityScore = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,illustrator: null == illustrator ? _self.illustrator : illustrator // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<BookCategory>,ageGroup: null == ageGroup ? _self.ageGroup : ageGroup // ignore: cast_nullable_to_non_nullable
as List<AgeGroup>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,coverUrl: null == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String,pagesCount: null == pagesCount ? _self.pagesCount : pagesCount // ignore: cast_nullable_to_non_nullable
as int,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as FileType,storagePath: null == storagePath ? _self.storagePath : storagePath // ignore: cast_nullable_to_non_nullable
as String,isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,popularityScore: null == popularityScore ? _self.popularityScore : popularityScore // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [BookModel].
extension BookModelPatterns on BookModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookModel value)  $default,){
final _that = this;
switch (_that) {
case _BookModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookModel value)?  $default,){
final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String subtitle,  String author,  String illustrator,  String description,  String language,  List<BookCategory> categories,  List<AgeGroup> ageGroup,  String type,  String coverUrl,  int pagesCount,  FileType fileType,  String storagePath,  bool isPremium,  double price,  double popularityScore,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that.title,_that.subtitle,_that.author,_that.illustrator,_that.description,_that.language,_that.categories,_that.ageGroup,_that.type,_that.coverUrl,_that.pagesCount,_that.fileType,_that.storagePath,_that.isPremium,_that.price,_that.popularityScore,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String subtitle,  String author,  String illustrator,  String description,  String language,  List<BookCategory> categories,  List<AgeGroup> ageGroup,  String type,  String coverUrl,  int pagesCount,  FileType fileType,  String storagePath,  bool isPremium,  double price,  double popularityScore,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _BookModel():
return $default(_that.title,_that.subtitle,_that.author,_that.illustrator,_that.description,_that.language,_that.categories,_that.ageGroup,_that.type,_that.coverUrl,_that.pagesCount,_that.fileType,_that.storagePath,_that.isPremium,_that.price,_that.popularityScore,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String subtitle,  String author,  String illustrator,  String description,  String language,  List<BookCategory> categories,  List<AgeGroup> ageGroup,  String type,  String coverUrl,  int pagesCount,  FileType fileType,  String storagePath,  bool isPremium,  double price,  double popularityScore,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _BookModel() when $default != null:
return $default(_that.title,_that.subtitle,_that.author,_that.illustrator,_that.description,_that.language,_that.categories,_that.ageGroup,_that.type,_that.coverUrl,_that.pagesCount,_that.fileType,_that.storagePath,_that.isPremium,_that.price,_that.popularityScore,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookModel implements BookModel {
  const _BookModel({required this.title, required this.subtitle, required this.author, required this.illustrator, required this.description, required this.language, required final  List<BookCategory> categories, required final  List<AgeGroup> ageGroup, required this.type, required this.coverUrl, required this.pagesCount, required this.fileType, required this.storagePath, required this.isPremium, required this.price, required this.popularityScore, required this.createdAt, required this.updatedAt}): _categories = categories,_ageGroup = ageGroup;
  factory _BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);

@override final  String title;
@override final  String subtitle;
@override final  String author;
@override final  String illustrator;
@override final  String description;
@override final  String language;
 final  List<BookCategory> _categories;
@override List<BookCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<AgeGroup> _ageGroup;
@override List<AgeGroup> get ageGroup {
  if (_ageGroup is EqualUnmodifiableListView) return _ageGroup;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ageGroup);
}

@override final  String type;
@override final  String coverUrl;
@override final  int pagesCount;
@override final  FileType fileType;
@override final  String storagePath;
@override final  bool isPremium;
@override final  double price;
@override final  double popularityScore;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookModelCopyWith<_BookModel> get copyWith => __$BookModelCopyWithImpl<_BookModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookModel&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.author, author) || other.author == author)&&(identical(other.illustrator, illustrator) || other.illustrator == illustrator)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._ageGroup, _ageGroup)&&(identical(other.type, type) || other.type == type)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.pagesCount, pagesCount) || other.pagesCount == pagesCount)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.storagePath, storagePath) || other.storagePath == storagePath)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.price, price) || other.price == price)&&(identical(other.popularityScore, popularityScore) || other.popularityScore == popularityScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subtitle,author,illustrator,description,language,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_ageGroup),type,coverUrl,pagesCount,fileType,storagePath,isPremium,price,popularityScore,createdAt,updatedAt);

@override
String toString() {
  return 'BookModel(title: $title, subtitle: $subtitle, author: $author, illustrator: $illustrator, description: $description, language: $language, categories: $categories, ageGroup: $ageGroup, type: $type, coverUrl: $coverUrl, pagesCount: $pagesCount, fileType: $fileType, storagePath: $storagePath, isPremium: $isPremium, price: $price, popularityScore: $popularityScore, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$BookModelCopyWith(_BookModel value, $Res Function(_BookModel) _then) = __$BookModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String subtitle, String author, String illustrator, String description, String language, List<BookCategory> categories, List<AgeGroup> ageGroup, String type, String coverUrl, int pagesCount, FileType fileType, String storagePath, bool isPremium, double price, double popularityScore, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$BookModelCopyWithImpl<$Res>
    implements _$BookModelCopyWith<$Res> {
  __$BookModelCopyWithImpl(this._self, this._then);

  final _BookModel _self;
  final $Res Function(_BookModel) _then;

/// Create a copy of BookModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? subtitle = null,Object? author = null,Object? illustrator = null,Object? description = null,Object? language = null,Object? categories = null,Object? ageGroup = null,Object? type = null,Object? coverUrl = null,Object? pagesCount = null,Object? fileType = null,Object? storagePath = null,Object? isPremium = null,Object? price = null,Object? popularityScore = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_BookModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,illustrator: null == illustrator ? _self.illustrator : illustrator // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<BookCategory>,ageGroup: null == ageGroup ? _self._ageGroup : ageGroup // ignore: cast_nullable_to_non_nullable
as List<AgeGroup>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,coverUrl: null == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String,pagesCount: null == pagesCount ? _self.pagesCount : pagesCount // ignore: cast_nullable_to_non_nullable
as int,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as FileType,storagePath: null == storagePath ? _self.storagePath : storagePath // ignore: cast_nullable_to_non_nullable
as String,isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,popularityScore: null == popularityScore ? _self.popularityScore : popularityScore // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
