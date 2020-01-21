

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

class Movimientos {
  final String categoria;
  final String subcategoria;
  final String comprador;
  final int valor;
  final String observaciones;
  final DateTime fecha;
  final String id;

Movimientos({this.categoria, this.subcategoria, this.comprador, this.valor, this.observaciones, this.fecha, this.id});


Map<String, dynamic> toMov()=> {
  'categoria' : categoria,
  'subcategora' : subcategoria,
  'comprador' : comprador,
  'fecha' : fecha,
  'valor' : valor,
  'observaciones' :observaciones,
  'id' : 'id'
};

}
