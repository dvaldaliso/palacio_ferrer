import 'package:flutter/material.dart';
import 'package:peliculas/widgets/my_text.dart';

class AppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 160,
          child: Image.asset('assets/ferrer_fondo.jpg', fit: BoxFit.cover),
        ),
        Container(
          width: double.infinity,
          height: 160,
          decoration: BoxDecoration(color: Color.fromARGB(100, 0, 0, 0)),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(height: 10),
                Text("Museo de las Artes",
                    style:
                        MyText.title(context)!.copyWith(color: Colors.white)),
                Container(height: 5),
                Text("Palacio Ferrer",
                    style: MyText.caption(context)!
                        .copyWith(color: Colors.grey[200]))
              ],
            ),
            Spacer(),
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ],
    );
  }
}
