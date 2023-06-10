import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/domain/tense%20drama/movies/drama_movies/drama_movies.dart';
import 'package:netflix/domain/tense%20drama/movieslist/dramamovielist.dart';

Future<List<DramaMovies>> getdrmaMoviesFunction() async {
  String baseurl = 'https://api.themoviedb.org/3/trending/tv/week?api_key=';
  final response = await http.get(Uri.parse(baseurl + apikey));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = DramMovieList.fromJson(value);
    log(data.data![0].originalName.toString());
    return data.data ?? [];
  }
  return [];
}
