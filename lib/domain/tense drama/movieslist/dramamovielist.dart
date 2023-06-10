import 'package:json_annotation/json_annotation.dart';
import 'package:netflix/domain/tense%20drama/movies/drama_movies/drama_movies.dart';
part 'dramamovielist.g.dart';

@JsonSerializable()
class DramMovieList {
  @JsonKey(name: 'results')
  List<DramaMovies>? data;

  DramMovieList({this.data});

  factory DramMovieList.fromJson(Map<String, dynamic> json) {
    return _$DramMovieListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DramMovieListToJson(this);
}
