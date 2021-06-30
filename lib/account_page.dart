import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBAr(),
      body: _buildBody().
    );
  }

  Widget _buildAppBAr() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: (){},
        )
      ]
    );
  }

  _buildBody() {
    return Padding(padding: EdgeInsets.all(16.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            
          ],
        ),
        Text('0\n게시물');
        Text('0\n팔로워');
        Text('0\n팔로잉');
      ],
    ),)
  }
}
