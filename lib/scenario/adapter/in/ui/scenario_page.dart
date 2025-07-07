import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prove_of_concept_copter/injection.dart';
import 'package:prove_of_concept_copter/scenario/adapter/in/bloc/scenario_bloc.dart';
import 'package:prove_of_concept_copter/scenario/application/port/in/load_scenario_use_case.dart';

class ScenarioPage extends StatelessWidget {
  const ScenarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScenarioBloc(injector.get<LoadScenarioUseCase>),
      child: MaterialApp(),
    );
  }
}
