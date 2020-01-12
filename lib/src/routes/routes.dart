import 'package:flutter/material.dart';
import 'package:gastos/src/pages/add_categorias.dart';
import 'package:gastos/src/pages/alertas_page.dart';
import 'package:gastos/src/pages/compararpresupuesto_page.dart';
import 'package:gastos/src/pages/home_page.dart';
import 'package:gastos/src/pages/mismovimientos_page.dart';
import 'package:gastos/src/pages/presupuesto_page.dart';
import 'package:gastos/src/pages/resumenpresupuesto_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/'      :  (BuildContext context) => HomePage(),
    'presupuesto'  :  (BuildContext context) => PresupuestoPage(),
    'resumen'      :  (BuildContext context) => ResumenPresupuestoPage(),
    'movimientos'  :  (BuildContext context) => MisMovimientosPage(),
    'alertas'      :  (BuildContext context) => AlertasPage(),
    'comparar'     :  (BuildContext context) => ComparaPresupuestoPage(),
    'categorias'   :  (BuildContext context) => AddCategoriasPage(), 

  };
}
