
//*---------------------------------------------*/
//*      Aplicacion:    Prueba Base de Datos  */
//*       Funcion:   Grabacion y letura de registros */
//*      Autor: Carlos A. Ruiz         
//*---------------------------------------------*/

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoriasPruebas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Categorias Pruebas'),
      ),
    );
  }
}
