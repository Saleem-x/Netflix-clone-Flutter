// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloadmovieslis.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadMoviesList _$DownloadMoviesListFromJson(Map<String, dynamic> json) =>
    DownloadMoviesList(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => DownloadMovies.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DownloadMoviesListToJson(DownloadMoviesList instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
