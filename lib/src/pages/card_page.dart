import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _card_1(),
          SizedBox(height: 30),
          _card_2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  _card_1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Título de la tarjeta'),
            subtitle: Text(
                'Este es un subtítulo lorem ipsum Este es un subtítulo de la tarjeta lorem ipsum Este es un subtítulo de la tarjeta lorem ipsum'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  _card_2() {
    final double bordeTarjeta = 20.0;
    final String url =
        'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg';

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(bordeTarjeta),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(bordeTarjeta),
        child: Column(
          children: <Widget>[
            FadeInImage(
              image: NetworkImage(url),
              placeholder: AssetImage('assets/images/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 260,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('No sé que poner'),
            )
          ],
        ),
      ),
    );
  }
}
