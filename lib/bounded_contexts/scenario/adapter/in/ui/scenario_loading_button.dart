import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prove_of_concept_copter/injection.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/adapter/in/bloc/scenario_bloc.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/application/port/in/scenario_use_cases.dart';

class ScenarioLoadingButton extends StatelessWidget {
  ScenarioLoadingButton({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScenarioBloc(injector.get<ScenarioUseCases>()),
      child: Column(
        children: [
          Builder(
            builder: (context) => ElevatedButton(
              onPressed: () {
                context.read<ScenarioBloc>().add(LoadScenarioEvent());
              },
              child: const Text("Load Scenarios"),
            ),
          ),
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: 'Enter scenario name',
              border: OutlineInputBorder(),
            ),
          ),
          Builder(
            builder: (context) => ElevatedButton(
              onPressed: () {
                final input = controller.text;
                context.read<ScenarioBloc>().add(RenameScenarioEvent(input));
              },
              child: const Text("Submit newName"),
            ),
          ),
          const SizedBox(height: 10),
          BlocBuilder<ScenarioBloc, ScenarioState>(
            builder: (context, state) {
              if (state is ScenarioInitialState) {
                return const Text("Waiting...");
              } else if (state is ScenarioLoadingState) {
                return const Text("Loading...");
              } else if (state is ScenarioLoadedState) {
                return Text(state.scenario!.name);
              } else {
                return const Text("No State...");
              }
            },
          ),
        ],
      ),
    );
  }
}
