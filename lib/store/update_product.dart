import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:practice/chat/text_field.dart';
import 'package:practice/store/custom_button.dart';
import 'package:practice/store/model/product_model.dart';
import 'package:practice/store/service/update_product.dart';

class UpdateProduct extends StatefulWidget {
   const UpdateProduct({super.key});
  static String id ='update product';

  @override
  State<UpdateProduct> createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  String? productName,desc,image;

  String? price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return  ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Update Product',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100,),
               CustomField(
                 hintText: 'Product Name',inputType: null,
                 onChanged: (data) {
                 productName=data;
                 } ,
               ),
               const SizedBox(height: 10,),
                CustomField(
                  hintText: 'description',
                  onChanged: (data) {
                    desc=data;
                  }, inputType: null ,),
               const SizedBox(height: 10,),
                CustomField(hintText: 'price',inputType: TextInputType.number,
                  onChanged: (data) {
                    price= data;

                  } ,),
               const SizedBox(height: 10,),
                CustomField(
                  hintText: 'image',
                  inputType: null  ,
                    onChanged: (data) {
                  image= data;
                } ,),
               const SizedBox(height: 50,),
                UniButton(text: 'Update',
                  onTap: ()async{
                  isLoading = true;
                  setState(() {

                  });
                  try {
                    await updateProduct(product);
                    print('success');
                  } catch (e) {
                    print(e.toString());
                  }
                  isLoading =false;
                  setState(() {

                  });
                },
                ),

              ],
            ),
          ),
        ),


      ),
    );
  }

  Future <void> updateProduct(ProductModel product) async{
    await UpdateProductService().updateProduct(
      id: product.id,
        title:productName == null? product.title : productName!,
        price: price == null ? product.price.toString() : price!,
        desc: desc == null ? product.description : desc!,
        image: image == null? product.image :image!,
        category:product.category
    );
  }
}
