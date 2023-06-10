import 'package:json_annotation/json_annotation.dart';
import 'package:netflix/domain/top%20rated/top_rated_movies/top_rated_movies.dart';
part 'topratedlist.g.dart';

@JsonSerializable()
class TopRatedList {
  @JsonKey(name: 'results')
  List<TopRatedMovies>? data;

  TopRatedList({this.data});

  factory TopRatedList.fromJson(Map<String, dynamic> json) {
    return _$TopRatedListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopRatedListToJson(this);
}
