import 'package:prove_of_concept_copter/scenario/domain/models/scenario.dart';

abstract class LoadScenarioUseCase {
  Stream<Scenario?> loadScenario();
}
