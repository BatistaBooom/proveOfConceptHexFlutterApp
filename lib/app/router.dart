import 'package:go_router/go_router.dart';
import 'package:prove_of_concept_copter/app/homepage.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
    ],
  );
}
