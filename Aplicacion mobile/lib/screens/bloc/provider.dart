import 'package:utem_app/screens/bloc/login_bloc.dart';
export 'package:utem_app/screens/bloc/login_bloc.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget {
  static Provider? _instancia;

  factory Provider(
      {Key? key,
      required Widget child,
      required List<Locale> supportedLocales,
      required String initialRoute,
      required Map<String, WidgetBuilder> routes,
      required MaterialPageRoute Function(RouteSettings settings)
          onGenerateRoute}) {
    if (_instancia == null) {
      _instancia = new Provider._internal(key: key, child: child);
    }

    return _instancia!;
  }

  Provider._internal({Key? key, required Widget child})
      : super(key: key, child: child);

  final loginBloc = LoginBloc();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
  static LoginBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider)
        .loginBloc;
  }
}
