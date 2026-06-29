// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consumption_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConsumptionLog {

 String get id; String get userId; String? get recipeId; String? get ingredientId; DateTime get loggedAt; double get servingQuantity; String? get mealType;// Optional nested relations populated via joins
 Recipe? get recipes; Ingredient? get ingredients;
/// Create a copy of ConsumptionLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConsumptionLogCopyWith<ConsumptionLog> get copyWith => _$ConsumptionLogCopyWithImpl<ConsumptionLog>(this as ConsumptionLog, _$identity);

  /// Serializes this ConsumptionLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConsumptionLog&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.ingredientId, ingredientId) || other.ingredientId == ingredientId)&&(identical(other.loggedAt, loggedAt) || other.loggedAt == loggedAt)&&(identical(other.servingQuantity, servingQuantity) || other.servingQuantity == servingQuantity)&&(identical(other.mealType, mealType) || other.mealType == mealType)&&(identical(other.recipes, recipes) || other.recipes == recipes)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,recipeId,ingredientId,loggedAt,servingQuantity,mealType,recipes,ingredients);

@override
String toString() {
  return 'ConsumptionLog(id: $id, userId: $userId, recipeId: $recipeId, ingredientId: $ingredientId, loggedAt: $loggedAt, servingQuantity: $servingQuantity, mealType: $mealType, recipes: $recipes, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class $ConsumptionLogCopyWith<$Res>  {
  factory $ConsumptionLogCopyWith(ConsumptionLog value, $Res Function(ConsumptionLog) _then) = _$ConsumptionLogCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String? recipeId, String? ingredientId, DateTime loggedAt, double servingQuantity, String? mealType, Recipe? recipes, Ingredient? ingredients
});


