//Servicio o provider de movie

import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];
  List<Movie> listInteriores = [];
  List<String> listGenerales = [];
  int popularPage = 0;

  MoviesProvider() {
    print('Movies providers inicializado');
    getOnDisplayMovies();
    getPopularMovies();
  }

  getOnDisplayMovies() async {
    print('GetFotosGenerales');
    try {
      listGenerales = [
        "palacio1.jpg",
        "palacio2.jpg",
        "palacio3.jpg",
        "palacio4.jpg",
        "palacio5.jpg",
        "palacio6.jpg",
        "palacio7.jpg",
        "palacio8.jpg"
      ];
      notifyListeners(); //para cualquier widget que use los datos se redibuje
    } finally {}
  }

  interioresMuebles() {
    Movie comedor = Movie(
        backdropPath: 'manigueta.jpg',
        id: 4,
        originalTitle: 'Comedor',
        overview:
            'Lorem ipsum dolor sit amet consectetur adipiscing elit a pharetra, libero class euismod diam sollicitudin gravida aliquam. Dictum et fusce pellentesque varius integer nulla litora mi tempor, volutpat netus suspendisse proin nisi viverra massa. Hac id ante congue nulla rutrum magna phasellus a consequat, orci hendrerit aliquet posuere iaculis leo vestibulum volutpat metus sodales, tempus sagittis conubia himenaeos dignissim scelerisque class ligula.',
        posterPath: 'manigueta.jpg',
        title: 'Comedor',
        interiores: []);
    Movie salon = Movie(
        backdropPath: 'manigueta.jpg',
        id: 5,
        originalTitle: 'Salon',
        overview:
            'Lorem ipsum dolor sit amet consectetur adipiscing elit a pharetra, libero class euismod diam sollicitudin gravida aliquam. Dictum et fusce pellentesque varius integer nulla litora mi tempor, volutpat netus suspendisse proin nisi viverra massa. Hac id ante congue nulla rutrum magna phasellus a consequat, orci hendrerit aliquet posuere iaculis leo vestibulum volutpat metus sodales, tempus sagittis conubia himenaeos dignissim scelerisque class ligula.',
        posterPath: 'manigueta.jpg',
        title: 'Salon',
        interiores: []);
    Movie dormitorio = Movie(
        backdropPath: 'manigueta.jpg',
        id: 6,
        originalTitle: 'Dormitorio',
        overview:
            'Lorem ipsum dolor sit amet consectetur adipiscing elit a pharetra, libero class euismod diam sollicitudin gravida aliquam. Dictum et fusce pellentesque varius integer nulla litora mi tempor, volutpat netus suspendisse proin nisi viverra massa. Hac id ante congue nulla rutrum magna phasellus a consequat, orci hendrerit aliquet posuere iaculis leo vestibulum volutpat metus sodales, tempus sagittis conubia himenaeos dignissim scelerisque class ligula.',
        posterPath: 'manigueta.jpg',
        title: 'Dormitorio',
        interiores: []);
    listInteriores.add(comedor);
    listInteriores.add(salon);
    listInteriores.add(dormitorio);
  }

  getPopularMovies() async {
    interioresMuebles();
    Movie recibidor = Movie(
        backdropPath: 'recibidor.jpg',
        id: 1,
        originalTitle: 'Recibidor',
        overview:
            'Lorem ipsum dolor sit amet consectetur adipiscing elit a pharetra, libero class euismod diam sollicitudin gravida aliquam. Dictum et fusce pellentesque varius integer nulla litora mi tempor, volutpat netus suspendisse proin nisi viverra massa. Hac id ante congue nulla rutrum magna phasellus a consequat, orci hendrerit aliquet posuere iaculis leo vestibulum volutpat metus sodales, tempus sagittis conubia himenaeos dignissim scelerisque class ligula.',
        posterPath: 'recibidor.jpg',
        title: 'Recibidor',
        interiores: []);
    Movie etnografia = Movie(
        backdropPath: 'etnografia.jpg',
        id: 2,
        originalTitle: 'Etnografia',
        overview:
            'Lorem ipsum dolor sit amet consectetur adipiscing elit a pharetra, libero class euismod diam sollicitudin gravida aliquam. Dictum et fusce pellentesque varius integer nulla litora mi tempor, volutpat netus suspendisse proin nisi viverra massa. Hac id ante congue nulla rutrum magna phasellus a consequat, orci hendrerit aliquet posuere iaculis leo vestibulum volutpat metus sodales, tempus sagittis conubia himenaeos dignissim scelerisque class ligula.',
        posterPath: 'etnografia.jpg',
        title: 'Etnografia',
        interiores: []);
    Movie muebles = Movie(
        backdropPath: 'manigueta.jpg',
        id: 3,
        originalTitle: 'Musica',
        overview:
            'Lorem ipsum dolor sit amet consectetur adipiscing elit a pharetra, libero class euismod diam sollicitudin gravida aliquam. Dictum et fusce pellentesque varius integer nulla litora mi tempor, volutpat netus suspendisse proin nisi viverra massa. Hac id ante congue nulla rutrum magna phasellus a consequat, orci hendrerit aliquet posuere iaculis leo vestibulum volutpat metus sodales, tempus sagittis conubia himenaeos dignissim scelerisque class ligula.',
        posterPath: 'manigueta.jpg',
        title: 'Musica',
        interiores: listInteriores);
    popularMovies.add(recibidor);
    popularMovies.add(etnografia);
    popularMovies.add(muebles);
    notifyListeners(); //para cualquier widget que use los datos se redibuje
  }

  Future<List<Movie>> getMovieCast(int id) async {
    Movie listInteriore2 = popularMovies.where((i) => i.id == id).first;

    return listInteriore2.interioresList();
  }

  int _selectedMenuOpt = 0;

  int get selectedMenuOpt {
    return this._selectedMenuOpt;
  }

  set selectedMenuOpt(int i) {
    this._selectedMenuOpt = i;
    this.notifyListeners();
  }
}
