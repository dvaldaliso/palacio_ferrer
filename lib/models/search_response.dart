// To parse this JSON data, do
//
//     final searchResponse = searchResponseFromMap(jsonString);

import 'package:peliculas/models/models.dart';

class SearchResponse {
  SearchResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;
}
