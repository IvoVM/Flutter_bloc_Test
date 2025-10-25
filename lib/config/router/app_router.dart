import 'package:forms_app/presentation/screens/bloc_screen_counter.dart';
import 'package:forms_app/presentation/screens/cubit_screen_counter.dart';
import 'package:forms_app/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/cubits',
      builder: (context, state) => const CubitScreenCounter(),
    ),
    GoRoute(
      path: '/bloc',
      builder: (context, state) => const BlocScreenCounter(),
    ),
  ],
);
