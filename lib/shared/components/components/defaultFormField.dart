import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType keyBoardType;
  final String validate;
  final IconData? suffix;
  final String? hintText;
  final bool isPassword;
  const DefaultFormField({
    Key? key,
    required this.controller,
    required this.keyBoardType,
    required this.validate,
    this.suffix,
    this.hintText,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyBoardType,
      validator: (String? value){
        if(value!.isEmpty){
          return validate;
        }
        return null;
      },
      obscureText: isPassword,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        suffixIcon: Icon(
          suffix,
        ),
      ),
    );
  }
}
