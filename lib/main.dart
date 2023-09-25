import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'accueil.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Home(),
      '/accueil': (context) => Accueil(),
    },
  ));
}
