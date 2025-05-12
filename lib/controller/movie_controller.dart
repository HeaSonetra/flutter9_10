import 'package:demo_getx2/model/movieModel.dart';
import 'package:get/get.dart';


class MovieController extends GetxController {
    var movies=<MovieModel>[
      MovieModel(id: 1, title: "បូជាសព"),
      MovieModel(id: 2, title: "បងស្រលាញ់អូន"),
      MovieModel(id: 3, title: "អូនមិនស្រលាញ់បងទេ!"),
    ].obs;

    List<MovieModel> get favoriteMovies => movies.where((movie)=>movie.isfavorite).toList();

    void toggleFavorite(MovieModel movieModel){
      movieModel.isfavorite=!movieModel.isfavorite;
      movies.refresh();
    }
}

