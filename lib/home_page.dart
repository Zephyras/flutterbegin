import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram Clon',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: <Widget>[
              Text(
                'Instagram에 오신 것을 환영합니다',
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Text('사진과 동영상을 보려면 팔루우세요'),
              Padding(padding: EdgeInsets.all(16.0)),
              SizedBox(
                width: 260.0,
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(3.0)),
                        SizedBox(
                          width: 80.0,
                          height: 80.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2018/08/23/22/29/girl-3626901__340.jpg'),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8.0)),
                        Text('이메일 주소',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('이름'),
                        Padding(padding: EdgeInsets.all(8.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network(
                                  'https://cdn.pixabay.com/photo/2018/04/11/11/54/small-poly-3310319__340.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Padding(padding: EdgeInsets.all(1.0)),
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network(
                                  'https://cdn.pixabay.com/photo/2019/05/04/15/24/art-4178302__480.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Padding(padding: EdgeInsets.all(1.0)),
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network(
                                  'https://cdn.pixabay.com/photo/2019/05/04/15/24/art-4178302__480.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                        Text('Facebook 친구'),
                        Padding(padding: EdgeInsets.all(4.0)),
                        RaisedButton(
                          child: Text('팔로우'),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
        )));
  }
}
