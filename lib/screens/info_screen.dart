import 'package:flutter/material.dart';
import 'package:peliculas/widgets/card_info.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 150,
            ),
            CardInfo('Horarios y precios', 1),
            CardInfo('Localización', 2),
            CardInfo('Estructura', 3)
          ],
        ),
      ),
    );
  }
}
