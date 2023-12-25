import 'package:flutter/material.dart';
import 'package:practice/store/model/product_model.dart';
import 'package:practice/store/update_product.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.product,
  });

  final ProductModel product;
  static String id ='Product Update';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProduct.id, arguments: product,);
      },

      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 40,
                spreadRadius: 0,
                offset: const Offset(10, 10),
                color: Colors.grey.withOpacity(0.2),
              )
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price.toString()}',
                          style: const TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 32,
            top: -25,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
