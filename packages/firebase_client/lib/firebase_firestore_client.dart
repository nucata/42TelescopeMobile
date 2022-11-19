import 'package:cloud_firestore/cloud_firestore.dart';

import 'firebase_client.dart';

abstract class FirebaseFirestoreClient<T> implements FirebaseRepository<T> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> save(T data, String collectionName) async {
    final dataConverted = toJson(data);
    await firestore
        .collection(collectionName)
        .doc(dataConverted["id"])
        .set(dataConverted);
  }

  Future<void> delete(String id, String collectionName) async {
    await firestore.collection(collectionName).doc(id).delete();
  }

  Future<List<T>> getAll(String collectionName) async {
    final snapshot = await firestore.collection(collectionName).get();
    return snapshot.docs
        .map((data) => data.data())
        .map((e) => fromJson(e))
        .toList();
  }

  Future<T> getById(String id, String collectionName) async {
    final snapshot = await firestore.collection(collectionName).doc(id).get();
    if (snapshot.data() != null) {
      return fromJson(snapshot.data()!);
    } else {
      throw Exception("Data not found");
    }
  }

  Future<void> update(T data, String collectionName) async {
    final dataConverted = toJson(data);
    await firestore
        .collection(collectionName)
        .doc(dataConverted["id"])
        .update(dataConverted);
  }
}
