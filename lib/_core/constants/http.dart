import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: "http://192.168.0.40:8080",
    contentType: "application/json: charset=utf-8",
  ),
);

// 휴대폰 로컬에 JWT 토큰을 저장하기 위한 라이브러리
const secureStorage = FlutterSecureStorage();
