// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadMovies _$DownloadMoviesFromJson(Map<String, dynamic> json) =>
    DownloadMovies(
      posterPath: json['poster_path'] as String?,
      originaltitle: json['original_title'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$DownloadMoviesToJson(DownloadMovies instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'original_title': instance.originaltitle,
      'title': instance.title,
    };
