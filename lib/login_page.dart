// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:city_guide/components/TextFieldContainer.dart';
import 'package:city_guide/components/already_have_an_account.dart';
import 'package:city_guide/components/rounded_input_field.dart';
import 'package:city_guide/components/rounded_password_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          _description(),
          SizedBox(height: 30),
          _title('Guia Floripa'),
          SizedBox(height: 30),
          RoundedInputField(
            hintText: 'Seu email',
            onChanged: (value) {},
          ),
          SizedBox(height: 20),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(height: 30),
          _button('LOGIN', Colors.indigo, Colors.white),
          SizedBox(height: 50),
          AlreadyHaveAnAccountCheck()
        ],
      ),
    );
  }

  _description() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'LOGIN',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _button(String text, color, colorText) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(29),
      child: FlatButton(
        color: color,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: colorText),
        ),
      ),
    );
  }

  _textForm(String label, String hint, {bool password = false}) {
    return TextFormField(
      obscureText: password,
      style: TextStyle(
        fontSize: 18,
      ),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }

  _title(title) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.indigo,
            fontFamily: 'georgia',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 40),
      ),
    );
  }
}
