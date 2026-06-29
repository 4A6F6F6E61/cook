import 'package:cook/db/db.dart';

class RecipeRepository {
  Future<List<Recipe>> fetchUserRecipes() async {
    final response = await supabase
        .from('recipes')
        .select('''
          *,
          recipe_ingredients (
            *,
            ingredients (*)
          )
        ''')
        .order('name', ascending: true);

    return (response as List).map((json) => Recipe.fromJson(json)).toList();
  }

  Stream<List<Recipe>> streamUserRecipes() {
    return supabase
        .from('recipes')
        .stream(primaryKey: ['id'])
        .order('name', ascending: true)
        .asyncMap((flatRecipesList) async {
          return await fetchUserRecipes();
        });
  }
}
