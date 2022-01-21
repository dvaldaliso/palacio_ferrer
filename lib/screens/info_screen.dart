import 'package:flutter/material.dart';
import 'package:peliculas/widgets/card_info.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Seleccione una Categoria',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            CardInfo()
          ],
        ),
      ),
    );
  }
}
