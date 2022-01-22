import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:peliculas/widgets/categoriaicon.dart';

class CardInfo extends StatelessWidget {
  final String sobre;
  final IconData icon;

  const CardInfo(this.sobre, this.icon);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      margin: EdgeInsets.all(20),
      height: 150,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.blue.withOpacity(0.7),
                          Colors.transparent
                        ])),
              )),
          Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    // Todo poner despues

                    /*CategoryIcon(
                                          color: categorias[index].color,
                                          iconName: categorias[index].icon),*/
                    SizedBox(width: 10),
                    ClipOval(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          this.sobre,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}
