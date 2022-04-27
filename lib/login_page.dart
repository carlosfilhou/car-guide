// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:city_guide/components/TextFieldContainer.dart';
import 'package:city_guide/components/already_have_an_account.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();

  IconData? iconV;

  final _formKey = GlobalKey<FormState>();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            SizedBox(height: 30),
            _description(),
            SizedBox(height: 30),
            _title('Guia Floripa'),
            SizedBox(height: 30),
            _textForm(
              'Seu email',
              controller: _tLogin,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: (String? text) {
                if (text!.isEmpty) {
                  return 'Login incorreto';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            _textForm(
              'Sua Senha',
              controller: _tSenha,
              password: true,
              icon: Icons.lock,
              iconV: Icons.visibility,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              validator: (String? text) {
                if (text!.isEmpty) {
                  return 'Senha incorreta';
                }
                return null;
              },
            ),
            SizedBox(height: 30),
            _buttonLogin('LOGIN', Colors.indigo, Colors.white),
            SizedBox(height: 50),
            AlreadyHaveAnAccountCheck()
          ],
        ),
      ),
    );
  }

  _textForm(
    String hint, {
    bool password = false,
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
    icon = Icons.person,
    iconV,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
  }) {
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

  _buttonLogin(String text, color, colorText) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(29),
      child: FlatButton(
        color: color,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        onPressed: () {
          bool formOk = _formKey.currentState!.validate();
          if (!formOk) {
            return;
          }

          String login = _tLogin.text;
          String senha = _tSenha.text;

          print('login: $login e senha: $senha');
        },
        child: Text(
          text,
          style: TextStyle(color: colorText),
        ),
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
