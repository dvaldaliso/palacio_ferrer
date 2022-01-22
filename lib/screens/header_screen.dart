import 'package:flutter/material.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.transparent),
          child: CustomPaint(painter: _HeaderDesing()),
        ),
        _PageTitle()
      ],
    );
  }
}

class _PageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Museo de las Artes',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Palacio Ferrer',
              style: TextStyle(fontSize: 16, color: Colors.white))
        ],
      ),
    );
  }
}

class _HeaderDesing extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = Color(0xff3D81C1);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();
    path.lineTo(0, size.height * 0.30);
    var firstStart = Offset(size.width / 5, size.height);
    var firstend = Offset(size.width / 2.25, size.height - 50.0);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstend.dx, firstend.dy);
    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    var secondend = Offset(size.width, size.height - 10);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondend.dx, secondend.dy);

    path.lineTo(size.width, 0);

    /*path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width * 0.30, size.height * 0.40);
    path.lineTo(size.width * 0.90, size.height * 0.40);
    path.lineTo(size.width, size.height * 0.35);
    path.lineTo(size.width, 0);*/
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
