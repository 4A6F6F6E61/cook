// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Ingredient _$IngredientFromJson(Map<String, dynamic> json) => _Ingredient(
  id: json['id'] as String,
  userId: json['user_id'] as String?,
  name: json['name'] as String,
  category: json['category'] as String?,
  calories: (json['calories'] as num?)?.toDouble() ?? 0.0,
  protein: (json['protein'] as num?)?.toDouble() ?? 0.0,
  carbs: (json['carbs'] as num?)?.toDouble() ?? 0.0,
  fat: (json['fat'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$IngredientToJson(_Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'category': instance.category,
      'calories': instance.calories,
      'protein': instance.protein,
      'carbs': instance.carbs,
      'fat': instance.fat,
    };
