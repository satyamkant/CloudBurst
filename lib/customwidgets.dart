// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:CloudBurst/pages/loading.dart';

class Custom_Search_Bar extends StatefulWidget {
  String? incoming;
  Custom_Search_Bar({required this.incoming});

  @override
  State<Custom_Search_Bar> createState() =>
      _Custom_Search_BarState(str: incoming);
}

class _Custom_Search_BarState extends State<Custom_Search_Bar> {
  String? str;
  _Custom_Search_BarState({required this.str});

  final TextEditingController _controller = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   _controller.addListener(() {
  //     final String text = _controller.text.toLowerCase();
  //     _controller.value = _controller.value.copyWith(
  //       text: text,
  //       selection:
  //           TextSelection(baseOffset: text.length, extentOffset: text.length),
  //       composing: TextRange.empty,
  //     );
  //   });
  // }

  void dispose() {
    // Clean up the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 250,
          height: 60,
          child: Opacity(
            opacity: 0.7,
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: str,
                hintStyle: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
                filled: true,
                focusColor: Colors.blue,
                fillColor: Colors.grey[300],
                prefixIcon: Icon(
                  Icons.location_on,
                  color: Colors.grey[800],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: () {
              //   Navigator.pushReplacementNamed(context, '/loading',
              //       arguments: {myController});
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Loading()));
              // Navigator.pushReplacementNamed(
              //   context,
              //   '/loading',
              // );

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Loading(
                            incoming: _controller.text,
                          )));
            },
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.grey[800],
            ))
      ],
    );
  }
}
