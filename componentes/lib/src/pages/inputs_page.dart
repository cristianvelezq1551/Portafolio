import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _Email = '';
  String _Password = '';
  String _fecha = '';

  List _Carrera = ['economia', 'finanzas', 'administración', 'idiomas', 'CEO'];

  String _opcionseleccionada = 'economia';

  final _focusNode = FocusNode();
  final TextEditingController _inputFieldDateController =
      TextEditingController();
  // usamos String? _nombre; con condicion y si no
  //late String _nombre;
  // @override
  // void initState() {
  //   _nombre = '';
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: const Text('inputs de texto'),
      ),

      //Body
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearinput(),
          const Divider(),
          _crearEmail(),
          const Divider(),
          _crearPassword(),
          const Divider(),
          _crearFecha(context),
          const Divider(),
          _crearDropdown(),
          const Divider(),
          _crearpersona(),
        ],
      ),
    );
  }

  Widget _crearinput() {
    return TextField(
      onSubmitted: (value) {
        _focusNode.requestFocus();
      },
      focusNode: _focusNode,
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'solo es el nombre',
          suffixIcon: const Icon(Icons.accessibility),
          icon: const Icon(Icons.account_balance_sharp)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
        onSubmitted: (value) {
          _focusNode.requestFocus();
        },
        focusNode: _focusNode,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'tu cuenta de Email',
            labelText: 'Email',
            helperText: 'Coporativo',
            suffixIcon: const Icon(Icons.email),
            icon: const Icon(Icons.alternate_email)),
        onChanged: (valor) => setState(() {
              _Email = valor;
            }));
  }

  Widget _crearPassword() {
    return TextField(
        onSubmitted: (value) {
          _focusNode.requestFocus();
        },
        focusNode: _focusNode,
        obscureText: true,
        autofocus: false,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'tu password',
            labelText: 'Password',
            suffixIcon: const Icon(Icons.password),
            icon: const Icon(Icons.password_sharp)),
        onChanged: (valor) => setState(() {
              _Password = valor;
            }));
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      enableInteractiveSelection: true,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        suffixIcon: const Icon(Icons.calendar_today),
        icon: const Icon(Icons.perm_contact_calendar),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus((FocusNode()));
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        locale: const Locale('es', 'ES'));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<dynamic>> getOpcionesDropdown() {
    final List<DropdownMenuItem> lista = [];

    for (var carrera in _Carrera) {
      lista.add(DropdownMenuItem(
        child: Text(carrera),
        value: carrera,
      ));
    }
    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: [
        const Icon(Icons.work),
        const SizedBox(
          width: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 10),
          child: DropdownButton<dynamic>(
            value: _opcionseleccionada,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() {
                _opcionseleccionada = opt;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _crearpersona() {
    return ListTile(
      title: Text('Mi nombre es: $_nombre y estudié $_opcionseleccionada. '),
    );
  }
}
