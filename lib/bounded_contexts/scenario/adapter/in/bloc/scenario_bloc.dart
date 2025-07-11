import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/application/port/in/scenario_use_cases.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/domain/models/scenario.dart';

part "scenario_event.dart";
part "scenario_state.dart";

class ScenarioBloc extends Bloc<ScenarioEvent, ScenarioState> {
  ScenarioBloc(this.scenarioUseCases) : super(ScenarioInitialState()) {
    on<LoadScenarioEvent>((event, emit) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      scenarioUseCases.emitScenario();
    });
    on<LoadedScenarioEvent>((event, emit) async {
      emit(ScenarioLoadedState(event.scenario));
    });
    on<UnloadScenarioEvent>((event, emit) async {
      emit(ScenarioInitialState());
    });
    on<RenameScenarioEvent>((event, emit) async {
      scenarioUseCases.renameScenario(event.newName);
    });

    subscribeToUserChanges();
  }

  final ScenarioUseCases scenarioUseCases;
  StreamSubscription? streamSubscription;

  Future subscribeToUserChanges() async {
    streamSubscription = scenarioUseCases
        .loadScenario()
        .listen((scenario) => add(LoadedScenarioEvent(scenario)));
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
