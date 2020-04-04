import 'package:flutter/material.dart';
import 'dart:async';

class ListPage extends StatefulWidget {
    @override
    _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
    ScrollController _scrollController = new ScrollController();

    List<int> _listaNumeros = new List();
    int _lastItem = 0;
    bool _isLoading = false;

    @override
    void initState() {
        super.initState();

        _addMoreImage();

        _scrollController.addListener(() {
            if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
//                _addMoreImage();
                _fetchData();
            }
        });
    }

    @override
    void dispose() {
        super.dispose();
        _scrollController.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Listas'),
            ),
            body: Stack(
                children: <Widget>[
                    _crearLista(),
                    _crearLoading(),
                ],
            ),
        );
    }

    Widget _crearLista() {
        return ListView.builder(
            controller: _scrollController,
            itemCount: _listaNumeros.length,
            itemBuilder: (BuildContext context, int index) {
                final img = _listaNumeros[index];
                return FadeInImage(
                    image: NetworkImage('https://picsum.photos/500/300?random=$img'),
                    placeholder: AssetImage('assets/images/jar-loading.gif'),
                );
            },
        );
    }

    void _addMoreImage() {
        for (var i = 0; i < 10; i++) {
            setState(() {
                _lastItem++;
                _listaNumeros.add(_lastItem);
            });
        }
    }

    Future<Null> _fetchData() async {
        setState(() {
            _isLoading = true;
        });
        final duration = new Duration(seconds: 2);
        new Timer(duration, httpResponse);
    }

    void httpResponse() {
        _isLoading = false;

        _scrollController.animateTo(
            _scrollController.position.pixels + 100,
            curve: Curves.fastOutSlowIn,
            duration: Duration(milliseconds: 250)
        );
        
        _addMoreImage();
    }

    Widget _crearLoading() {
        if (_isLoading) {
            return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            CircularProgressIndicator(),
                        ],
                    ),
                    SizedBox(height: 15.0)
                ],
            );
        } else {
            return Container();
        }
    }
}
