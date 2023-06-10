// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dramamovielist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DramMovieList _$DramMovieListFromJson(Map<String, dynamic> json) =>
    DramMovieList(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => DramaMovies.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DramMovieListToJson(DramMovieList instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
