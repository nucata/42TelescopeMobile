import 'package:commons/commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/auth/login/bloc/login_bloc.dart';
import 'package:mobile_app/welcome/bloc/welcome_bloc.dart';
import 'auth/bloc/auth_bloc.dart';
import 'launcherScreen/launcher_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => WelcomeBloc()),
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => LoadingCubit()),
      ],
      child: MaterialApp(
        title: 'Telescope',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LauncherScreen(),
      ),
    );
  }
}
