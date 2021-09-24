// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Custom_Search_Bar extends StatelessWidget {
  const Custom_Search_Bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Opacity(
        opacity: 0.7,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Type City Name',
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
    );
  }
}

class ScriptText extends StatelessWidget {
  final TextStyle? normalTxtStyle;
  final String? normalTxt;

  final String? supTxt;
  final TextStyle? supTxtStyle;
  final Offset? supOffset;

  ScriptText({
    required this.normalTxt,
    required this.supTxt,
    this.normalTxtStyle,
    this.supTxtStyle,
    this.supOffset,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: normalTxt,
            style: normalTxtStyle ??
                const TextStyle(fontSize: 25, color: Colors.black),
          ),
          WidgetSpan(
            child: Transform.translate(
              offset: supOffset ?? const Offset(0.0, -8.0),
              child: Text(
                '$supTxt',
                style: supTxtStyle ??
                    const TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
