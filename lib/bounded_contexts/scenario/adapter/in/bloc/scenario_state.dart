part of "scenario_bloc.dart";

@immutable
abstract class ScenarioState {}

class ScenarioInitialState extends ScenarioState {}

class ScenarioLoadedState extends ScenarioState {
  final Scenario? scenario;

  ScenarioLoadedState(this.scenario);
}

class ScenarioLoadingState extends ScenarioState {}

class ScenarioErrorState extends ScenarioState {}
