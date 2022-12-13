// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:utem_app/service/voter.dart';
import 'package:utem_app/screens/bloc/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:utem_app/screens/bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        _crearFondo(context),
        _loginForm(context),
      ],
    ));
  }

  Widget _loginForm(BuildContext context) {
    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: 180.0,
            ),
          ),
          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 5.0),
                      spreadRadius: 3.0)
                ]),
            child: Column(
              children: <Widget>[
                Text('Selecciona una opción ',
                    style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 60.0),
                _googlelogin(context),
                SizedBox(height: 60.0),
                _crearBoton(bloc),
                SizedBox(height: 30.0),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _crearBoton(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.formValidStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ElevatedButton(
            // ignore: sort_child_properties_last
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
              child: Text("Ingresar como Invitado"),
            ),
            /*shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),*/
            //elevation: 0.0,
            //color: Colors.deepPurple,
            //textColor: Colors.white,
            onPressed: () => _login(bloc, context));
      },
    );
  }

  _login(LoginBloc bloc, BuildContext context) {
    Navigator.pushNamed(context, 'home');
  }

  Widget _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final fondoMorado = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: const <Color>[
        Colors.indigo,
        Color.fromRGBO(90, 70, 178, 1.0)
      ])),
    );

    final circulo = Container(
      
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Color.fromRGBO(255, 255, 255, 0.05)),
    );

    return Stack(
      children: <Widget>[
        fondoMorado,
        Positioned(top:     90.0, left:   30.0, child: circulo),
        Positioned(top:    -40.0, right: -30.0, child: circulo),
        Positioned(bottom: -50.0, right: -10.0, child: circulo),
        Positioned(bottom: 120.0, right:  20.0, child: circulo),
        Positioned(bottom: -50.0, left:  -20.0, child: circulo),
        Container(
          padding: EdgeInsets.only(top: 80.0),
          child: Column(
            children: const <Widget>[
              Icon(Icons.account_circle_outlined, color: Colors.white, size: 90.0),
              SizedBox(
                height: 10.0,
                width: double.infinity,
              ),
              Text('Encuesta',
                  style: TextStyle(color: Colors.white, fontSize: 25.0)),
            ],
          ),
        )
      ],
    );
  }

  Widget _googlelogin(BuildContext context) {
    return Container(
      child: SignInButton(
        Buttons.GoogleDark,
        elevation: 25,
        text: 'Ingreso por correo UTEM',
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () => VoterService.login(context),
      ),
    );
  }
}
