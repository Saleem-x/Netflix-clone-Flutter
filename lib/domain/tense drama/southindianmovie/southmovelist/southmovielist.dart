import 'package:json_annotation/json_annotation.dart';
import 'package:netflix/domain/tense%20drama/southindianmovie/south_movies/south_movies.dart';
part 'southmovielist.g.dart';

@JsonSerializable()
class SouthMovieslist {
  @JsonKey(name: 'results')
  List<SouthMovies>? data;

  SouthMovieslist({this.data});

  factory SouthMovieslist.fromJson(Map<String, dynamic> json) {
    return _$SouthMovieslistFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SouthMovieslistToJson(this);
}
