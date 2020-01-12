

//+   Definicion de campos Base de Datos


//Categorias


class Categorias {
  final String categoria;
  final  String subcategoria;
  final String id;


  Categorias({this.categoria, this.subcategoria, this.id});

  Categorias.fromMap(Map<String, dynamic>data, String id):
    id=id,
    categoria = data['categoria'],
    subcategoria = data['subcategoria'];

  
  Map<String,dynamic> toMap() => {
    'categoria': categoria,
    'subcategoria': subcategoria,
  };

}


