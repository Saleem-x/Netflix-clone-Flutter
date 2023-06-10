import 'dart:developer';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/domain/search/search_movies/search_movies/search_movies.dart';
import 'package:netflix/domain/search/search_movies/search_movies/searchmovieslist/searchmovieslist.dart';

Future<List<SearchMovies>> getsearchedmovies(String query) async {
  const searchbaseurl =
      'https://api.themoviedb.org/3/search/movie?api_key=e99dcbdc7b79f1fa707fb3b38f9dd39d&query=';
  final response = await http.get(Uri.parse(searchbaseurl + query));
  if (response.statusCode == 200) {
    log('inside 200');
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = SearchMoviesList.fromJson(value);
    log('hello');
    return data.data ?? [];
  } else {
    log('here');
    log(response.statusCode.toString());
    return [];
  }
}
