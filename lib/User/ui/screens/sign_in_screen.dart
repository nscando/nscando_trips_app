import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:nscando_trips_app/User/bloc/bloc_user.dart';
import 'package:nscando_trips_app/nscando_trips_cupertino.dart';
import 'package:nscando_trips_app/widgets/button_green.dart';
import 'package:nscando_trips_app/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {
  @override
  State createState() {
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        //snapshot - data -Object user
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return NscandoTripsCupertino();
        }
      },
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack("", double.infinity),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome\nThis is your travel App",
                style: TextStyle(
                    fontSize: 37.0,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ButtonGreen(
                  text: "Login with Gmail",
                  onPressed: () {
                    userBloc.signIn().then((UserCredential user) =>
                        print("El usuario es ${user.user}"));
                  },
                  width: 300.0,
                  height: 50.0)
            ],
          )
        ],
      ),
    );
  }
}
