import 'package:json_annotation/json_annotation.dart';
import 'package:netflix/domain/everyoneswhatching/everyonewhathingmovie.dart';
part 'everywatchinglist.g.dart';

@JsonSerializable()
class EveryonesWatchingList {
  @JsonKey(name: 'results')
  List<EveryOnesWatching>? data;

  EveryonesWatchingList({this.data});

  factory EveryonesWatchingList.fromJson(Map<String, dynamic> json) {
    return _$EveryonesWatchingListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryonesWatchingListToJson(this);
}
