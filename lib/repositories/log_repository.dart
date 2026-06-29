import 'package:cook/db/db.dart';

class LogRepository {
  Future<List<ConsumptionLog>> fetchTodayLogsWithNutrition() async {
    final todayStart = DateTime.now().toIso8601String().split('T')[0];

    final response = await supabase
        .from('consumption_logs')
        .select('''
          *,
          recipes (*),
          ingredients (*)
        ''')
        .gte('logged_at', todayStart)
        .order('logged_at', ascending: false);

    return (response as List)
        .map((json) => ConsumptionLog.fromJson(json))
        .toList();
  }

  Stream<List<ConsumptionLog>> streamTodayLogsWithNutrition() {
    final todayStart = DateTime.now().toIso8601String().split('T')[0];

    return supabase
        .from('consumption_logs')
        .stream(primaryKey: ['id'])
        .gte('logged_at', todayStart)
        .asyncMap((_) async {
          return await fetchTodayLogsWithNutrition();
        });
  }
}
