// ignore_for_file: prefer_const_constructors, deprecated_member_use

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
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          TextFormField(
            style: TextStyle(
              fontSize: 23,
            ),
            decoration: InputDecoration(
              labelText: 'Login',
              hintText: 'Digite seu login',
              hintStyle: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            style: TextStyle(
              fontSize: 23,
            ),
            decoration: InputDecoration(
              labelText: 'Senha',
              hintText: 'Digite sua senha',
              hintStyle: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 46,
            child: RaisedButton(
              color: Colors.indigo,
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
