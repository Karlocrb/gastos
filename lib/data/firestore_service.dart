import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:gastos/model/gastos_model.dart';



class FirestoreService {
  static final FirestoreService _firestoreService =
      FirestoreService._internal();
  Firestore _db = Firestore.instance;

  FirestoreService._internal();

  factory FirestoreService() {
    return _firestoreService;
  }

  Stream<List<Categorias>> getCategorias() {
    return _db.collection('categorias').snapshots().map(
          (snapshot) => snapshot.documents.map(
            (doc) => Categorias.fromMap(doc.data, doc.documentID),
          ).toList(),
        );
  }

  Future<void> addCategorias(Categorias categorias) {
    return _db.collection('categorias').add(categorias.toMap());
  }

  Future<void> deleteCategorias(String id) {
    return _db.collection('categorias').document(id).delete();
  }

  Future<void> updateCategorias(Categorias categoria) {
    return _db.collection('categorias').document(categoria.id).updateData(categoria.toMap());
  }

}
