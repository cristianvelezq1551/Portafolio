import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: ListView(padding: EdgeInsets.all(10), children: const [
        _CardTipo1(),
        SizedBox(height: 30.0),
        _CardTipo2(),
        SizedBox(height: 30.0),
        _CardTipo1(),
        SizedBox(height: 30.0),
        _CardTipo2(),
        SizedBox(height: 30.0),
        _CardTipo1(),
        SizedBox(height: 30.0),
        _CardTipo2(),
        SizedBox(height: 30.0),
        _CardTipo1(),
        SizedBox(height: 30.0),
        _CardTipo2(),
        SizedBox(height: 30.0),
        _CardTipo1(),
        SizedBox(height: 30.0),
        _CardTipo2(),
        SizedBox(height: 30.0),
      ]),
    );
  }
}

class _CardTipo2 extends StatelessWidget {
  const _CardTipo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(4.0, 10))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            const FadeInImage(
              fadeInDuration: Duration(milliseconds: 200),
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
              height: 300.0,
              fit: BoxFit.cover,
            ),
            Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text('ni puta idea'))
          ],
        ),
      ),
    );
  }
}

class _CardTipo1 extends StatelessWidget {
  const _CardTipo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blueAccent,
                size: 40,
              ),
              title: Text('tarjeta de credito'),
              subtitle: Text(
                  'aqui estamos con la descripcion de la tarjeta que quiero que ustedes vean para tener una idea de lo que quiero mostrarles y listo jajajajaja'),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text('Cancelar')),
                TextButton(onPressed: () {}, child: Text('Ok'))
              ],
            )
          ],
        ));
  }
}
