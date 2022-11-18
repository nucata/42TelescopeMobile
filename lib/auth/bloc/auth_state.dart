part of 'auth_bloc.dart';

enum AuthStateEnum { firstRun, authenticated, unauthenticated }

class AuthState {
  final AuthStateEnum authState;
  final UserModel? user;
  final String? message;

  const AuthState._(this.authState, {this.user, this.message});

  const AuthState.authenticated(UserModel user)
      : this._(AuthStateEnum.authenticated, user: user);

  const AuthState.unauthenticated({String? message})
      : this._(AuthStateEnum.unauthenticated,
            message: message ?? 'Unauthenticated');

  const AuthState.onboarding() : this._(AuthStateEnum.firstRun);
}
