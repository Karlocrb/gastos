
  import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gastos/model/gastos_model.dart';
//*----------------------------------------------------------------*/
//                 *Lectura de la Base de Datos */
//*----------------------------------------------------------------*/

class FirestoreService {
  static final FirestoreService _firestoreService =
      FirestoreService._internal();
  Firestore _dm = Firestore.instance;

  FirestoreService._internal();

  factory FirestoreService() {
    return _firestoreService;
  }
  

//*----------------------------------------------------------------*/
//                      *Lectura de Movimientos */
//*----------------------------------------------------------------*/


Stream<List<Categorias>> getMovimientos() {
    return _dm.collection('movimientos').snapshots().map(
          (snapshot) => snapshot.documents.map(
            (doc) => Categorias.fromMap(doc.data, doc.documentID),
          ).toList(),
        );
  }
}