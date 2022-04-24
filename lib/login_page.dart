// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar() {
    return AppBar(
      titleTextStyle: TextStyle(
        fontFamily: 'georgia',
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      title: Text(
        'Guia Floripa',
      ),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          _textForm('login', 'Digite seu login'),
          SizedBox(height: 20),
          _textForm('Senha', 'Digite sua senha', password: true),
          SizedBox(height: 20),
          _button('Login')
        ],
      ),
    );
  }

  _button(String text) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.indigo,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  _textForm(String label, String hint, {bool password = false}) {
    return TextFormField(
      obscureText: password,
      style: TextStyle(
        fontSize: 23,
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
}
