import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/domain/released/released_movies/released_movies.dart';
import 'package:netflix/domain/released/released_movies_list/releasedmovieslist.dart';

Future<List<ReleasedMovies>> getreleasedMovies() async {
  String baseurl = 'https://api.themoviedb.org/3/discover/tv?api_key=';
  final response = await http.get(Uri.parse(baseurl + apikey));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = ReleasedMoviesList.fromJson(value);
    return data.data ?? [];
  }
  return [];
}
