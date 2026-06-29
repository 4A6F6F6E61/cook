import 'package:freezed_annotation/freezed_annotation.dart';
import 'recipe.dart';
import 'ingredient.dart';

part 'consumption_log.freezed.dart';
part 'consumption_log.g.dart';

@freezed
abstract class ConsumptionLog with _$ConsumptionLog {
  const factory ConsumptionLog({
    required String id,
    required String userId,
    String? recipeId,
    String? ingredientId,
    required DateTime loggedAt,
    @Default(1.0) double servingQuantity,
    String? mealType,

    // Optional nested relations populated via joins
    Recipe? recipes,
    Ingredient? ingredients,
  }) = _ConsumptionLog;

  factory ConsumptionLog.fromJson(Map<String, dynamic> json) =>
      _$ConsumptionLogFromJson(json);
}
