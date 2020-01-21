import 'package:flutter/material.dart';

final _cons = <String, IconData>{

 'add_alert'             : Icons.add_alert,
 'accessibility'         : Icons.accessibility,
 'folder_open'           : Icons.folder_open,
  'donut_large'          : Icons.donut_large,
  'attach_money'         : Icons.attach_money,
  'check_circle'         : Icons.check_circle,
 'list'                  : Icons.list
  
  
};

Icon getIcon (String nombreIcono){

return Icon(_cons[nombreIcono], color: Colors.blue);


}

// hola
// hola ii
