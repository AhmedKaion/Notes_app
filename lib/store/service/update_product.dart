import 'package:practice/store/api.dart';
import 'package:practice/store/model/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required int id,
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    print('product id =$id');
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
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