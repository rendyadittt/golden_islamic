import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:golden_islamic/firebase/auth/sign_in_google.dart';

part 'google_sign_in_event.dart';
part 'google_sign_in_state.dart';

class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  final authServices = new AuthServices();
  String? errorMessage;
  GoogleSignInBloc() : super(GoogleSignInInitial()) {
    on<GoogleSignInEvent>((event, emit) async {
      if (event is GoogleSignInButtonPressed) {
        emit(GoogleSignInLoading());
          var user = await authServices.signInWithGoogle();
          print(user!.email.toString() + "bbb");
          emit(GoogleSignInSuccess(firebaseUser: user));
        
      } else {
        emit(GoogleSignInFailed());
      }
    });
  }
}
