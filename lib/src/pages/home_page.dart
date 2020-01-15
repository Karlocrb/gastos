import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gastos/src/providers/menu_provider.dart';
import 'package:gastos/src/utils/icono_string.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Control de Gastos',
            style: TextStyle(color: Colors.redAccent)),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

          //final route = MaterialPageRoute(
          //builder: (context) => AlertPage()
        },
      );
      //Navigator.push(context, route);

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}


/* /es  otra prueba git
 */