// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comingsoonmovielist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComingSoonMovieList _$ComingSoonMovieListFromJson(Map<String, dynamic> json) =>
    ComingSoonMovieList(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => ComingSoonMovie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComingSoonMovieListToJson(
        ComingSoonMovieList instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
