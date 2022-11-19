/* Create an abstract class with masterDetails repository */
import 'package:firebase_client/firebase_client.dart';

/* Create a class with masterDetails repository */
abstract class MasterDetailRepository<T> extends FirebaseFirestoreClient<T> {
  /* Create a method to save an entity */
  Future<void> saveData(T data, String collectionName) async {
    await save(data, collectionName);
  }

  /* Create a method to delete an entity */
  Future<void> deleteById(String id, String collectionName) async {
    await delete(id, collectionName);
  }

  /* Create a method to get all entities */
  Future<List<T>> getAllData(String collectionName) async {
    return await getAll(collectionName);
  }

  /* Create a method to get an entity by id */
  Future<T> getDataById(String id, String collectionName) async {
    return await getById(id, collectionName);
  }

  /* Create a method to update an entity */
  Future<void> updateData(T data, String collectionName) async {
    return await update(data, collectionName);
  }
}
