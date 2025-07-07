import 'package:flutter/material.dart';
import 'package:prove_of_concept_copter/app/router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter GoRouter Demo',
      routerConfig: AppRouter.router,
    );
  }
}
