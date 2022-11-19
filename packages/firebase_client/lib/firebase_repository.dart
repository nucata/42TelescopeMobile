abstract class FirebaseRepository<T> {
  Map<String, dynamic> toJson(T data);

  T fromJson(Map<String, dynamic> json);
}
