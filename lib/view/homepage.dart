

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_getx/controller/counterController.dart';
import 'package:state_getx/view/secondpage.dart';

class Homepage extends StatelessWidget {
 final Countercontroller countercontroller=Get.put(Countercontroller());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Obx(()=>Text(
          'Counter : ${countercontroller.count}'
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
            onPressed: ()=>Get.to(()=>Secondpage()),
            child: Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}