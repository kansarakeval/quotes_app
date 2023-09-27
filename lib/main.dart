import 'package:flutter/material.dart';
import 'package:quotes_app/util/app_routes.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    routes: screen_routes,
  ));
}