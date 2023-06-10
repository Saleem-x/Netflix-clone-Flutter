import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/domain/newandhot/comingsoonmovie/coming_soon_movie/coming_soon_movie.dart';
import 'package:netflix/domain/newandhot/comingsoonmovie/comingsoonlist/comingsoonmovielist.dart';

Future<List<ComingSoonMovie>> getcomingsoonMovies() async {
  String baseurl = 'https://api.themoviedb.org/3/movie/upcoming?api_key=';
  final response = await http.get(Uri.parse(baseurl + apikey));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = ComingSoonMovieList.fromJson(value);
    return data.data ?? [];
  }
  return [];
}
