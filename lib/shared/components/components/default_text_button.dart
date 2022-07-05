import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;

  const DefaultTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
