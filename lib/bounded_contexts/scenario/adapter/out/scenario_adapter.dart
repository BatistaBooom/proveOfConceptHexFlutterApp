import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/application/port/out/scenario_ports.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/domain/models/scenario.dart';

@singleton
class ScenarioAdapter implements ScenarioPorts {
  final _controller = StreamController<Scenario?>();
  Scenario lastScenario =
      new Scenario(id: 0, name: "name", numberOfPlannings: 0);
  int counter = 0;

  @override
  Stream<Scenario?> loadScenario() {
    return _controller.stream;
  }

  @override
  void emitNewScenario() {
    lastScenario = Scenario(
      id: counter,
      name: "test_$counter",
      numberOfPlannings: 1,
    );
    _controller.add(lastScenario);
    counter++;
  }

  /// Always dispose controllers!
  void dispose() {
    _controller.close();
  }

  @override
  renameScenario(String newName) {
    lastScenario = lastScenario.renameScenario(newName);
    _controller.add(lastScenario);
  }

  @override
  Scenario getCurrentScenario() {
    // TODO: implement getCurrentScenario
    throw UnimplementedError();
  }
}
