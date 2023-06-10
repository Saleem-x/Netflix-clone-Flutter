// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'southmovielist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SouthMovieslist _$SouthMovieslistFromJson(Map<String, dynamic> json) =>
    SouthMovieslist(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => SouthMovies.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SouthMovieslistToJson(SouthMovieslist instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
