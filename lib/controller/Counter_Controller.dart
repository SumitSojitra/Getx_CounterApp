import 'package:animation_flutter_app/model/Counter_Model.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{
  CounterModel counterModel = CounterModel(counter: 0.obs);

  void Increment(){
    counterModel.counter++;
  }
  void Decrement(){
    counterModel.counter--;
  }
}
