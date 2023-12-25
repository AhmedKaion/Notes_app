import 'package:practice/store/api.dart';
import 'package:practice/store/model/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        "title": title,
        "price": price,
        "description": desc,
        "image": image,
        "category": category
      },
      // token: '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',
    );
    return ProductModel.fromJson(data);
  }
}
