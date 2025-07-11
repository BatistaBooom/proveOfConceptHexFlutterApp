import 'package:flutter/material.dart';
import 'package:prove_of_concept_copter/bounded_contexts/scenario/adapter/in/ui/scenario_loading_button.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: ScenarioLoadingButton(
          controller: _controller,
        ),
      ),
    );
  }
}
