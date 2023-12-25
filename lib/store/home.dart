import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:practice/store/custom_card.dart';
import 'package:practice/store/model/product_model.dart';
import 'package:practice/store/service/add_product.dart';
import 'package:practice/store/service/get_all_product.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              )),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 30),
        child: FutureBuilder<List<ProductModel>>(
          future: GetAllProduct().getAllProduct(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;
              return GridView.builder(
                itemCount: products.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 50,
                ),
                itemBuilder: (context, index) {
                  return CustomCard(
                    product: products[index],
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('error'),
              );
            } else {
              return const Center(
                child: Text('else'),
              );
            }
          },
        ),
      ),
    );
  }
}
