part of "scenario_bloc.dart";

// @immutable
abstract class ScenarioEvent {}

class LoadScenarioEvent extends ScenarioEvent {
  LoadScenarioEvent(this.scenario);

  final Scenario? scenario;
}

class UnloadScenarioEvent extends ScenarioEvent {}
