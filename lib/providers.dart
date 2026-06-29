import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cook/db/db.dart';
import 'package:cook/repositories/log_repository.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
LogRepository logRepository(Ref ref) {
  return LogRepository();
}

@riverpod
Stream<List<ConsumptionLog>> dailyLogs(Ref ref) {
  final repository = ref.watch(logRepositoryProvider);
  return repository.streamTodayLogsWithNutrition();
}
