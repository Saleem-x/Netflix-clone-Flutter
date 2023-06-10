import 'package:json_annotation/json_annotation.dart';
import 'package:netflix/domain/released/released_movies/released_movies.dart';
part 'releasedmovieslist.g.dart';

@JsonSerializable()
class ReleasedMoviesList {
  @JsonKey(name: 'results')
  List<ReleasedMovies>? data;

  ReleasedMoviesList({this.data});

  factory ReleasedMoviesList.fromJson(Map<String, dynamic> json) {
    return _$ReleasedMoviesListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReleasedMoviesListToJson(this);
}
