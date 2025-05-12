import 'package:demo_getx2/controller/movie_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FavoritePage extends StatelessWidget {
  final MovieController movieController = Get.find<MovieController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("FavoritePage"))),
      body: Obx(() {
        final favorites = movieController.favoriteMovies;
        return favorites.isEmpty
            ? Center(child: Text("No favorite movie yet"))
            : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final movie = favorites[index];
                return ListTile(title: Text(movie.title));
              },
            );
      }),
    );
  }
}
