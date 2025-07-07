import 'package:injectable/injectable.dart';
import 'package:prove_of_concept_copter/injection.dart';
import 'package:prove_of_concept_copter/scenario/adapter/out/scenario_adapter.dart';
import 'package:prove_of_concept_copter/scenario/application/port/in/load_scenario_use_case.dart';
import 'package:prove_of_concept_copter/scenario/application/port/out/load_scenario_port.dart';
import 'package:prove_of_concept_copter/scenario/application/service/scenario_service.dart';

@module
abstract class ScenarioModule {
  LoadScenarioUseCase get loadScenarioUseCase =>
      injector.get<ScenarioService>();

  LoadScenarioPort get loadScenarioPort => injector.get<ScenarioAdapter>();
}
