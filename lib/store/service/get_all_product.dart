import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:practice/store/model/product_model.dart';

import 'package:http/http.dart' as http;

class GetAllProduct {
  Future<List<ProductModel>> getAllProduct() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      List<ProductModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(ProductModel.fromJson(data[i]));
      }
      return productList;
    } else {
      throw Exception('find problem${response.statusCode}');
    }
  }
  // Future<List<ProductModel>> getAllProductTest() async {
  //   var dio = Dio();
  //   var response = await dio.request(
  //     'https://fakestoreapi.com/products',
  //     options: Options(
  //       method: 'GET',
  //     ),
  //   );
  //
  //   try {
  //     List<ProductModel> productList = List<ProductModel>.from(
  //         (response.data as List).map((e) => ProductModel.fromJson(e)));
  //
  //     return productList;
  //   } catch (e) {
  //     print('$e OMAR');
  //
  //     throw Exception();
  //   }
  // }
}
