import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:gastos/model/gastos_model.dart';

//*----------------------------------------------------------------*/
//                  *Rutina Crud de la base de datos */
//*----------------------------------------------------------------*/

class FirestoreService {
  static final FirestoreService _firestoreService =
      FirestoreService._internal();
  Firestore _db = Firestore.instance;

  FirestoreService._internal();

  factory FirestoreService() {
    return _firestoreService;
  }

//*----------------------------------------------------------------*/
//                 *Lectura de la Base de Datos */
//*----------------------------------------------------------------*/


  Stream<List<Categorias>> getCategorias() {
    return _db.collection('categorias').snapshots().map(
          (snapshot) => snapshot.documents.map(
            (doc) => Categorias.fromMap(doc.data, doc.documentID),
          ).toList(),
        );
  }

//*----------------------------------------------------------------*/
//*         Agrega Categorias */
//*----------------------------------------------------------------*/
  Future<void> addCategorias(Categorias categorias) {
    return _db.collection('categorias').add(categorias.toMap());
  }
//*----------------------------------------------------------------*/
//           *Elimina Categorias */
//*----------------------------------------------------------------*/
  Future<void> deleteCategorias(String id) {
    return _db.collection('categorias').document(id).delete();
  }
//*---------------------------------------------*/
//           *Actualiza Categorias */
//*---------------------------------------------*/
  Future<void> updateCategorias(Categorias categoria) {
    return _db.collection('categorias').document(categoria.id).updateData(categoria.toMap());
  }

}
