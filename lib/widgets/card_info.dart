import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final String sobre;
  final int tab;

  const CardInfo(this.sobre, this.tab);
  @override
  Widget build(BuildContext context) {
    void _showMaterialDialog() {
      showDialog(
          context: context,
          builder: (context) {
            return CustomAlert(sobre: sobre);
          });
    }

    return GestureDetector(
        onTap: () {
          switch (this.tab) {
            case 1:
              _showMaterialDialog();
              break;
            case 2:
              Navigator.pushNamed(context, 'mapa');
              break;
            case 3:
              Navigator.pushNamed(context, 'estructura');
              break;
            default:
          }
        },
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
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

class CustomAlert extends StatelessWidget {
  const CustomAlert({
    Key? key,
    required this.sobre,
  }) : super(key: key);

  final String sobre;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))),
      contentPadding: EdgeInsets.only(top: 10.0),
      content: Container(
        width: 400.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  this.sobre,
                  style: TextStyle(fontSize: 24.0),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Divider(
              color: Colors.grey,
              height: 4.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Martes  -   Sábado",
                      border: InputBorder.none,
                    ),
                    maxLines: 1,
                  ),
                  Text('10:00 AM - 8:00 PM')
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Domingos ",
                      border: InputBorder.none,
                    ),
                    maxLines: 1,
                  ),
                  Text('9:00 AM - 1:00 PM')
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 4.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Visitantes Nacionales:(5 cup)",
                      border: InputBorder.none,
                    ),
                    maxLines: 1,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Visitantes Internacionales:(3 cuc)",
                      border: InputBorder.none,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            InkWell(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32.0),
                        bottomRight: Radius.circular(32.0)),
                  ),
                  child: Text(
                    "Cerrar",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
