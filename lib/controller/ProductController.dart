import 'package:animation_flutter_app/model/ProductModel.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  RxList CartProduct = [].obs;

  get TotalLenght => CartProduct.length;

  void AddProdect({required ProductModel product}){
    CartProduct.add(product);

  }void RemoveProdect({required ProductModel product}){
    CartProduct.remove(product);

  }
}