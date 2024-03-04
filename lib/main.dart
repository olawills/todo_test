import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_test/backend/auth_bloc.dart';
import 'package:todo_test/services/locator.dart';
import 'package:todo_test/ui/login_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppInitializer.init();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<AuthBloc>(
          create: (context) => AppInitializer.locator<AuthBloc>()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginView(),
    );
  }
}
