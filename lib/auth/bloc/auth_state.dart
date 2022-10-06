part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool? isAuthenticated,
    required String? error,
    required bool isLoading,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        isAuthenticated: null,
        error: null,
        isLoading: false,
      );
}
