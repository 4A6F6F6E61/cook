import 'package:freezed_annotation/freezed_annotation.dart';
import 'ingredient.dart';

part 'recipe_ingredient.freezed.dart';
part 'recipe_ingredient.g.dart';

@freezed
abstract class RecipeIngredient with _$RecipeIngredient {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RecipeIngredient({
    required String id,
    required String recipeId,
    required String ingredientId,
    required double quantity,
    required String unit,
    Ingredient? ingredients, // Maps to the joined public.ingredients table payload
  }) = _RecipeIngredient;

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) => _$RecipeIngredientFromJson(json);
}