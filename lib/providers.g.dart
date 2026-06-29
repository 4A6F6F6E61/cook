// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(logRepository)
final logRepositoryProvider = LogRepositoryProvider._();

final class LogRepositoryProvider
    extends $FunctionalProvider<LogRepository, LogRepository, LogRepository>
    with $Provider<LogRepository> {
  LogRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logRepositoryHash();

  @$internal
  @override
  $ProviderElement<LogRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LogRepository create(Ref ref) {
    return logRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LogRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LogRepository>(value),
    );
  }
}

String _$logRepositoryHash() => r'8decaaa16f60c3925c3d27b78053f8968a37a266';

@ProviderFor(dailyLogs)
final dailyLogsProvider = DailyLogsProvider._();

final class DailyLogsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ConsumptionLog>>,
          List<ConsumptionLog>,
          Stream<List<ConsumptionLog>>
        >
    with
        $FutureModifier<List<ConsumptionLog>>,
        $StreamProvider<List<ConsumptionLog>> {
  DailyLogsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dailyLogsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dailyLogsHash();

  @$internal
  @override
  $StreamProviderElement<List<ConsumptionLog>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<ConsumptionLog>> create(Ref ref) {
    return dailyLogs(ref);
  }
}

String _$dailyLogsHash() => r'd556211787bfa7be43daa9c00893e0afca700e30';
