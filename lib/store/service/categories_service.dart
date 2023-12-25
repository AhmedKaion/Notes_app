import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:practice/store/model/product_model.dart';

class CategoriesService{
Future<List<ProductModel>> getCategoriesProduct({required String categoryName})async{
  http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
  if (response.statusCode==200) {
    List<dynamic> data=  jsonDecode(response.body);

    List<ProductModel> productList=[];
    for(int i=0; i<data.length;i++){
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  } else{
    throw Exception('find problem${response.statusCode}');
  }
}
}