import 'package:flutter/material.dart';
import 'package:CloudBurst/pages/home.dart';
import 'package:CloudBurst/customclass.dart';
import 'package:CloudBurst/customwidgets.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('this is loading page'),
    );
  }
}
