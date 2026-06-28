// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Recipe {

 String get id; String? get userId; String get name; String? get imageUrl; int get prepTimeMins; int get cookTimeMins; double get servings; List<String> get tags; List<String> get instructions; bool get isFavorite; List<RecipeIngredient> get recipeIngredients;
/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeCopyWith<Recipe> get copyWith => _$RecipeCopyWithImpl<Recipe>(this as Recipe, _$identity);

  /// Serializes this Recipe to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recipe&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.prepTimeMins, prepTimeMins) || other.prepTimeMins == prepTimeMins)&&(identical(other.cookTimeMins, cookTimeMins) || other.cookTimeMins == cookTimeMins)&&(identical(other.servings, servings) || other.servings == servings)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.instructions, instructions)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&const DeepCollectionEquality().equals(other.recipeIngredients, recipeIngredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,imageUrl,prepTimeMins,cookTimeMins,servings,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(instructions),isFavorite,const DeepCollectionEquality().hash(recipeIngredients));

@override
String toString() {
  return 'Recipe(id: $id, userId: $userId, name: $name, imageUrl: $imageUrl, prepTimeMins: $prepTimeMins, cookTimeMins: $cookTimeMins, servings: $servings, tags: $tags, instructions: $instructions, isFavorite: $isFavorite, recipeIngredients: $recipeIngredients)';
}


}

/// @nodoc
abstract mixin class $RecipeCopyWith<$Res>  {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) _then) = _$RecipeCopyWithImpl;
@useResult
$Res call({
 String id, String? userId, String name, String? imageUrl, int prepTimeMins, int cookTimeMins, double servings, List<String> tags, List<String> instructions, bool isFavorite, List<RecipeIngredient> recipeIngredients
});




}
/// @nodoc
class _$RecipeCopyWithImpl<$Res>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._self, this._then);

  final Recipe _self;
  final $Res Function(Recipe) _then;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? name = null,Object? imageUrl = freezed,Object? prepTimeMins = null,Object? cookTimeMins = null,Object? servings = null,Object? tags = null,Object? instructions = null,Object? isFavorite = null,Object? recipeIngredients = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,prepTimeMins: null == prepTimeMins ? _self.prepTimeMins : prepTimeMins // ignore: cast_nullable_to_non_nullable
as int,cookTimeMins: null == cookTimeMins ? _self.cookTimeMins : cookTimeMins // ignore: cast_nullable_to_non_nullable
as int,servings: null == servings ? _self.servings : servings // ignore: cast_nullable_to_non_nullable
as double,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as List<String>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,recipeIngredients: null == recipeIngredients ? _self.recipeIngredients : recipeIngredients // ignore: cast_nullable_to_non_nullable
as List<RecipeIngredient>,
  ));
}

}


