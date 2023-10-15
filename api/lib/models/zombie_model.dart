import 'package:suda_api/models/location_model.dart';
import 'package:suda_api/utils/generate_string.dart';

class ZombieModel {
  ZombieModel({
    required this.id,
    required this.location,
    required this.age,
    required this.gender,
    required this.weight,
    required this.height,
    required this.bloodType,
    required this.musics,
    required this.games,
    required this.sports,
  });

  factory ZombieModel.fromJson(Map<String, dynamic> json) {
    return ZombieModel(
      id: json['id'] != null ? json['id'] as String : generateString(100),
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      age: json['age'] as int,
      gender: json['gender'] as int,
      weight: json['weight'] as double,
      height: json['height'] as double,
      bloodType: json['blood_type'] as String,
      musics: (json['musics'] as List)
          .map(
            (music) => music.toString(),
          )
          .toList(),
      games: (json['games'] as List)
          .map(
            (game) => game.toString(),
          )
          .toList(),
      sports: (json['sports'] as List)
          .map(
            (sport) => sport.toString(),
          )
          .toList(),
    );
  }

  final String id;
  final LocationModel location;
  final int age;
  final int gender;
  final double weight;
  final double height;
  final String bloodType;
  final List<String> musics;
  final List<String> games;
  final List<String> sports;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['location'] = location.toJson();
    data['age'] = age;
    data['gender'] = gender;
    data['weight'] = weight;
    data['height'] = height;
    data['blood_type'] = bloodType;
    data['musics'] = musics;
    data['games'] = games;
    data['sports'] = sports;

    return data;
  }
}
