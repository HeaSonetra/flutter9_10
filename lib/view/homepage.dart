
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/controller/counter.dart';
import 'package:provider1/view/secondpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final counter=context.watch<Counter>();
    return Scaffold(
        appBar: AppBar(
          title: Text("Provider"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text('Counter : ${counter.count}',style: TextStyle(fontSize: 30),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>Secondpage())), child: Text("Go Second Page")),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()=>context.read<Counter>().decrement(), child:Text("-"))
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