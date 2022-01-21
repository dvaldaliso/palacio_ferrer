import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/screens/home_page.dart';
import 'package:peliculas/screens/screens.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
          lazy:
              false, //esto se pone para en cuanto levante la app se llame el provider
        )
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {'home': (_) => HomePage(), 'details': (_) => DetailsScreen()},
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(color: Colors.indigo),
          scaffoldBackgroundColor: Colors.black),
    );
  }
}
