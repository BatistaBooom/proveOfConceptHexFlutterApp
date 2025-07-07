import 'package:injectable/injectable.dart';
import 'package:prove_of_concept_copter/scenario/application/port/out/load_scenario_port.dart';
import 'package:prove_of_concept_copter/scenario/domain/models/scenario.dart';

@singleton
class ScenarioAdapter implements LoadScenarioPort {
  @override
  Stream<Scenario?> loadScenario() {
    // TODO: implement loadScenario
    throw UnimplementedError();
  }
}
