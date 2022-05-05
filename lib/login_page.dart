// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_print, must_be_immutable

import 'package:city_guide/components/TextFieldContainer.dart';
import 'package:city_guide/components/already_have_an_account.dart';
import 'package:city_guide/home_page.dart';
import 'package:city_guide/utils/login_api.dart';
import 'package:city_guide/utils/nav.dart';
import 'package:city_guide/widgets/app_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tLogin = TextEditingController(text: 'carlosfilho.canal@icloud.com');
  final _tSenha = TextEditingController(text: '12345');

  IconData? iconV;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _body(context),
    );
  }

  _body(context) {
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
            AppText('Seu email',
                controller: _tLogin,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: (String? text) {
              if (text!.isEmpty) {
                return 'Email incorreto';
              }
              return null;
            }),
            SizedBox(height: 20),
            AppText('Sua Senha',
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
            }),
            SizedBox(height: 30),
            _button(context, 'LOGIN', Colors.indigo, Colors.white),
            SizedBox(height: 50),
            AlreadyHaveAnAccountCheck()
          ],
        ),
      ),
    );
  }

  _button(context, String text, color, colorText) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(29),
      child: FlatButton(
        color: color,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        onPressed: () async {
          if (!_formKey.currentState!.validate()) {
            return;
          }

          String login = _tLogin.text;
          String senha = _tSenha.text;

          print('login: $login e senha: $senha');

          bool? ok = await LoginApi.login(login, senha);

          if (ok!) {
            push(context, HomePage());
          } else {
            print('Login incorreto');
          }
        },
        child: Text(
          text,
          style: TextStyle(color: colorText),
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
  }) {}

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
