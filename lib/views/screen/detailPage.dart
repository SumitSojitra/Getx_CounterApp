import 'package:animation_flutter_app/controller/ProductController.dart';
import 'package:animation_flutter_app/model/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
   DetailPage({super.key});

  ProductController c1 = Get.put(ProductController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Products"),
        actions: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Obx(() => Text("${c1.TotalLenght}"),),
              IconButton(onPressed: (){
                Get.toNamed('/Cart');
              }, icon: Icon(CupertinoIcons.cart)),
            ],
          )
        ],
      ),
      body: ListView.builder(itemCount: allProduct.length,itemBuilder: (context,i)=>ListTile(
        title: Text("${allProduct[i].name}"),
        subtitle: Text("${allProduct[i].price}"),
        leading: Text("${allProduct[i].id}"),
        trailing: IconButton(onPressed: (){
          c1.AddProdect(product: allProduct[i]);
        },icon: Icon(CupertinoIcons.cart_fill_badge_plus),),
      )),
    );
  }
}
