import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  String text;
  VoidCallback onPressed;

  MyButton({required this.text, required this.onPressed, super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(widget.text),
    );
  }
}
