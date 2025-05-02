import 'package:bloc1/controller/counter_bloc.dart';
import 'package:bloc1/controller/counter_event.dart';
import 'package:bloc1/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Center(child: Text("SecondPage")),
      ),
          body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc,int>(
              builder: (context,count){
                return Text('$count',style: TextStyle(fontSize: 60));
              }
              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){context.read<CounterBloc>().add(IncrementEvent());}, child:Text("Increment")),
              ElevatedButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              }, child: Text("Back to home",style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}