import 'package:city_guide/components/TextFieldContainer.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  late String hint;
  bool password;
  TextEditingController? controller;
  FormFieldValidator<String>? validator;
  IconData icon = Icons.person;
  IconData? iconV;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;

  AppText(this.hint,
      {this.password = false,
      this.controller,
      this.validator,
      required this.icon,
      this.iconV,
      this.keyboardType,
      this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        obscureText: password,
        validator: validator,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: Colors.indigo,
          ),
          suffixIcon: Icon(
            iconV,
            color: Colors.indigo,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
