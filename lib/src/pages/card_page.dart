import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _card_1(),
          SizedBox(height: 30.0),
          _card_2(),
          SizedBox(height: 30.0),
          _card_3(),
          SizedBox(
            height: 30.0,
          )
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
              height: 300.0,
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

  _card_3() {
    final double bordeTarjeta = 30.0;
    final String url =
        'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg';

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(url),
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No sé que poner'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(bordeTarjeta),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(bordeTarjeta),
      ),
    );
  }
}
