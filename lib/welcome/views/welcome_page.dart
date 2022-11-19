import 'package:commons/commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/auth/login/views/login_page.dart';

import '../bloc/welcome_bloc.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WelcomeBloc>(
      create: (context) => WelcomeBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: BlocListener<WelcomeBloc, WelcomeInitial>(
              listener: (context, state) {
                switch (state.pressTarget) {
                  case WelcomePressTarget.login:
                    push(context, const LoginPage());
                    break;
                  default:
                    break;
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Center(
                  //   child: Image.asset(
                  //     'assets/images/welcome_image.png',
                  //     width: 150.0,
                  //     height: 150.0,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, top: 32, right: 16, bottom: 8),
                    child: Text(
                      'Welcome to the App!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: colorPrimary,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    child: Text(
                      "Let's saved a week of development and headaches.",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 40.0, left: 40.0, top: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(
                            MediaQuery.of(context).size.width / 1.5),
                        backgroundColor: colorPrimary,
                        textStyle: const TextStyle(color: Colors.white),
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: colorPrimary)),
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        context.read<WelcomeBloc>().add(LoginPressed());
                      },
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       right: 40.0, left: 40.0, top: 20, bottom: 20),
                  //   child: TextButton(
                  //     onPressed: () {
                  //       context.read<WelcomeBloc>().add(SignupPressed());
                  //     },
                  //     style: TextButton.styleFrom(
                  //       padding: const EdgeInsets.only(top: 16, bottom: 16),
                  //       fixedSize: Size.fromWidth(
                  //           MediaQuery.of(context).size.width / 1.5),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //         side: const BorderSide(
                  //           color: colorPrimary,
                  //         ),
                  //       ),
                  //     ),
                  //     child: const Text(
                  //       'Sign Up',
                  //       style: TextStyle(
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.bold,
                  //           color: colorPrimary),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
