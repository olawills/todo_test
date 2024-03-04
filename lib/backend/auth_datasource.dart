import 'package:todo_test/backend/api_client.dart';
import 'package:todo_test/backend/basic_response.dart';
import 'package:todo_test/backend/login_payload.dart';

class AuthRemoteDataSource {
   final ApiClient client;

  AuthRemoteDataSource({required this.client});
  Future<BasicResponse> login(LoginPayload payload) async {
    return await client.baseRequest(
      service: Services.auth,
      path: 'login',
      method: MethodType.post,
      payload: payload.toJson(),
      showLoader: true,
      fromJson: (json) => BasicResponse.fromJson(json),
    );
  }
}