import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/domain/download/download_model/download_model.dart';
import 'package:netflix/domain/downloadlist/downloadmovieslis.dart';

Future<List<DownloadMovies>> getallmovies() async {
  String baseurl = 'https://api.themoviedb.org/3/movie/popular?api_key=';
  final response = await http.get(Uri.parse(baseurl + apikey));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = DownloadMoviesList.fromJson(value);
    return data.data ?? [];
  }
  return [];
}
