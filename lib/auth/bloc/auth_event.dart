
part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginButtonPressed() = _LoginButtonPressed;
  const factory AuthEvent.logoutButtonPressed() = _LogoutButtonPressed;
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;
}