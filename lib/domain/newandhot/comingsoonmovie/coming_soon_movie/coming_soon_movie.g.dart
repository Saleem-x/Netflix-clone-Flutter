// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coming_soon_movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComingSoonMovie _$ComingSoonMovieFromJson(Map<String, dynamic> json) =>
    ComingSoonMovie(
      backdropPath: json['backdrop_path'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ComingSoonMovieToJson(ComingSoonMovie instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
    };
