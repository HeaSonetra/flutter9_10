

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:state_getx/controller/counterController.dart';
import 'package:state_getx/view/homepage.dart';

class Secondpage extends StatelessWidget {
   final Countercontroller countercontroller=Get.put(Countercontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: Obx(()=>Text(
          'Counter : ${countercontroller.count}',style: TextStyle(fontSize: 30),
        )
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: countercontroller.increment,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: countercontroller.decrement,
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 40,),
          FloatingActionButton(
            onPressed: ()=>Get.to(()=>Homepage()),
            child: Icon(Icons.arrow_back),
          )
        ],
      ),
    );
  }
}