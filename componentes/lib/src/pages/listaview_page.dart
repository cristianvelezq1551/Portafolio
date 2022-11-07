import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

class listaPage extends StatefulWidget {
  const listaPage({Key? key}) : super(key: key);

  @override
  State<listaPage> createState() => _listaPageState();
}

class _listaPageState extends State<listaPage> {
  ScrollController _scrollController = ScrollController();

  List<int> _numeros = [];
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();
    _scrollController.addListener(
      () {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) ;
        // _agregar10();
        fetchData();
      },
    );
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
        title: const Text('Fotografia'),
      ),
      body: Stack(
        children: [
          _crearlista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearlista() {
    return RefreshIndicator(
      onRefresh: obtenerPagina1,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _numeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _numeros[index];
          return FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
          );
        },
      ),
    );
  }

  Future<Null> obtenerPagina1() async {
    const duration = Duration(seconds: 2);

    Timer(
      duration,
      (() {
        _numeros.clear();
        _ultimoItem++;
        _agregar10();
      }),
    );

    return Future.delayed(duration);
  }

  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _numeros.add(_ultimoItem);
    }
    setState(() {});
  }

  Future fetchData() async {
    setState(() {});
    _isLoading = true;
    const duration = Duration(seconds: 2);
    return Timer(duration, respuestaHTTP);
  }

  respuestaHTTP() {
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));

    _agregar10();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          const SizedBox(height: 15.0)
        ],
      );
      CircularProgressIndicator();
    } else {
      return Container();
    }
  }
}
