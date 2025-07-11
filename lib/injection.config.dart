// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:prove_of_concept_copter/bounded_contexts/scenario/adapter/out/scenario_adapter.dart'
    as _i729;
import 'package:prove_of_concept_copter/bounded_contexts/scenario/application/port/in/scenario_use_cases.dart'
    as _i332;
import 'package:prove_of_concept_copter/bounded_contexts/scenario/application/port/out/scenario_ports.dart'
    as _i525;
import 'package:prove_of_concept_copter/bounded_contexts/scenario/application/service/scenario_service.dart'
    as _i378;
import 'package:prove_of_concept_copter/bounded_contexts/scenario/scenario_module.dart'
    as _i919;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final scenarioModule = _$ScenarioModule();
    gh.factory<_i332.ScenarioUseCases>(
        () => scenarioModule.loadScenarioUseCase);
    gh.factory<_i525.ScenarioPorts>(() => scenarioModule.loadScenarioPort);
    gh.singleton<_i729.ScenarioAdapter>(() => _i729.ScenarioAdapter());
    gh.singleton<_i378.ScenarioService>(
        () => _i378.ScenarioService(gh<_i525.ScenarioPorts>()));
    return this;
  }
}

class _$ScenarioModule extends _i919.ScenarioModule {}
