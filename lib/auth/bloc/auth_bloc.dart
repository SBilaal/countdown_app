import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:countdown_app/core/services/firebase_auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuthService _authService = FirebaseAuthService();

  AuthBloc() : super(AuthState.initial()) {
    on<_AuthCheckRequested>((event, emit) {
      final result = _authService.getUser();
      if (result == null) {
        emit(state.copyWith(isAuthenticated: false));
      } else {
        emit(state.copyWith(isAuthenticated: true));
      }
    });
    on<_LoginButtonPressed>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await _authService.signIn();
      if (result != null) {
        emit(state.copyWith(isAuthenticated: true, isLoading: false));
      } else {
        emit(state.copyWith(isAuthenticated: false, isLoading: false));
      }
    });
    on<_LogoutButtonPressed>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await _authService.signOut();
      emit(state.copyWith(isAuthenticated: false, isLoading: false));
    });
  }
}
