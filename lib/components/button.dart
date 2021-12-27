// ignore_for_file: deprecated_member_use, constant_identifier_names

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {required this.text,
      this.color = DEFAULT,
      this.big = false,
      required this.cb,
      Key? key})
      : super(key: key);

  const Button.big(
      {required this.text,
      this.color = DEFAULT,
      this.big = true,
      required this.cb,
      Key? key})
      : super(key: key);

  const Button.operation(
      {required this.text,
      this.color = OPERATION,
      this.big = false,
      required this.cb,
      Key? key})
      : super(key: key);

  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w200)),
        onPressed: () => cb(text),
      ),
    );
  }
}
