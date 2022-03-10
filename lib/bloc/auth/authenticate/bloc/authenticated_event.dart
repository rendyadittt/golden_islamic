part of 'authenticated_bloc.dart';

abstract class AuthenticatedEvent extends Equatable {
  const AuthenticatedEvent();

  @override
  List<Object> get props => [];
}

class AuthenticatedStart extends AuthenticatedEvent {}
