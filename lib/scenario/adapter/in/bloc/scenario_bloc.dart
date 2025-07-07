import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:prove_of_concept_copter/scenario/application/port/in/load_scenario_use_case.dart';
import 'package:prove_of_concept_copter/scenario/domain/models/scenario.dart';

part "scenario_event.dart";
part "scenario_state.dart";

class ScenarioBloc extends Bloc<ScenarioEvent, ScenarioState> {
  ScenarioBloc(this.loadScenarioUseCase) : super(ScenarioInitialState()) {
    on<LoadScenarioEvent>((event, emit) async {
      emit(ScenarioLoadedState(event.scenario));
    });
    on<UnloadScenarioEvent>((event, emit) async {
      emit(ScenarioInitialState());
    });

    subscribeToUserChanges();
  }

  final LoadScenarioUseCase loadScenarioUseCase;
  StreamSubscription? streamSubscription;

  Future subscribeToUserChanges() async {
    streamSubscription = loadScenarioUseCase
        .loadScenario()
        .listen((scenario) => add(LoadScenarioEvent(scenario)));
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
