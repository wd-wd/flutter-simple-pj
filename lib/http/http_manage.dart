import 'package:dio/dio.dart';

class HttpManage {
  static HttpManage _instance = HttpManage._internal();

  factory HttpManage() => _instance;
  Dio dio;

  HttpManage._internal() {
    if (dio == null) {
      // 或者通过传递一个 `options`来创建dio实例
      BaseOptions options = BaseOptions(
        baseUrl: "https://test-api.happygo.com",
        connectTimeout: 5000,
        receiveTimeout: 3000,
        contentType: "application/json"
      );
      dio = Dio(options);
    }
  }
}
