import 'package:animation_flutter_app/controller/ProductController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  ProductController c2 = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carted Items"),),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Total Price"),Text(""),
        ],
      ),
      body: Obx(()=>ListView.builder(itemCount: c2.TotalLenght,itemBuilder: (context,i)=>ListTile(
        leading: Text("${c2.CartProduct[i].id}"),
        title: Text("${c2.CartProduct[i].name}"),
        subtitle: Text("${c2.CartProduct[i].price}"),
        trailing: IconButton(onPressed: (){
          c2.RemoveProdect(product: c2.CartProduct[i]);
        },icon: Icon(CupertinoIcons.cart_fill_badge_minus),),
      )),),
    );
  }
}
