import 'package:supabase_flutter/supabase_flutter.dart';

export "orm/ingredient.dart";
export "orm/consumption_log.dart";
export "orm/recipe.dart";
export "orm/recipe_ingredient.dart";

final supabase = Supabase.instance.client;
final auth = supabase.auth;
