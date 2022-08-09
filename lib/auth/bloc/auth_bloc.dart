import 'package:countdown_app/auth/bloc/auth_event.dart';
import 'package:countdown_app/auth/bloc/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  AuthBloc() : super(const AuthState.loggedOut()) {
    on<LoginButtonPressed>((event, emit) async {
      emit(const AuthState.loading());
      final result = await signIn();
      if (result != null) {
        emit(AuthState.loggedIn(result));
      } else {
        emit(const AuthState.loggedOut());
      }
    });
    on<LogoutButtonPressed>((event, emit) async {
      emit(const AuthState.loading());
      final result = await signOut();
      if (result) {
        emit(const AuthState.loggedOut());
      }
      else {
        emit(AuthState.loggedIn((state as LoggedIn).user));
      }
    });
  }
  Future signIn() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) return;
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    try {
      final result =
          await FirebaseAuth.instance.signInWithCredential(credential);
      return result.user;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<bool> signOut() async {
    try {
      await _googleSignIn.signOut();
      await FirebaseAuth.instance.signOut();
      return true;
    } catch (e) {
      return false;
    }
  }
}