/// Adds pattern-matching-related methods to [Recipe].
extension RecipePatterns on Recipe {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Recipe value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Recipe() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Recipe value)  $default,){
final _that = this;
switch (_that) {
case _Recipe():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Recipe value)?  $default,){
final _that = this;
switch (_that) {
case _Recipe() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? userId,  String name,  String? imageUrl,  int prepTimeMins,  int cookTimeMins,  double servings,  List<String> tags,  List<String> instructions,  bool isFavorite,  List<RecipeIngredient> recipeIngredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.imageUrl,_that.prepTimeMins,_that.cookTimeMins,_that.servings,_that.tags,_that.instructions,_that.isFavorite,_that.recipeIngredients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? userId,  String name,  String? imageUrl,  int prepTimeMins,  int cookTimeMins,  double servings,  List<String> tags,  List<String> instructions,  bool isFavorite,  List<RecipeIngredient> recipeIngredients)  $default,) {final _that = this;
switch (_that) {
case _Recipe():
return $default(_that.id,_that.userId,_that.name,_that.imageUrl,_that.prepTimeMins,_that.cookTimeMins,_that.servings,_that.tags,_that.instructions,_that.isFavorite,_that.recipeIngredients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? userId,  String name,  String? imageUrl,  int prepTimeMins,  int cookTimeMins,  double servings,  List<String> tags,  List<String> instructions,  bool isFavorite,  List<RecipeIngredient> recipeIngredients)?  $default,) {final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that.id,_that.userId,_that.name,_that.imageUrl,_that.prepTimeMins,_that.cookTimeMins,_that.servings,_that.tags,_that.instructions,_that.isFavorite,_that.recipeIngredients);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Recipe implements Recipe {
  const _Recipe({required this.id, this.userId, required this.name, this.imageUrl, this.prepTimeMins = 0, this.cookTimeMins = 0, this.servings = 1.0, final  List<String> tags = const [], final  List<String> instructions = const [], this.isFavorite = false, final  List<RecipeIngredient> recipeIngredients = const []}): _tags = tags,_instructions = instructions,_recipeIngredients = recipeIngredients;
  factory _Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

@override final  String id;
@override final  String? userId;
@override final  String name;
@override final  String? imageUrl;
@override@JsonKey() final  int prepTimeMins;
@override@JsonKey() final  int cookTimeMins;
@override@JsonKey() final  double servings;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<String> _instructions;
@override@JsonKey() List<String> get instructions {
  if (_instructions is EqualUnmodifiableListView) return _instructions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_instructions);
}

@override@JsonKey() final  bool isFavorite;
 final  List<RecipeIngredient> _recipeIngredients;
@override@JsonKey() List<RecipeIngredient> get recipeIngredients {
  if (_recipeIngredients is EqualUnmodifiableListView) return _recipeIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recipeIngredients);
}


/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeCopyWith<_Recipe> get copyWith => __$RecipeCopyWithImpl<_Recipe>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recipe&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.prepTimeMins, prepTimeMins) || other.prepTimeMins == prepTimeMins)&&(identical(other.cookTimeMins, cookTimeMins) || other.cookTimeMins == cookTimeMins)&&(identical(other.servings, servings) || other.servings == servings)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._instructions, _instructions)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&const DeepCollectionEquality().equals(other._recipeIngredients, _recipeIngredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,imageUrl,prepTimeMins,cookTimeMins,servings,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_instructions),isFavorite,const DeepCollectionEquality().hash(_recipeIngredients));

@override
String toString() {
  return 'Recipe(id: $id, userId: $userId, name: $name, imageUrl: $imageUrl, prepTimeMins: $prepTimeMins, cookTimeMins: $cookTimeMins, servings: $servings, tags: $tags, instructions: $instructions, isFavorite: $isFavorite, recipeIngredients: $recipeIngredients)';
}


}

/// @nodoc
abstract mixin class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) _then) = __$RecipeCopyWithImpl;
@override @useResult
$Res call({
 String id, String? userId, String name, String? imageUrl, int prepTimeMins, int cookTimeMins, double servings, List<String> tags, List<String> instructions, bool isFavorite, List<RecipeIngredient> recipeIngredients
});




}
/// @nodoc
class __$RecipeCopyWithImpl<$Res>
    implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(this._self, this._then);

  final _Recipe _self;
  final $Res Function(_Recipe) _then;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? name = null,Object? imageUrl = freezed,Object? prepTimeMins = null,Object? cookTimeMins = null,Object? servings = null,Object? tags = null,Object? instructions = null,Object? isFavorite = null,Object? recipeIngredients = null,}) {
  return _then(_Recipe(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,prepTimeMins: null == prepTimeMins ? _self.prepTimeMins : prepTimeMins // ignore: cast_nullable_to_non_nullable
as int,cookTimeMins: null == cookTimeMins ? _self.cookTimeMins : cookTimeMins // ignore: cast_nullable_to_non_nullable
as int,servings: null == servings ? _self.servings : servings // ignore: cast_nullable_to_non_nullable
as double,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,instructions: null == instructions ? _self._instructions : instructions // ignore: cast_nullable_to_non_nullable
as List<String>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,recipeIngredients: null == recipeIngredients ? _self._recipeIngredients : recipeIngredients // ignore: cast_nullable_to_non_nullable
as List<RecipeIngredient>,
  ));
}


}

// dart format on
