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
            SizedBox(
              height: 150,
            ),
            CardInfo('Horarios', Icons.lock_clock),
            CardInfo('Localización', Icons.lock_clock)
          ],
        ),
      ),
    );
  }
}
