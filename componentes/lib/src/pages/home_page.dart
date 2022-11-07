import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _Lista(),
    );
  }
}

class _Lista extends StatelessWidget {
  const _Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];

  for (var opt in data) {
    final widgetTemp = ListTile(
      title: Text(opt['texto']),
      leading: getIcon(opt['icon']),
      trailing: Icon(Icons.add),
      onTap: () {
        Navigator.pushNamed(context, opt['ruta']);
      },
    );

    opciones
      ..add(widgetTemp)
      ..add(const Divider());
  }
  return opciones;
  // return [
  //   ListTile(title: Text('hola mundo')),
  //   Divider(),
  //   ListTile(title: Text('hola mundo')),
  //   Divider(),
  // ];
}
