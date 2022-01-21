import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:provider/provider.dart';

class CustomNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<MoviesProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (int i) => uiProvider.selectedMenuOpt = i,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration), label: 'Paseo')
        ]);
  }
}
