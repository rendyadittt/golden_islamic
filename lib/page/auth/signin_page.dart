import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golden_islamic/bloc/auth/google_sign_in/bloc/google_sign_in_bloc.dart';
import 'package:golden_islamic/color.dart';
import 'package:golden_islamic/page/profile/profile.dart';

class SignInPageParent extends StatefulWidget {
  const SignInPageParent({Key? key}) : super(key: key);

  @override
  _SignInPageParentState createState() => _SignInPageParentState();
}

class _SignInPageParentState extends State<SignInPageParent> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoogleSignInBloc(),
      child: SignInPage(),
    );
  }
}

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      body: BlocBuilder<GoogleSignInBloc, GoogleSignInState>(
        builder: (context, state) {
          if (state is GoogleSignInInitial) {
            print("initial aaa");
            return buildSignInGoogle();
          } else if (state is GoogleSignInLoading) {
            print("loading aaa");
            return Center(child: CircularProgressIndicator());
          } else if (state is GoogleSignInFailed) {
            print("gagal aaa");
            return buildSignInGoogle();
          } else if (state is GoogleSignInSuccess) {
            print(state.firebaseUser!.email.toString() + "email aaa");
            return ProfilPageParent(user: state.firebaseUser);
          } else {
            return buildSignInGoogle();
          }
        },
      ),
    );
  }

  Widget buildSignInGoogle() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 82),
          child: Column(
            children: [
              buildImageLogin(),
              buildDeskripsiLogin(),
              buildButtonSignInGoogle()
            ],
          ),
        )
      ],
    );
  }

  Widget buildButtonSignInGoogle() {
    return Padding(
      padding: EdgeInsets.only(
        left: 23,
        right: 23,
        bottom: 32,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: MyColor.greenColor,
          borderRadius: new BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: MyColor.greenColor.withOpacity(0.2),
              spreadRadius: 6,
              blurRadius: 12,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Material(
          borderRadius: new BorderRadius.circular(32),
          color: Colors.transparent,
          child: InkWell(
            borderRadius: new BorderRadius.circular(
                MediaQuery.of(context).size.width / 15),
            onTap: () async {
              context.read<GoogleSignInBloc>().add(GoogleSignInButtonPressed());
            },
            child: Center(
              child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 23,
                    bottom: MediaQuery.of(context).size.width / 23,
                  ),
                  child: buildTextSignInGoogle()),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImageLogin() {
    return Padding(
      padding: EdgeInsets.only(right: 23),
      child: Image.asset('assets/image/img-signin.jpg',
          width: MediaQuery.of(context).size.width / 2),
    );
  }

  Widget buildDeskripsiLogin() {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
      child: Container(
        width: double.infinity,
        child: Text(
          "Ayo login dulu untuk mengikuti kajian di daerah kamu ",
          style: TextStyle(
              fontFamily: 'PoppinsMedium',
              fontSize: MediaQuery.of(context).size.width / 28,
              color: Colors.grey),
        ),
      ),
    );
  }

  Widget buildTextSignInGoogle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 23),
          child: Image.asset('assets/image/google-logo.png',
              width: MediaQuery.of(context).size.width / 16),
        ),
        Text(
          "Masuk dengan google",
          style: TextStyle(
              fontFamily: 'PoppinsMedium',
              fontSize: MediaQuery.of(context).size.width / 28,
              color: Colors.white),
        ),
      ],
    );
  }
}
