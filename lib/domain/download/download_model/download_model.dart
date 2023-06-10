import 'package:json_annotation/json_annotation.dart';

part 'download_model.g.dart';

@JsonSerializable()
class DownloadMovies {
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: "original_title")
  String? originaltitle;
  @JsonKey(name: 'title')
  String? title;

  DownloadMovies({
    this.posterPath,
    this.originaltitle,
    this.title,
  });

  factory DownloadMovies.fromJson(Map<String, dynamic> json) {
    return _$DownloadMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DownloadMoviesToJson(this);
}
