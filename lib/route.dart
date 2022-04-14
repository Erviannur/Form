import 'package:flutter/material.dart';
import 'package:form/login.dart';
import 'package:form/register.dart';
import 'package:form/register_success.dart';
import 'package:form/forgotpassword.dart';
import 'package:form/notifemail.dart';
import 'package:form/notifreset.dart';
import 'package:form/resetpassword.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Login());
      case '/register':
        return MaterialPageRoute(builder: (_) => Register());
      case '/notifcreate':
        return MaterialPageRoute(builder: (_) => RegisterSuccess());
      case '/forgot':
        return MaterialPageRoute(builder: (_) => Forgot());
      case '/notifemail':
        return MaterialPageRoute(builder: (_) => NotifEmail());
      case '/reset':
        return MaterialPageRoute(builder: (_) => Reset());
      case '/notifreset':
        return MaterialPageRoute(builder: (_) => NotifReset());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
