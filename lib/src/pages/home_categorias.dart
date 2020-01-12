import 'package:flutter/material.dart';
import 'package:gastos/data/firestore_service.dart';
import 'package:gastos/model/gastos_model.dart';
import 'package:gastos/src/pages/add_categorias.dart';
import 'package:gastos/src/pages/categorias_detail.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: StreamBuilder(
        stream: FirestoreService().getCategorias() ,
        builder: (BuildContext context, AsyncSnapshot<List<Categorias>> snapshot){
          if(snapshot.hasError || !snapshot.hasData)
            return CircularProgressIndicator();
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              Categorias categorias = snapshot.data[index];
              return ListTile(
                title: Text(categorias.categoria),
                subtitle: Text(categorias.subcategoria),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      color: Colors.blue,
                      icon: Icon(Icons.edit),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(
                        builder: (_) => AddCategoriasPage(categoria: categorias),
                      )),
                    ),
                    IconButton(
                      color: Colors.red,
                      icon: Icon(Icons.delete),
                      onPressed: () => _deleteNote(context, categorias.id),
                    ),
                  ],
                ),
                onTap: ()=>Navigator.push(
                  context, MaterialPageRoute(
                    builder: (_) => CategoriasDetailsPage(categorias: categorias,),
                  ),
                ),
              );
           },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (_) => AddCategoriasPage()
          ));
        },
      ),
    );
  }

  void _deleteNote(BuildContext context,String id) async {
    if(await _showConfirmationDialog(context)) {
      try {
        await FirestoreService().deleteCategorias(id);
      }catch(e) {
        print(e);
      }
    }
  }

  Future<bool> _showConfirmationDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        content: Text("Esta seguro(a) de eliminar..?"),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.red,
            child: Text("Delete"),
            onPressed: () => Navigator.pop(context,true),
          ),
          FlatButton(
            textColor: Colors.black,
            child: Text("No"),
            onPressed: () => Navigator.pop(context,false),
          ),
        ],
      )
    );
  }
}