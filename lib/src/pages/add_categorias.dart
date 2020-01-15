import 'package:flutter/material.dart';
import 'package:gastos/data/firestore_service.dart';
import 'package:gastos/model/gastos_model.dart';


class AddCategoriasPage extends StatefulWidget {
  const AddCategoriasPage({Key key, this.categoria}) : super(key: key);

  final Categorias categoria;

  @override
  _AddCategoriasPageState createState() => _AddCategoriasPageState();
}

class _AddCategoriasPageState extends State<AddCategoriasPage> {
TextEditingController _categoriaController;
GlobalKey <FormState> _key = GlobalKey<FormState>();
TextEditingController _subcategoriaController;
FocusNode _subcategoriaNode;

@override
void initState(){
  super.initState();
  _categoriaController = TextEditingController(text:isEditMote ? widget.categoria.categoria:'');


  _subcategoriaController = TextEditingController(text:isEditMote ? widget.categoria.subcategoria:'');
  _subcategoriaNode = FocusNode();
  
  
    
}

  get isEditMote => widget.categoria != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditMote ? 'Editar Categoria' : 'Agregar Categoria'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                textInputAction: TextInputAction.next,
                onEditingComplete: () {
                  FocusScope.of(context).requestFocus(_subcategoriaNode);
                },
                controller: _categoriaController,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "Campo de Categoria en Blanco corregir";
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Categoria",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                focusNode: _subcategoriaNode,
                controller: _subcategoriaController,
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: "Subcategoria",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text(isEditMote ? "Actualizar" : "Guardar"),
                onPressed: () async {
                  if (_key.currentState.validate()) {
                    try {
                      if (isEditMote) {
                        Categorias categorias = Categorias(
                          categoria: _categoriaController.text,
                          subcategoria: _subcategoriaController.text,
                          id: widget.categoria.id,
                        );
                        await FirestoreService().updateCategorias(categorias);
                      } else {
                           Categorias categorias = Categorias (
                             categoria: _categoriaController.text,
                             subcategoria: _subcategoriaController.text
                           ); 
                        await FirestoreService().addCategorias(categorias);
                      }
                      Navigator.pop(context);
                    } catch (e) {
                      print(e);
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );

  }
}
//*---------------------------------------------*/
//*          */
//*---------------------------------------------*/