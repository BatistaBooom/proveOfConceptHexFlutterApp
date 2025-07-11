import 'package:flutter/material.dart';
import 'package:prove_of_concept_copter/app/main_app.dart';
import 'injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
  runApp(MyApp());
}
