// ignore_for_file: prefer_const_constructors

import 'package:city_guide/login_page.dart';
import 'package:city_guide/utils/nav.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Carlos Augusto'),
            accountEmail: Text('carlosfilho.canal@icloud.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdzhSUpy5Xc9JzfmDtym1FGxdEYsxqOIeclB2_LWcafGDCp25KNJBkeM3LOfOAFzJowhM&usqp=CAU'),
            ),
          ),
          ListTile(
            textColor: Colors.black,
            iconColor: Colors.black,
            leading: Icon(Icons.star),
            title: Text(
              'Favoritos',
              style: TextStyle(fontSize: 23),
            ),
            subtitle: Text('Seus filmes favoritos...'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            textColor: Colors.black,
            iconColor: Colors.black,
            leading: Icon(Icons.help),
            title: Text(
              'Ajuda',
              style: TextStyle(fontSize: 23),
            ),
            subtitle: Text('Mais informações...'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            textColor: Color.fromRGBO(0, 0, 0, 1),
            iconColor: Colors.black,
            leading: Icon(Icons.exit_to_app),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 23),
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => _onClickLogout(context),
          ),
        ],
      ),
    );
  }

  _onClickLogout(BuildContext context) {
    Navigator.pop(context);
    push(context, LoginPage(), replace: true);
  }
}
