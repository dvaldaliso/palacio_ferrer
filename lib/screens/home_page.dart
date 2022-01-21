import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/screens/info_screen.dart';
import 'package:peliculas/screens/screens.dart';
import 'package:peliculas/widgets/custom_navigatorbar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Historial'),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.delete_forever))
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigatorBar(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //cambiar para mostrar paginas respectivas
    //Provider Obtener el selected menu opt

    final uiProvider = Provider.of<MoviesProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return InfoScreen();
      case 1:
        return PaseoScreen();

      default:
        return PaseoScreen();
    }
  }
}
