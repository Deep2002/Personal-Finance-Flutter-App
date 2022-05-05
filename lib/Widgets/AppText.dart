import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;

  AppText({
    Key? key,
    required this.text,
    this.style = const TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
