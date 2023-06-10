// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everyonewhathingmovie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EveryOnesWatching _$EveryOnesWatchingFromJson(Map<String, dynamic> json) =>
    EveryOnesWatching(
      backdropPath: json['backdrop_path'] as String?,
      name: json['name'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalName: json['original_name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$EveryOnesWatchingToJson(EveryOnesWatching instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'name': instance.name,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
    };
