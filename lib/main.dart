import 'package:flutter/material.dart';
import 'package:CloudBurst/pages/home.dart';
import 'package:CloudBurst/pages/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/loading': (context) => Loading(),
        '/home': (context) => Home(),
      },
    ));
