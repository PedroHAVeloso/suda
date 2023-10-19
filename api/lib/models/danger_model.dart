class DangerModel {
  DangerModel({
    required this.id,
    required this.strength,
    required this.speed,
    required this.intelligence,
  });

  factory DangerModel.fromJson(Map<String, dynamic> json) {
    return DangerModel(
      id: json['id'] as String,
      strength: json['strength'] as int,
      speed: json['speed'] as int,
      intelligence: json['intelligence'] as int,
    );
  }

  final String id;
  final int strength;
  final int speed;
  final int intelligence;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['strength'] = strength;
    data['speed'] = speed;
    data['intelligence'] = intelligence;

    return data;
  }
}
