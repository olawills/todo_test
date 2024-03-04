import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:todo_test/backend/api_client.dart';
import 'package:todo_test/backend/basic_response.dart';

class DioClient implements ApiClient {
  late Dio _client;
  String getBaseUrl(Services service) {
    switch (service) {
      case Services.auth:
        return 'https://task-management-service-g1nr.onrender.com/api/v1/auth/';
      case Services.task:
        return 'https://task-management-service-g1nr.onrender.com/api/v1/auth/';
      case Services.user:
        return 'https://task-management-service-g1nr.onrender.com/api/v1/auth/';
    }
  }

  DioClient() {
    _client = Dio()
      ..options.connectTimeout = const Duration(seconds: 60)
      ..options.receiveTimeout = const Duration(seconds: 60)
      ..options.sendTimeout = const Duration(seconds: 60);
  }
  @override
  Future<BasicResponse> baseRequest<T>(
      {required Services service,
      required String path,
      required MethodType method,
      Map<String, dynamic>? payload,
      Map<String, dynamic>? queryParameters,
      T Function(Map<String, dynamic> json)? fromJson,
      bool? showLoader}) async {
    Response response;
    String uri = getBaseUrl(service);
    uri = path;

    try {
      switch (method) {
        case (MethodType.get):
          response = await _client.get(uri,
              data: payload, queryParameters: queryParameters);
          break;
        case MethodType.post:
          response = await _client.post(uri,
              data: payload, queryParameters: queryParameters);
          break;
        case MethodType.put:
          response = await _client.post(uri,
              data: payload, queryParameters: queryParameters);
          break;
        case MethodType.patch:
          response = await _client.post(uri,
              data: payload, queryParameters: queryParameters);
          break;
        case MethodType.delete:
          response = await _client.post(uri,
              data: payload, queryParameters: queryParameters);
          break;
      }
      // (response is String) ? jsonDecode(response as dynamic) : response;
      log('line 121');
      log((response is String) ? jsonDecode(response as dynamic) : response);

      return BasicResponse(
        // message: response.data['message'] as String,
        success: response.data['success'] as bool,
        // data: fromJson?.call(response.data as Map<String, dynamic>),
      );
    } on SocketException catch (e) {
      log(e.message);
      return BasicResponse();
    } on DioException catch (e) {
      log(e.response?.data['message']);
      return BasicResponse();
    }
  }
}
