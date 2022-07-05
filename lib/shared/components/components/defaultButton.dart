import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  Function? onPressed;
  final Color? color;
  final String text;
  DefaultButton({
    Key? key,
    this.width = double.infinity,
    this.height = 50,
    this.radius = 10,
    required this.onPressed,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: color,
      ),
      child: MaterialButton(
        onPressed: () {
          onPressed;
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
