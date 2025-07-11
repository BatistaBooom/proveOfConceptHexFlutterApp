import 'dart:io';

import 'package:prove_of_concept_copter/bounded_contexts/scenario/domain/models/scenario.dart';

abstract class ScenarioUseCases {
  Stream<Scenario?> loadScenario();
  emitScenario();
  renameScenario(String newName);
  loadScenarioFromFile(File file);
}
