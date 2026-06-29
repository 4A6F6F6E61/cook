// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Recipe _$RecipeFromJson(Map<String, dynamic> json) => _Recipe(
  id: json['id'] as String,
  userId: json['user_id'] as String?,
  name: json['name'] as String,
  imageUrl: json['image_url'] as String?,
  prepTimeMins: (json['prep_time_mins'] as num?)?.toInt() ?? 0,
  cookTimeMins: (json['cook_time_mins'] as num?)?.toInt() ?? 0,
  servings: (json['servings'] as num?)?.toDouble() ?? 1.0,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  instructions:
      (json['instructions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  isFavorite: json['is_favorite'] as bool? ?? false,
  recipeIngredients:
      (json['recipe_ingredients'] as List<dynamic>?)
          ?.map((e) => RecipeIngredient.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$RecipeToJson(_Recipe instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'name': instance.name,
  'image_url': instance.imageUrl,
  'prep_time_mins': instance.prepTimeMins,
  'cook_time_mins': instance.cookTimeMins,
  'servings': instance.servings,
  'tags': instance.tags,
  'instructions': instance.instructions,
  'is_favorite': instance.isFavorite,
  'recipe_ingredients': instance.recipeIngredients,
};
