class CityModel {
  CityModel({
    this.name,
    this.lat,
    this.lon,
    this.country,
  });

  CityModel.fromJson(dynamic json) {
    name = json['name'];
    lat = json['lat'];
    lon = json['lon'];
    country = json['country'];
  }

  String? name;
  double? lat;
  double? lon;
  String? country;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['lat'] = lat;
    map['lon'] = lon;
    map['country'] = country;
    return map;
  }
}
