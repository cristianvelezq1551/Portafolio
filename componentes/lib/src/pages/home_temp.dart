import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes temp'),
      ),
      body: ListView(children: _CrearItemsCorto()),
    );
  }

  //crear lista mas dinamicamente
  List<Widget> _CrearItems() {
    final lista = <Widget>[];

    for (String opt in opciones) {
      final tempwidget = ListTile(
        title: Text(opt),
      );

      lista
        ..add(tempwidget)
        ..add(Divider(
          color: Colors.redAccent,
        ));
    }
    return lista;
  }

  List<Widget> _CrearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: Text('hola'),
            leading: Icon(Icons.add),
            trailing: Icon(Icons.access_alarm),
            onTap: () {},
          ),
          Divider(color: Colors.blueAccent),
        ],
      );
    }).toList();
  }
}
