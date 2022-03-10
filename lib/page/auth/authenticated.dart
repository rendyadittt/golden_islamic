import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golden_islamic/bloc/auth/authenticate/bloc/authenticated_bloc.dart';
import 'package:golden_islamic/color.dart';
import 'package:golden_islamic/page/auth/signin_page.dart';
import 'package:golden_islamic/page/profile/profile.dart';

class AuthenticatedPageParent extends StatefulWidget {
  const AuthenticatedPageParent({Key? key}) : super(key: key);

  @override
  State<AuthenticatedPageParent> createState() =>
      _AuthenticatedPageParentState();
}

class _AuthenticatedPageParentState extends State<AuthenticatedPageParent> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticatedBloc()..add(AuthenticatedStart()),
      child: AuthenticatedPage(),
    );
  }
}

class AuthenticatedPage extends StatefulWidget {
  const AuthenticatedPage({Key? key}) : super(key: key);

  @override
  State<AuthenticatedPage> createState() => _AuthenticatedPageState();
}

class _AuthenticatedPageState extends State<AuthenticatedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: BlocBuilder<AuthenticatedBloc, AuthenticatedState>(
        builder: (context, state) {
          if (state is AuthenticatedInitial) {
            return Center(child: CircularProgressIndicator());
          } else if (state is AuthenticatedLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is AuthenticatedSuccess) {
            return ProfilPageParent(user: state.user,);
          } else if (state is UnAuthenticated) {
            return SignInPageParent();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
