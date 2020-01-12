import 'package:flutter/material.dart';
import 'package:gastos/model/gastos_model.dart';


class CategoriasDetailsPage extends StatelessWidget {
  final Categorias categorias;

  const CategoriasDetailsPage({Key key, @required this.categorias}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(categorias.categoria, style: Theme.of(context).textTheme.title.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            ),),
            const SizedBox(height: 20.0),
            Text(categorias.subcategoria,style: TextStyle(
              fontSize: 16.0
            ),),
          ],
        ),
      ),
    );
  }
}