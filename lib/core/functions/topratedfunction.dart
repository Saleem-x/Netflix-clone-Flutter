import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/domain/top%20rated/top_rated_movies/top_rated_movies.dart';
import 'package:netflix/domain/top%20rated/topratedlist/topratedlist.dart';

Future<List<TopRatedMovies>> gettopratedmovies() async {
  String baseurl = 'https://api.themoviedb.org/3/movie/top_rated?api_key=';
  final response = await http.get(Uri.parse(baseurl + apikey));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = TopRatedList.fromJson(value);
    log(data.data![0].originalTitle.toString());
    return data.data ?? [];
  }
  return [];
}
