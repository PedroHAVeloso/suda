class LocationModel {
  LocationModel({
    required this.country,
    required this.state,
    required this.city,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      country: json['country'] as String,
      state: json['state'] as String,
      city: json['city'] as String,
    );
  }

  final String country;
  final String state;
  final String city;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['country'] = country;
    data['state'] = state;
    data['city'] = city;

    return data;
  }
}
