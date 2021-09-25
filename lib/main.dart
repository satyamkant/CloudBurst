import 'package:flutter/material.dart';
import 'package:CloudBurst/pages/home.dart';
import 'package:CloudBurst/pages/loading.dart';
import 'package:CloudBurst/splash.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/loading': (context) => Loading(),
        '/splash': (context) => SplashScreen(),
        '/home': (context) => Home(),
      },
    ));
