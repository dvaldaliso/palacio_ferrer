import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class PaseoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 180,
          ),
          //Tarjetas principales
          CardSwiper(
            movies: moviesProvider.listGenerales,
          ),
          //Slider de Peliculas
          MovieSlider(
            movies: moviesProvider.popularMovies,
            titulo: 'Salas', //opcional
            onNextPage: () => {moviesProvider.getPopularMovies()},
          )
        ],
      ),
    ));
  }
}
