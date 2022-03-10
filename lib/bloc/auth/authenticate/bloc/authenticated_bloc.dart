import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:golden_islamic/firebase/auth/sign_in_google.dart';

part 'authenticated_event.dart';
part 'authenticated_state.dart';

class AuthenticatedBloc extends Bloc<AuthenticatedEvent, AuthenticatedState> {
  final authServices = new AuthServices();
  AuthenticatedBloc() : super(AuthenticatedInitial()) {
    on<AuthenticatedEvent>((event, emit) async {
      if (event is AuthenticatedStart) {
        emit(AuthenticatedLoading());
        try {
          var user = await authServices.getCurrentUser();
          if (user != null) {
            emit(AuthenticatedSuccess(user: user));
          } else {
            emit(UnAuthenticated());
          }
        } catch (e) {
          emit(UnAuthenticated());
        }
      }
    });
  }
}
