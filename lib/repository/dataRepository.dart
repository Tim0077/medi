import 'package:cloud_firestore/cloud_firestore.dart';
import '../user.dart';

class DataRepository {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('users');

  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  Future<DocumentReference> addUser(User user) {
    return collection.add(user.toJson());
  }

  void updateuser(User user) async {
    await collection.doc(user.email).update(user.toJson());
  }

  void deleteuser(User user) async {
    await collection.doc(user.email).delete();
  }
}
