// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumption_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConsumptionLog _$ConsumptionLogFromJson(Map<String, dynamic> json) =>
    _ConsumptionLog(
      id: json['id'] as String,
      userId: json['userId'] as String,
      recipeId: json['recipeId'] as String?,
      ingredientId: json['ingredientId'] as String?,
      loggedAt: DateTime.parse(json['loggedAt'] as String),
      servingQuantity: (json['servingQuantity'] as num?)?.toDouble() ?? 1.0,
      mealType: json['mealType'] as String?,
      recipes: json['recipes'] == null
          ? null
          : Recipe.fromJson(json['recipes'] as Map<String, dynamic>),
      ingredients: json['ingredients'] == null
          ? null
          : Ingredient.fromJson(json['ingredients'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConsumptionLogToJson(_ConsumptionLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'recipeId': instance.recipeId,
      'ingredientId': instance.ingredientId,
      'loggedAt': instance.loggedAt.toIso8601String(),
      'servingQuantity': instance.servingQuantity,
      'mealType': instance.mealType,
      'recipes': instance.recipes,
      'ingredients': instance.ingredients,
    };
