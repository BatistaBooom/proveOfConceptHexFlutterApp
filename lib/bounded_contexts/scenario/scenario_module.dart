import 'package:injectable/injectable.dart';
import 'package:prove_of_concept_copter/injection.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/adapter/out/scenario_adapter.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/application/port/in/scenario_use_cases.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/application/port/out/scenario_ports.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/application/service/scenario_service.dart';

@module
abstract class ScenarioModule {
  ScenarioUseCases get loadScenarioUseCase => injector.get<ScenarioService>();

  ScenarioPorts get loadScenarioPort => injector.get<ScenarioAdapter>();
}
