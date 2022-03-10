part of 'authenticated_bloc.dart';

abstract class AuthenticatedState extends Equatable {
  const AuthenticatedState();
  
  @override
  List<Object> get props => [];
}

class AuthenticatedInitial extends AuthenticatedState {}

class AuthenticatedLoading extends AuthenticatedState {}

class AuthenticatedSuccess extends AuthenticatedState {
  User? user;
  AuthenticatedSuccess({@required this.user});

}

class UnAuthenticated extends AuthenticatedState {}


