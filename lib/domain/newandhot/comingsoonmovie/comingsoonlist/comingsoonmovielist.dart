import 'package:json_annotation/json_annotation.dart';
import 'package:netflix/domain/newandhot/comingsoonmovie/coming_soon_movie/coming_soon_movie.dart';
part 'comingsoonmovielist.g.dart';

@JsonSerializable()
class ComingSoonMovieList {
  @JsonKey(name: 'results')
  List<ComingSoonMovie>? data;

  ComingSoonMovieList({this.data});

  factory ComingSoonMovieList.fromJson(Map<String, dynamic> json) {
    return _$ComingSoonMovieListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingSoonMovieListToJson(this);
}
