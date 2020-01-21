import 'package:flutter/material.dart';
import 'package:gastos/src/pages/alertas_page.dart';
import 'package:gastos/src/pages/categorias_nuevo.dart';
import 'package:gastos/src/pages/compararpresupuesto_page.dart';
import 'package:gastos/src/pages/home_categorias.dart';
import 'package:gastos/src/pages/home_page.dart';
import 'package:gastos/src/pages/mismovimientos_page.dart';
import 'package:gastos/src/pages/presupuesto_page.dart';
import 'package:gastos/src/pages/resumenpresupuesto_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/'      :  (BuildContext context) => HomePages(),
    'presupuesto'  :  (BuildContext context) => PresupuestoPage(),
    'resumen'      :  (BuildContext context) => ResumenPresupuestoPage(),
    'movimientos'  :  (BuildContext context) => MisMovimientosPage(),
    'alertas'      :  (BuildContext context) => AlertasPage(),
    'comparar'     :  (BuildContext context) => ComparaPresupuestoPage(),
    'categorias'   :  (BuildContext context) => HomeCategorias(),
    'categoriasp'  :  (BuildContext context) => CategoriasPruebas()

  };
}
