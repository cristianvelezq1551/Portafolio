import 'package:flutter/material.dart';

class sliderPage extends StatefulWidget {
  sliderPage({Key? key}) : super(key: key);

  @override
  State<sliderPage> createState() => _sliderPageState();
}

class _sliderPageState extends State<sliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.orangeAccent,
      label: 'tamaño del Slider',
      // divisions: 10,
      value: _valorSlider,
      min: 10,
      max: 400,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _checkBox() {
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor!;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: const Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'http://assets.stickpng.com/thumbs/5a576a1a1c992a034569ab70.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