$RecipeCopyWith<$Res>? get recipes;$IngredientCopyWith<$Res>? get ingredients;

}
/// @nodoc
class _$ConsumptionLogCopyWithImpl<$Res>
    implements $ConsumptionLogCopyWith<$Res> {
  _$ConsumptionLogCopyWithImpl(this._self, this._then);

  final ConsumptionLog _self;
  final $Res Function(ConsumptionLog) _then;

/// Create a copy of ConsumptionLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? recipeId = freezed,Object? ingredientId = freezed,Object? loggedAt = null,Object? servingQuantity = null,Object? mealType = freezed,Object? recipes = freezed,Object? ingredients = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,recipeId: freezed == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as String?,ingredientId: freezed == ingredientId ? _self.ingredientId : ingredientId // ignore: cast_nullable_to_non_nullable
as String?,loggedAt: null == loggedAt ? _self.loggedAt : loggedAt // ignore: cast_nullable_to_non_nullable
as DateTime,servingQuantity: null == servingQuantity ? _self.servingQuantity : servingQuantity // ignore: cast_nullable_to_non_nullable
as double,mealType: freezed == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as String?,recipes: freezed == recipes ? _self.recipes : recipes // ignore: cast_nullable_to_non_nullable
as Recipe?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as Ingredient?,
  ));
}
/// Create a copy of ConsumptionLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeCopyWith<$Res>? get recipes {
    if (_self.recipes == null) {
    return null;
  }

  return $RecipeCopyWith<$Res>(_self.recipes!, (value) {
    return _then(_self.copyWith(recipes: value));
  });
}/// Create a copy of ConsumptionLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $IngredientCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConsumptionLog].
extension ConsumptionLogPatterns on ConsumptionLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConsumptionLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConsumptionLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConsumptionLog value)  $default,){
final _that = this;
switch (_that) {
case _ConsumptionLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConsumptionLog value)?  $default,){
final _that = this;
switch (_that) {
case _ConsumptionLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String? recipeId,  String? ingredientId,  DateTime loggedAt,  double servingQuantity,  String? mealType,  Recipe? recipes,  Ingredient? ingredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConsumptionLog() when $default != null:
return $default(_that.id,_that.userId,_that.recipeId,_that.ingredientId,_that.loggedAt,_that.servingQuantity,_that.mealType,_that.recipes,_that.ingredients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String? recipeId,  String? ingredientId,  DateTime loggedAt,  double servingQuantity,  String? mealType,  Recipe? recipes,  Ingredient? ingredients)  $default,) {final _that = this;
switch (_that) {
case _ConsumptionLog():
return $default(_that.id,_that.userId,_that.recipeId,_that.ingredientId,_that.loggedAt,_that.servingQuantity,_that.mealType,_that.recipes,_that.ingredients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String? recipeId,  String? ingredientId,  DateTime loggedAt,  double servingQuantity,  String? mealType,  Recipe? recipes,  Ingredient? ingredients)?  $default,) {final _that = this;
switch (_that) {
case _ConsumptionLog() when $default != null:
return $default(_that.id,_that.userId,_that.recipeId,_that.ingredientId,_that.loggedAt,_that.servingQuantity,_that.mealType,_that.recipes,_that.ingredients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConsumptionLog implements ConsumptionLog {
  const _ConsumptionLog({required this.id, required this.userId, this.recipeId, this.ingredientId, required this.loggedAt, this.servingQuantity = 1.0, this.mealType, this.recipes, this.ingredients});
  factory _ConsumptionLog.fromJson(Map<String, dynamic> json) => _$ConsumptionLogFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String? recipeId;
@override final  String? ingredientId;
@override final  DateTime loggedAt;
@override@JsonKey() final  double servingQuantity;
@override final  String? mealType;
// Optional nested relations populated via joins
@override final  Recipe? recipes;
@override final  Ingredient? ingredients;

/// Create a copy of ConsumptionLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConsumptionLogCopyWith<_ConsumptionLog> get copyWith => __$ConsumptionLogCopyWithImpl<_ConsumptionLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConsumptionLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConsumptionLog&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.recipeId, recipeId) || other.recipeId == recipeId)&&(identical(other.ingredientId, ingredientId) || other.ingredientId == ingredientId)&&(identical(other.loggedAt, loggedAt) || other.loggedAt == loggedAt)&&(identical(other.servingQuantity, servingQuantity) || other.servingQuantity == servingQuantity)&&(identical(other.mealType, mealType) || other.mealType == mealType)&&(identical(other.recipes, recipes) || other.recipes == recipes)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,recipeId,ingredientId,loggedAt,servingQuantity,mealType,recipes,ingredients);

@override
String toString() {
  return 'ConsumptionLog(id: $id, userId: $userId, recipeId: $recipeId, ingredientId: $ingredientId, loggedAt: $loggedAt, servingQuantity: $servingQuantity, mealType: $mealType, recipes: $recipes, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class _$ConsumptionLogCopyWith<$Res> implements $ConsumptionLogCopyWith<$Res> {
  factory _$ConsumptionLogCopyWith(_ConsumptionLog value, $Res Function(_ConsumptionLog) _then) = __$ConsumptionLogCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String? recipeId, String? ingredientId, DateTime loggedAt, double servingQuantity, String? mealType, Recipe? recipes, Ingredient? ingredients
});


@override $RecipeCopyWith<$Res>? get recipes;@override $IngredientCopyWith<$Res>? get ingredients;

}
/// @nodoc
class __$ConsumptionLogCopyWithImpl<$Res>
    implements _$ConsumptionLogCopyWith<$Res> {
  __$ConsumptionLogCopyWithImpl(this._self, this._then);

  final _ConsumptionLog _self;
  final $Res Function(_ConsumptionLog) _then;

/// Create a copy of ConsumptionLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? recipeId = freezed,Object? ingredientId = freezed,Object? loggedAt = null,Object? servingQuantity = null,Object? mealType = freezed,Object? recipes = freezed,Object? ingredients = freezed,}) {
  return _then(_ConsumptionLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,recipeId: freezed == recipeId ? _self.recipeId : recipeId // ignore: cast_nullable_to_non_nullable
as String?,ingredientId: freezed == ingredientId ? _self.ingredientId : ingredientId // ignore: cast_nullable_to_non_nullable
as String?,loggedAt: null == loggedAt ? _self.loggedAt : loggedAt // ignore: cast_nullable_to_non_nullable
as DateTime,servingQuantity: null == servingQuantity ? _self.servingQuantity : servingQuantity // ignore: cast_nullable_to_non_nullable
as double,mealType: freezed == mealType ? _self.mealType : mealType // ignore: cast_nullable_to_non_nullable
as String?,recipes: freezed == recipes ? _self.recipes : recipes // ignore: cast_nullable_to_non_nullable
as Recipe?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as Ingredient?,
  ));
}

/// Create a copy of ConsumptionLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeCopyWith<$Res>? get recipes {
    if (_self.recipes == null) {
    return null;
  }

  return $RecipeCopyWith<$Res>(_self.recipes!, (value) {
    return _then(_self.copyWith(recipes: value));
  });
}/// Create a copy of ConsumptionLog
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IngredientCopyWith<$Res>? get ingredients {
    if (_self.ingredients == null) {
    return null;
  }

  return $IngredientCopyWith<$Res>(_self.ingredients!, (value) {
    return _then(_self.copyWith(ingredients: value));
  });
}
}

// dart format on
