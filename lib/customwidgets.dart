import 'package:flutter/material.dart';
import 'package:CloudBurst/customclass.dart';

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
