import 'package:json_annotation/json_annotation.dart';
import 'package:netflix/domain/download/download_model/download_model.dart';
part 'downloadmovieslis.g.dart';

@JsonSerializable()
class DownloadMoviesList {
  @JsonKey(name: 'results')
  List<DownloadMovies>? data;

  DownloadMoviesList({this.data});

  factory DownloadMoviesList.fromJson(Map<String, dynamic> json) {
    return _$DownloadMoviesListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DownloadMoviesListToJson(this);
}
