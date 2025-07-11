import 'package:prove_of_concept_copter/bounded_contexts/scenario/domain/models/scenario.dart';

abstract class ScenarioPorts {
  Stream<Scenario?> loadScenario();
  emitNewScenario();
  renameScenario(String name);
  Scenario getCurrentScenario();
}
