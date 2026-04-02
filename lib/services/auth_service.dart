import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../api_client/api_manager.dart';
import '../models/user.dart';

class AuthService {

  static const String _tokenKey = 'auth_token';

  /// Login and return token if successful
  static Future<String?> login(String email, String password) async {
    try {
      final response = await ApiManager.dio.post(
        '/api/v1/auth/login',
        data: {
          'email': email.trim(),
          'password': password.trim(),
        },
      );
      final Map<String, dynamic> data = response.data;
      if (data['success'] == true) {
        final token = data['result']['token'] ?? data['token'];
        return token;
      }
      return null;
    } on DioException catch (e) {
      throw Exception('Login failed: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Login error: $e');
    }
  }

  /// Register and return token if successful
  static Future<String?> register(String name, String email, String password) async {
    try {
      final response = await ApiManager.dio.post(
        '/api/v1/auth/register',
        data: {
          'name': name.trim(),
          'email': email.trim(),
          'password': password.trim(),
        },
      );
      final Map<String, dynamic> data = response.data;
      if (data['success'] == true) {
        final token = data['result']['token'] ?? data['token'];
        return token;
      }
      return null;
    } on DioException catch (e) {
      throw Exception('Registration failed: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Registration error: $e');
    }
  }

  /// Get current user information
  static Future<User?> getCurrentUser() async {
    try {
      final response = await ApiManager.dio.get('/api/v1/auth/me');
      final Map<String, dynamic> data = response.data;
      if (data['success'] == true) {
        final userJson = data['result']?['user'] ?? data['user'];
        return User.fromJson(userJson);
      }
      return null;
    } on DioException catch (e) {
      print('Failed to get user: ${e.response?.data ?? e.message}');
      return null;
    } catch (e) {
      print('Get user error: $e');
      return null;
    }
  }

  /// Save token to shared_preferences
  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token);
  }

  /// Load token from shared_preferences
  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  /// Clear token
  static Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
    ApiManager.dio.interceptors.clear(); // Clear auth interceptor
  }
}
