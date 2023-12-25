import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> post({
    required String url,
    required dynamic body,
    // required String? token,
  }) async {
    // Map<String, String> headers = {};
    // if (token != null) {
    //   headers.addAll({'Authorization': 'Bearer $token'});
    // }
    http.Response response = await http.post(
      Uri.parse(url), body: body,
      // headers: headers
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'find problem${response.statusCode} with ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> put({
    required String url,
    required dynamic body,
    // required String? token,
  }) async {
    // Map<String, String> headers = {};
    // headers.addAll({
    //   'Content-Type': 'application/x-www-form-urlencoded',
    // });
    // if (token != null) {
    //   headers.addAll({'Authorization': 'Bearer $token'});
    // }
    print('url=$url body=$body');
    http.Response response = await http.post(
      Uri.parse(url), body: body,
      // headers: headers
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);

      return data;
    } else {
      throw Exception(
          'find problem${response.statusCode} with ${jsonDecode(response.body)}');
    }
  }
}
