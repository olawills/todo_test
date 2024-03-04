import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:todo_test/backend/api_client.dart';
import 'package:todo_test/backend/auth_datasource.dart';
import 'package:todo_test/backend/basic_response.dart';
import 'package:todo_test/backend/login_payload.dart';
import 'package:todo_test/services/locator.dart';

class AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  AuthRepository({AuthRemoteDataSource? authRemoteDataSource})
      : _authRemoteDataSource = authRemoteDataSource ??
            AuthRemoteDataSource(
                client: AppInitializer.locator.get<ApiClient>());

  Future<Either<Exception, BasicResponse>> login(LoginPayload payload) async {
    try {
      final response = await _authRemoteDataSource.login(payload);
      log('Pass the stage of authremotedatasource 🌟🌟🌟');
      return Right(response);
    } catch (e) {
      log('got error from unsuccessful trials 😢😢');
      return Left(Exception(e.toString()));
    }
  }
}
