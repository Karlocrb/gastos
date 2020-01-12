
import 'package:flutter/material.dart';
import 'package:gastos/src/pages/alertas_page.dart';
import 'package:gastos/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertasPage()
        );
      }
      
      
      
      
      
      );
        


      

       
     //   body: HomePage()
      
    
  }
}
