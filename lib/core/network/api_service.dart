import 'package:dio/dio.dart';

class ApiServices {
  Dio dio = Dio();
  Future<Response> postData({
    required String url,
    required Object? data,
    required String token,
    String? contentType,
    Map<String, dynamic>? headers,
  }) async {
    final response = await dio.post(
      url,
      data: data,
      options: Options(
        contentType: contentType,
        headers: headers ??
            {
              'Authorization': 'Bearer $token',
            },
      ),
    );
    return response;
  }
}
