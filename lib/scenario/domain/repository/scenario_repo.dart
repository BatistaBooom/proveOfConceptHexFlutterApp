import 'package:prove_of_concept_copter/scenario/domain/models/scenario.dart';

abstract class ScenarioRepo {
  Future<void> getScenarios(List<Scenario> scenario);
  Future<void> addScenario(Scenario scenario);
  Future<void> updateScenario(Scenario scenario);
  Future<void> removeScenario(Scenario scenario);
}
