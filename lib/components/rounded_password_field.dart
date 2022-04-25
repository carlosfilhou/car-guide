import 'package:city_guide/components/TextFieldContainer.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Sua senha',
          icon: Icon(
            Icons.lock,
            color: Colors.indigo,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.indigo,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}