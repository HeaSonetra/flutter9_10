
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/controller/counter.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
      final counter=context.watch<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text('Counter : ${counter.count}',style: TextStyle(fontSize: 30),),
              SizedBox(height: 30,),
             // ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>Secondpage())), child: Text("Go Second Page"))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=>context.read<Counter>().increment(),
          child: Icon(Icons.add),
        ),
    );
  }
}