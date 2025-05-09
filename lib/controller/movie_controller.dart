import 'package:demo_getx/model/movie_model.dart';
import 'package:get/get.dart';

class MovieController extends GetxController {
  var movieModel =
      <MovieModel>[
        MovieModel(id: 1, title: "ម៉ែក្រឡាភ្លើង", image: "assets/movie1.webp"),
        MovieModel(id: 2, title: "បូជាសព", image: "assets/movie2.jpg"),
        MovieModel(id: 3, title: "ភីងភីង", image: "assets/movie3.jpg"),
        MovieModel(id: 4, title: "រញ៉េរញ៉ៃ", image: "assets/movie1.webp"),
      ].obs;

  List<MovieModel> get favoriteMovie =>
      movieModel.where((movie) => movie.isfavorite).toList();
    
  void toggleFavorite(MovieModel movie){
    movie.isfavorite=!movie.isfavorite;
    movieModel.refresh();
  }
}
