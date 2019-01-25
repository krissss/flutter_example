import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Request {
  static const String baseUrl = 'http://www.shuqi.com/';

  static Future<dynamic> get(String url, {Map params}) async {
    return Request.mock(url, params: params);
  }

  static Future<dynamic> post(String url, {Map params}) async {
    return Request.mock(url, params: params);
  }

  static Future<dynamic> mock(String url, {Map params}) async {
    var responseStr = await rootBundle.loadString('mock/$url.json');
    var responseJson = json.decode(responseStr);
    return responseJson['data'];
  }
}