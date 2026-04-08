import 'package:dio/dio.dart';
import '../api_client/api_manager.dart';
import '../models/user.dart';
import 'package:local_api_client/local_api_client.dart';

class UsersService {
  static Future<List<User>> getAllUsers() async {
    try {
      final dio = ApiManager.dio;
      final response = await dio.get('/api/v1/auth/users');
      final data = response.data;

      List<dynamic> usersList = <dynamic>[];

      if (data is List<dynamic>) {
        usersList = data;
      } else if (data is Map<String, dynamic>) {
        final success = data['success'] as bool? ?? false;
        if (!success) return [];
        final result = data['result'];
        if (result is List<dynamic>) {
          usersList.addAll(result);
        } else if (result is Map<String, dynamic> && result['user'] is Map<String, dynamic>) {
          usersList.add(result['user'] as Map<String, dynamic>);
        }
        usersList.addAll(data['users'] as List<dynamic>? ?? <dynamic>[]);
        usersList.addAll(data['data'] as List<dynamic>? ?? <dynamic>[]);
      }

      final users = <User>[];
      for (final json in usersList) {
        if (json is Map<String, dynamic>) {
          try {
            users.add(User.fromJson(json));
          } catch (e) {
            // Skip invalid
          }
        }
      }
      return users;
    } on DioException {
      return [];
    } catch (e) {
      return [];
    }
  }
}


