import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    final _borderAlert =
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
    /* final _borderButton =
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)); */
    showDialog(
        context: context,
        // barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: _borderAlert,
            title: Text('Título del Alert!'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Contenido de la caja del Alert!!'),
                FlutterLogo(size: 100.0)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                // shape: _borderButton,
                // color: Colors.lime,
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                // shape: _borderButton,
                // color: Colors.lime,
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
