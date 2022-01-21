class Movie {
  Movie(
      {required this.backdropPath,
      required this.id,
      required this.originalTitle,
      required this.overview,
      required this.posterPath,
      required this.title,
      required this.interiores});

  String backdropPath;
  int id;
  String originalTitle;
  String overview;
  List<Movie>? interiores;
  String posterPath;
  String title;

  get fullPosterImg {
    return 'assets/salas/${this.posterPath}';
  }

  get fullbackdropPathImg {
    return 'assets/salas/${this.posterPath}';
  }

  Future<List<Movie>> interioresList() async {
    return this.interiores!;
  }

  get haveList {
    if (this.interiores != null) {
      return true;
    } else {
      return false;
    }
  }
}
