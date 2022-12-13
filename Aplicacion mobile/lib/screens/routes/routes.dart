import 'package:flutter/material.dart';
import 'package:utem_app/screens/profesores_screen.dart';
import 'package:utem_app/screens/home_screen.dart';
import 'package:utem_app/screens/infraestructura_screen.dart';
import 'package:utem_app/screens/integrantes_screen.dart';
import 'package:utem_app/screens/login_screen.dart';
import 'package:utem_app/screens/paro_screen.dart';

Map<String, WidgetBuilder> getApplicationRoytes() {
  return <String, WidgetBuilder>{
    '/'       : (context) => HomeScreen(),
    'login'   : (context) => LoginScreen(),
    'paro'    : (context) => ParoScreen(),
    'docente' : (context) => ProfesoresScreen(),
    'infra'   : (context) => InfraestructuraScreen(),
    'integr'  : (context) => IntegrantesScreen(),
  };
}
