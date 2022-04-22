// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guia Floripa'),
      ),
      body: _body(),
    );
  }

  _body() {
    Container(
      color: Colors.white,
    );
  }
}
