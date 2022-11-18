import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HttpService {
  Future<Response> get(Uri url) {
    return http.get(url);
  }

  Future<Response> post(Uri uri) {
    return http.post(uri);
  }

  Future<Response> del(Uri uri) {
    return http.delete(uri);
  }

  Future<Response> update(Uri uri) {
    return http.put(uri);
  }
}
