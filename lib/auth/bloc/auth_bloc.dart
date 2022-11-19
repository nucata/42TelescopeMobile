import 'dart:typed_data';
import 'package:commons/commons.dart';
import 'package:flutter/services.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/auth_service.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  UserModel? user;
  late SharedPreferences prefs;
  late bool finishedOnBoarding;

  AuthBloc({this.user}) : super(const AuthState.unauthenticated()) {
    on<CheckFirstRunEvent>((event, emit) async {
      prefs = await SharedPreferences.getInstance();
      finishedOnBoarding = prefs.getBool(finishedOnBoardingConst) ?? false;
      if (!finishedOnBoarding) {
        emit(const AuthState.onboarding());
      } else {
        user = await AuthService.getAuthUser();
        if (user == null) {
          emit(const AuthState.unauthenticated());
        } else {
          emit(AuthState.authenticated(user!));
        }
      }
    });
    on<FinishedOnBoardingEvent>((event, emit) async {
      await prefs.setBool(finishedOnBoardingConst, true);
      emit(const AuthState.unauthenticated());
    });
    on<LoginWithEmailAndPasswordEvent>((event, emit) async {
      dynamic result = await AuthService.loginWithEmailAndPassword(
          event.email, event.password);
      if (result != null && result is UserModel) {
        user = result;
        emit(AuthState.authenticated(user!));
      } else if (result != null && result is String) {
        emit(AuthState.unauthenticated(message: result));
      } else {
        emit(const AuthState.unauthenticated(
            message: 'Login failed, Please try again.'));
      }
    });

    on<LogoutEvent>((event, emit) async {
      await AuthService.logout();
      user = null;
      emit(const AuthState.unauthenticated());
    });
  }
}
