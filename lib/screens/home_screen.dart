import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);

    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(0), child: Container()),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBarCustom(),
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
