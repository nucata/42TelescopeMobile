part of 'auth_bloc.dart';

abstract class AuthEvent {}

class LoginWithEmailAndPasswordEvent extends AuthEvent {
  String email;
  String password;

  LoginWithEmailAndPasswordEvent({required this.email, required this.password});
}

class LoginWithFacebookEvent extends AuthEvent {}

class LoginWithAppleEvent extends AuthEvent {}

class SignupWithEmailAndPasswordEvent extends AuthEvent {
  String emailAddress;
  String password;
  Uint8List? imageData;
  String? firstName;
  String? lastName;

  SignupWithEmailAndPasswordEvent(
      {required this.emailAddress,
      required this.password,
      this.imageData,
      this.firstName = 'Anonymous',
      this.lastName = 'User'});
}

class LogoutEvent extends AuthEvent {
  LogoutEvent();
}

class FinishedOnBoardingEvent extends AuthEvent {}

class CheckFirstRunEvent extends AuthEvent {}
