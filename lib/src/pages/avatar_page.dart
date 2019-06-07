import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  final String url =
      'https://cactusthemes.com/blog/wp-content/uploads/2018/01/tt_avatar_small.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(url),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(url),
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 300),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
