import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_vue/models/user.dart';

class Firestore {
  late final FirebaseFirestore _firestore;

  Firestore() {
    _firestore = FirebaseFirestore.instance;
  }

  void getAll(String collectionName) async {
    CollectionReference collectionReference =
        _firestore.collection(collectionName);
    QuerySnapshot snapshot = await collectionReference.get();
    print(snapshot);
  }

  Future<void> addUser(String collectionName, User user) async {
    CollectionReference collectionReference =
        _firestore.collection(collectionName);
    await collectionReference.add(user);
  }
}
