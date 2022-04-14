import 'package:flutter/material.dart';
import 'package:form/route.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
