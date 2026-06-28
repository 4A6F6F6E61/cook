import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.freezed.dart';
part 'ingredient.g.dart';

@freezed
class Ingredient with _$Ingredient {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Ingredient({
    required String id,
    String? userId,
    required String name,
    String? category,
    @Default(0.0) double calories,
    @Default(0.0) double protein,
    @Default(0.0) double carbs,
    @Default(0.0) double fat,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
