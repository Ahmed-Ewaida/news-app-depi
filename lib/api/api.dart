import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> getData() async {
    return await _dio.get(
      "https://newsapi.org/v2/everything?q=tesla&from=2026-02-03&sortBy=publishedAt&apiKey=0c418ce2ad364ce5a54b886a9d74e6f2",
    );
  }
}
