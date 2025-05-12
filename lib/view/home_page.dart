

import 'package:demo_getx2/controller/movie_controller.dart';
import 'package:demo_getx2/view/favorite_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  final MovieController movieController=Get.put(MovieController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("HomePage"),
        ),
        actions: [
          IconButton(onPressed: (){
              Get.to(()=>FavoritePage());
          }, icon: Icon(Icons.favorite))
        ],
      ),
      body: Obx((){
        return ListView.builder(
          itemCount: movieController.movies.length,
          itemBuilder: (context,index){
            final movie=movieController.movies[index];
              return ListTile(
                  title: Text(movie.title),
                  trailing: IconButton(
                    onPressed: ()=>movieController.toggleFavorite(movie), 
                    icon: Icon(
                      movie.isfavorite? 
                      Icons.favorite :Icons.favorite_border_outlined
                     ),
                     color:Colors.red
                    ),
              );
          });
      }),
    );
  }
}