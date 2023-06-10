import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/domain/tense%20drama/southindianmovie/south_movies/south_movies.dart';
import 'package:netflix/domain/tense%20drama/southindianmovie/southmovelist/southmovielist.dart';

Future<List<SouthMovies>> getsouthMovies() async {
  String baseurl = 'https://api.themoviedb.org/3/movie/now_playing?api_key=';
  final response = await http.get(Uri.parse(baseurl + apikey));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = SouthMovieslist.fromJson(value);
    log(data.data![0].originalTitle.toString());
    return data.data ?? [];
  }
  return [];
}
