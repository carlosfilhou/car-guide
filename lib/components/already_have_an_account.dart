import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  const AlreadyHaveAnAccountCheck({
    Key? key, this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'Não tem uma conta ? ' : 'Ja tem uma conta ? ',
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 15,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            login ? 'Inscreva-se' : 'Entrar',
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}