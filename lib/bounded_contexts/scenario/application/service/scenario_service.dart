import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/application/port/in/scenario_use_cases.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/application/port/out/scenario_ports.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/domain/models/scenario.dart';

@singleton
class ScenarioService implements ScenarioUseCases {
  const ScenarioService(this.scenarioPorts);

  final ScenarioPorts scenarioPorts;

  @override
  Stream<Scenario?> loadScenario() {
    return scenarioPorts.loadScenario();
  }

  @override
  emitScenario() {
    return scenarioPorts.emitNewScenario();
  }

  @override
  loadScenarioFromFile(File file) {
    // TODO: implement loadScenarioFromFile
    throw UnimplementedError();
  }

  @override
  renameScenario(String newName) {
    scenarioPorts.renameScenario(newName);
  }
}
