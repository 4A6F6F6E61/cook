import 'package:freezed_annotation/freezed_annotation.dart';
import 'recipe_ingredient.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
abstract class Recipe with _$Recipe {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Recipe({
    required String id,
    String? userId,
    required String name,
    String? imageUrl,
    @Default(0) int prepTimeMins,
    @Default(0) int cookTimeMins,
    @Default(1.0) double servings,
    @Default([]) List<String> tags,
    @Default([]) List<String> instructions,
    @Default(false) bool isFavorite,
    @Default([]) List<RecipeIngredient> recipeIngredients, // Maps to nested list
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}