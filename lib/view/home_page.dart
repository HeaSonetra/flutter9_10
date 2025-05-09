import 'package:demo_getx/controller/movie_controller.dart';
import 'package:demo_getx/view/favorite_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  final MovieController movieController=Get.find<MovieController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Movie")),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(onPressed: (){
            Get.to(()=>FavoritePage());
          }, icon: Icon(Icons.favorite))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Obx((){
          return ListView.builder(
            itemCount: movieController.movieModel.length,
            itemBuilder: (context,index){
            final movie=movieController.movieModel[index];
            return Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.amber
              ),
              child: Stack(
                children: [
                  Image(image: AssetImage(movie.image),fit: BoxFit.contain,),
                  Positioned(
                    right: 10,
                    child: IconButton(
                      onPressed: ()=>movieController.toggleFavorite(movie), icon: Icon(movie.isfavorite?Icons.favorite:Icons.favorite_border_outlined,color: Colors.red,))
                  ),
                  
                ],
              ),
            );
          }
          
        );
        }
            ),
      )
    );
  }
  
}