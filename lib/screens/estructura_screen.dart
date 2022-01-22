import 'package:flutter/material.dart';

class EstrucuturaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estrucutura'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/estructura.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}
