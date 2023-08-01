import 'package:animation_flutter_app/controller/Counter_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

@override
State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

CounterController c1 = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.sunny))
        ],
      ), floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: (){
            c1.Increment();
          },
          child: Icon(Icons.add),
        ),FloatingActionButton(
          onPressed: (){
            c1.Decrement();
          },
          child: Icon(Icons.remove),
        ),
      ],
    ),
      body: Center(
        child: Obx(()=>Text("${c1.counterModel.counter.value}",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w500),),)
      ),
    );
  }
}
