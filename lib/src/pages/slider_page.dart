import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearImagen(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      onChanged: (value) {
        setState(() {
          _sliderValue = value;
        });
      },
    );
  }

  Widget _crearImagen() {
    final String url =
        'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg';

    return Expanded(
      child: FadeInImage(
        image: NetworkImage(url),
        placeholder: AssetImage('assets/images/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200),
        width: _sliderValue,
        fit: BoxFit.contain,
      ),
    );
  }
}
