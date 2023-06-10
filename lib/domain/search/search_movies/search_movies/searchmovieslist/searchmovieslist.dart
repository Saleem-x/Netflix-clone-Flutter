import 'package:json_annotation/json_annotation.dart';
import 'package:netflix/domain/search/search_movies/search_movies/search_movies.dart';
part 'searchmovieslist.g.dart';

@JsonSerializable()
class SearchMoviesList {
  @JsonKey(name: 'results')
  List<SearchMovies>? data;

  SearchMoviesList({this.data});

  factory SearchMoviesList.fromJson(Map<String, dynamic> json) {
    return _$SearchMoviesListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchMoviesListToJson(this);
}
