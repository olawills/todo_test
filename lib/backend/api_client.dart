import 'package:todo_test/backend/basic_response.dart';

abstract class ApiClient {
  Future<BasicResponse> baseRequest<T>({
    required Services service,
    required String path,
    required MethodType method,
    Map<String, dynamic>? payload,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic> json)? fromJson,
    bool? showLoader,
  });
}

enum MethodType { get, post, put, patch, delete }

enum Services { auth, task, user }
