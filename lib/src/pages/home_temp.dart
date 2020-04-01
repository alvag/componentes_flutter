import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final items = [
    'Item Uno',
    'Item Dos',
    'Item Tres',
    'Item Cuatro',
    'Item Cinco'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  /* List<Widget> _crearItems() {
    List<Widget> itemsList = new List<Widget>();

    for (String item in items) {
      final tempWidget = ListTile(title: Text(item));
      itemsList..add(tempWidget)..add(Divider());
    }

    return itemsList;
  } */

  List<Widget> _crearItems() {
    var widgets = items.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Subtítulo del item'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();

    return widgets;
  }
}
