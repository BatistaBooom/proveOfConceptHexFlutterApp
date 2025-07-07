import 'package:injectable/injectable.dart';
import 'package:prove_of_concept_copter/scenario/application/port/in/load_scenario_use_case.dart';
import 'package:prove_of_concept_copter/scenario/application/port/out/load_scenario_port.dart';
import 'package:prove_of_concept_copter/scenario/domain/models/scenario.dart';

@LazySingleton(as: LoadScenarioUseCase)
class ScenarioService implements LoadScenarioUseCase {
  const ScenarioService(this.loadScenarioPort);

  final LoadScenarioPort loadScenarioPort;

  @override
  Stream<Scenario?> loadScenario() {
    return loadScenarioPort.loadScenario();
  }
}
