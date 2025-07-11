part of "scenario_bloc.dart";

// @immutable
abstract class ScenarioEvent {}

class LoadScenarioEvent extends ScenarioEvent {}

class LoadedScenarioEvent extends ScenarioEvent {
  LoadedScenarioEvent(this.scenario);

  final Scenario? scenario;
}

class UnloadScenarioEvent extends ScenarioEvent {}

class RenameScenarioEvent extends ScenarioEvent {
  String newName;

  RenameScenarioEvent(this.newName);
}
