import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MisMovimientosPage extends StatelessWidget {

  final String ingresos = '50000';
  final String gastos = '25000';
  @override





  Widget build(BuildContext context) {
  //*----------------------------------------------------------------*/
  //                      *Fija la orientacion de la pantalla */
  //*----------------------------------------------------------------*/
    SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown
]);
//*----------------------------------------------------------------*/
//    *determina el color de la barra status * probar/varias opciones
//*----------------------------------------------------------------*/
SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.red));


    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Mis Movimientos'),
        ),
        body: ListView(
          padding: EdgeInsets.all(5),
          children: <Widget>[
          //   _cardEncabezado(),
          _ingrGastos()
          
          ]
          ),
    bottomNavigationBar: BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(
        height: 50.0,
      ),

    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      tooltip: 'Add',
      child: Icon(Icons.add),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


          );
  }

  

Widget _ingrGastos(){
  return  Column(

  children: <Widget>[
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('Enero 20 2020')
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text('Ingresos      50000', 

        )],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text('Gastos        25000'),
      ],
    )
  ],
  );


}


  


}
