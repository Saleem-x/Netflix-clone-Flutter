import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/application/downloads/bloc/core/strings.dart';
import 'package:netflix/domain/everyoneswhatching/everyonewhathingmovie.dart';
import 'package:netflix/domain/everyoneswhatching/everywatchinglist.dart';

Future<List<EveryOnesWatching>> getEveryOnesWatching() async {
  String baseurl = 'https://api.themoviedb.org/3/tv/popular?api_key=';
  final response = await http.get(Uri.parse(baseurl + apikey));
  if (response.statusCode == 200) {
    final value = jsonDecode(response.body) as Map<String, dynamic>;
    final data = EveryonesWatchingList.fromJson(value);
    return data.data ?? [];
  }
  return [];
}
