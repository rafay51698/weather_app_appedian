import 'dart:convert';

/// cod : "200"
/// message : 0
/// cnt : 40
/// forecastList : [{"dt":1687424400,"main":{"temp":306.72,"feels_like":311.94,"temp_min":306.06,"temp_max":306.72,"pressure":1002,"sea_level":1002,"grnd_level":997,"humidity":54,"temp_kf":0.66},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":33},"wind":{"speed":7.54,"deg":239,"gust":7.09},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-22 09:00:00"},{"dt":1687435200,"main":{"temp":305.63,"feels_like":310.41,"temp_min":304.92,"temp_max":305.63,"pressure":1002,"sea_level":1002,"grnd_level":996,"humidity":57,"temp_kf":0.71},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"clouds":{"all":22},"wind":{"speed":7.33,"deg":229,"gust":7.68},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-22 12:00:00"},{"dt":1687446000,"main":{"temp":303.53,"feels_like":307.87,"temp_min":303.53,"temp_max":303.53,"pressure":1001,"sea_level":1001,"grnd_level":997,"humidity":65,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":39},"wind":{"speed":7.37,"deg":234,"gust":8.04},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-22 15:00:00"},{"dt":1687456800,"main":{"temp":303.06,"feels_like":306.84,"temp_min":303.06,"temp_max":303.06,"pressure":1002,"sea_level":1002,"grnd_level":998,"humidity":65,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"clouds":{"all":66},"wind":{"speed":7.06,"deg":244,"gust":7.65},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-22 18:00:00"},{"dt":1687467600,"main":{"temp":302.3,"feels_like":306.02,"temp_min":302.3,"temp_max":302.3,"pressure":1001,"sea_level":1001,"grnd_level":997,"humidity":69,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":88},"wind":{"speed":6.87,"deg":247,"gust":8.03},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-22 21:00:00"},{"dt":1687478400,"main":{"temp":301.85,"feels_like":305.58,"temp_min":301.85,"temp_max":301.85,"pressure":1001,"sea_level":1001,"grnd_level":997,"humidity":72,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":93},"wind":{"speed":7.5,"deg":254,"gust":8.81},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-23 00:00:00"},{"dt":1687489200,"main":{"temp":302.39,"feels_like":306.61,"temp_min":302.39,"temp_max":302.39,"pressure":1003,"sea_level":1003,"grnd_level":998,"humidity":71,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":100},"wind":{"speed":7.38,"deg":244,"gust":8.29},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-23 03:00:00"},{"dt":1687500000,"main":{"temp":304.33,"feels_like":309.18,"temp_min":304.33,"temp_max":304.33,"pressure":1003,"sea_level":1003,"grnd_level":998,"humidity":63,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":98},"wind":{"speed":7.51,"deg":237,"gust":7.89},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-23 06:00:00"},{"dt":1687510800,"main":{"temp":305.73,"feels_like":310.96,"temp_min":305.73,"temp_max":305.73,"pressure":1001,"sea_level":1001,"grnd_level":997,"humidity":58,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"clouds":{"all":78},"wind":{"speed":8.13,"deg":236,"gust":7.92},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-23 09:00:00"},{"dt":1687521600,"main":{"temp":304.92,"feels_like":309.69,"temp_min":304.92,"temp_max":304.92,"pressure":1000,"sea_level":1000,"grnd_level":996,"humidity":60,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":89},"wind":{"speed":7.64,"deg":236,"gust":7.89},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-23 12:00:00"},{"dt":1687532400,"main":{"temp":303.39,"feels_like":308.03,"temp_min":303.39,"temp_max":303.39,"pressure":1001,"sea_level":1001,"grnd_level":996,"humidity":67,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":6.83,"deg":229,"gust":8.04},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-23 15:00:00"},{"dt":1687543200,"main":{"temp":303.02,"feels_like":307.41,"temp_min":303.02,"temp_max":303.02,"pressure":1002,"sea_level":1002,"grnd_level":997,"humidity":68,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":96},"wind":{"speed":6.47,"deg":249,"gust":7.96},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-23 18:00:00"},{"dt":1687554000,"main":{"temp":302.47,"feels_like":306.79,"temp_min":302.47,"temp_max":302.47,"pressure":1000,"sea_level":1000,"grnd_level":996,"humidity":71,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":6.14,"deg":244,"gust":7.88},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-23 21:00:00"},{"dt":1687564800,"main":{"temp":302.15,"feels_like":306.25,"temp_min":302.15,"temp_max":302.15,"pressure":1000,"sea_level":1000,"grnd_level":995,"humidity":72,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":6.85,"deg":247,"gust":8.26},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-24 00:00:00"},{"dt":1687575600,"main":{"temp":302.52,"feels_like":307.12,"temp_min":302.52,"temp_max":302.52,"pressure":1001,"sea_level":1001,"grnd_level":997,"humidity":72,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":100},"wind":{"speed":6.51,"deg":248,"gust":8.03},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-24 03:00:00"},{"dt":1687586400,"main":{"temp":305.24,"feels_like":310.44,"temp_min":305.24,"temp_max":305.24,"pressure":1001,"sea_level":1001,"grnd_level":996,"humidity":60,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":96},"wind":{"speed":7.31,"deg":239,"gust":7.51},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-24 06:00:00"},{"dt":1687597200,"main":{"temp":305.76,"feels_like":311.03,"temp_min":305.76,"temp_max":305.76,"pressure":999,"sea_level":999,"grnd_level":995,"humidity":58,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":100},"wind":{"speed":7.76,"deg":236,"gust":7.57},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-24 09:00:00"},{"dt":1687608000,"main":{"temp":305.22,"feels_like":310.39,"temp_min":305.22,"temp_max":305.22,"pressure":998,"sea_level":998,"grnd_level":994,"humidity":60,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":97},"wind":{"speed":7.18,"deg":231,"gust":7.52},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-24 12:00:00"},{"dt":1687618800,"main":{"temp":303.87,"feels_like":308.65,"temp_min":303.87,"temp_max":303.87,"pressure":1000,"sea_level":1000,"grnd_level":995,"humidity":65,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":92},"wind":{"speed":6.38,"deg":227,"gust":7.61},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-24 15:00:00"},{"dt":1687629600,"main":{"temp":303.59,"feels_like":308.25,"temp_min":303.59,"temp_max":303.59,"pressure":1001,"sea_level":1001,"grnd_level":996,"humidity":66,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"clouds":{"all":84},"wind":{"speed":6.12,"deg":228,"gust":7.44},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-24 18:00:00"},{"dt":1687640400,"main":{"temp":303.18,"feels_like":307.32,"temp_min":303.18,"temp_max":303.18,"pressure":1000,"sea_level":1000,"grnd_level":996,"humidity":66,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"clouds":{"all":80},"wind":{"speed":5.96,"deg":235,"gust":7.6},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-24 21:00:00"},{"dt":1687651200,"main":{"temp":302.45,"feels_like":306.54,"temp_min":302.45,"temp_max":302.45,"pressure":1000,"sea_level":1000,"grnd_level":996,"humidity":70,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":90},"wind":{"speed":5.62,"deg":247,"gust":6.91},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-25 00:00:00"},{"dt":1687662000,"main":{"temp":303,"feels_like":307.59,"temp_min":303,"temp_max":303,"pressure":1001,"sea_level":1001,"grnd_level":996,"humidity":69,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":94},"wind":{"speed":6.02,"deg":248,"gust":7.71},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-25 03:00:00"},{"dt":1687672800,"main":{"temp":305.59,"feels_like":310.95,"temp_min":305.59,"temp_max":305.59,"pressure":1001,"sea_level":1001,"grnd_level":996,"humidity":59,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"clouds":{"all":71},"wind":{"speed":6.59,"deg":234,"gust":7.15},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-25 06:00:00"},{"dt":1687683600,"main":{"temp":306.34,"feels_like":312.08,"temp_min":306.34,"temp_max":306.34,"pressure":999,"sea_level":999,"grnd_level":995,"humidity":57,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":27},"wind":{"speed":7.74,"deg":221,"gust":7.44},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-25 09:00:00"},{"dt":1687694400,"main":{"temp":305.28,"feels_like":311.16,"temp_min":305.28,"temp_max":305.28,"pressure":999,"sea_level":999,"grnd_level":994,"humidity":62,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":31},"wind":{"speed":7.74,"deg":222,"gust":8.14},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-25 12:00:00"},{"dt":1687705200,"main":{"temp":303.3,"feels_like":309.07,"temp_min":303.3,"temp_max":303.3,"pressure":1000,"sea_level":1000,"grnd_level":995,"humidity":72,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":45},"wind":{"speed":7.1,"deg":220,"gust":8.67},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-25 15:00:00"},{"dt":1687716000,"main":{"temp":302.79,"feels_like":308.01,"temp_min":302.79,"temp_max":302.79,"pressure":1002,"sea_level":1002,"grnd_level":997,"humidity":73,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":48},"wind":{"speed":6.05,"deg":222,"gust":7.77},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-25 18:00:00"},{"dt":1687726800,"main":{"temp":302.29,"feels_like":307.19,"temp_min":302.29,"temp_max":302.29,"pressure":1000,"sea_level":1000,"grnd_level":995,"humidity":75,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":46},"wind":{"speed":6.72,"deg":229,"gust":8.88},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-25 21:00:00"},{"dt":1687737600,"main":{"temp":302.38,"feels_like":307.21,"temp_min":302.38,"temp_max":302.38,"pressure":1000,"sea_level":1000,"grnd_level":995,"humidity":74,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":56},"wind":{"speed":6.79,"deg":244,"gust":8.95},"visibility":10000,"pop":0.2,"rain":{"3h":0.15},"sys":{"pod":"n"},"dt_txt":"2023-06-26 00:00:00"},{"dt":1687748400,"main":{"temp":303.44,"feels_like":308.4,"temp_min":303.44,"temp_max":303.44,"pressure":1001,"sea_level":1001,"grnd_level":996,"humidity":68,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"clouds":{"all":83},"wind":{"speed":6.87,"deg":251,"gust":8.48},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-26 03:00:00"},{"dt":1687759200,"main":{"temp":305.83,"feels_like":311.2,"temp_min":305.83,"temp_max":305.83,"pressure":1000,"sea_level":1000,"grnd_level":995,"humidity":58,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"clouds":{"all":64},"wind":{"speed":8.25,"deg":242,"gust":8.98},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-26 06:00:00"},{"dt":1687770000,"main":{"temp":306.49,"feels_like":312.44,"temp_min":306.49,"temp_max":306.49,"pressure":999,"sea_level":999,"grnd_level":994,"humidity":57,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":50},"wind":{"speed":8.92,"deg":237,"gust":9.48},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-26 09:00:00"},{"dt":1687780800,"main":{"temp":305.07,"feels_like":310.96,"temp_min":305.07,"temp_max":305.07,"pressure":998,"sea_level":998,"grnd_level":994,"humidity":63,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"clouds":{"all":72},"wind":{"speed":8.94,"deg":234,"gust":9.85},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-26 12:00:00"},{"dt":1687791600,"main":{"temp":302.89,"feels_like":308.5,"temp_min":302.89,"temp_max":302.89,"pressure":1000,"sea_level":1000,"grnd_level":995,"humidity":74,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"clouds":{"all":51},"wind":{"speed":8.74,"deg":220,"gust":10.31},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-26 15:00:00"},{"dt":1687802400,"main":{"temp":302.13,"feels_like":307.41,"temp_min":302.13,"temp_max":302.13,"pressure":1001,"sea_level":1001,"grnd_level":997,"humidity":78,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":48},"wind":{"speed":7.88,"deg":240,"gust":9.68},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-26 18:00:00"},{"dt":1687813200,"main":{"temp":301.68,"feels_like":306.43,"temp_min":301.68,"temp_max":301.68,"pressure":1000,"sea_level":1000,"grnd_level":995,"humidity":79,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"clouds":{"all":70},"wind":{"speed":7.89,"deg":244,"gust":9.94},"visibility":10000,"pop":0.02,"sys":{"pod":"n"},"dt_txt":"2023-06-26 21:00:00"},{"dt":1687824000,"main":{"temp":301.43,"feels_like":306.13,"temp_min":301.43,"temp_max":301.43,"pressure":999,"sea_level":999,"grnd_level":995,"humidity":81,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":41},"wind":{"speed":7.76,"deg":248,"gust":9.99},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2023-06-27 00:00:00"},{"dt":1687834800,"main":{"temp":302.65,"feels_like":308.11,"temp_min":302.65,"temp_max":302.65,"pressure":1000,"sea_level":1000,"grnd_level":996,"humidity":75,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"clouds":{"all":12},"wind":{"speed":8.53,"deg":250,"gust":9.93},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-27 03:00:00"},{"dt":1687845600,"main":{"temp":304.75,"feels_like":311.41,"temp_min":304.75,"temp_max":304.75,"pressure":1001,"sea_level":1001,"grnd_level":996,"humidity":67,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"clouds":{"all":23},"wind":{"speed":9.61,"deg":245,"gust":10.38},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2023-06-27 06:00:00"}]
/// city : {"id":1174872,"name":"Karachi","coord":{"lat":24.9056,"lon":67.0822},"country":"PK","population":11624219,"timezone":18000,"sunrise":1687394578,"sunset":1687443842}

ForecastModel forecastModelFromJson(String str) =>
    ForecastModel.fromJson(json.decode(str));

String forecastModelToJson(ForecastModel data) => json.encode(data.toJson());

class ForecastModel {
  ForecastModel({
    this.cod,
    this.message,
    this.cnt,
    this.forecastList,
    this.city,
  });

  ForecastModel.fromJson(dynamic json) {
    cod = json['cod'];
    message = json['message'];
    cnt = json['cnt'];
    if (json['forecastList'] != null) {
      forecastList = [];
      json['forecastList'].forEach((v) {
        forecastList?.add(ForecastList.fromJson(v));
      });
    }
    city = json['city'] != null ? City.fromJson(json['city']) : null;
  }

  String? cod;
  int? message;
  int? cnt;
  List<ForecastList>? forecastList;
  City? city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cod'] = cod;
    map['message'] = message;
    map['cnt'] = cnt;
    if (forecastList != null) {
      map['forecastList'] = forecastList?.map((v) => v.toJson()).toList();
    }
    if (city != null) {
      map['city'] = city?.toJson();
    }
    return map;
  }
}

/// id : 1174872
/// name : "Karachi"
/// coord : {"lat":24.9056,"lon":67.0822}
/// country : "PK"
/// population : 11624219
/// timezone : 18000
/// sunrise : 1687394578
/// sunset : 1687443842

City cityFromJson(String str) => City.fromJson(json.decode(str));

String cityToJson(City data) => json.encode(data.toJson());

class City {
  City({
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone,
    this.sunrise,
    this.sunset,
  });

  City.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    country = json['country'];
    population = json['population'];
    timezone = json['timezone'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  int? id;
  String? name;
  Coord? coord;
  String? country;
  int? population;
  int? timezone;
  int? sunrise;
  int? sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    if (coord != null) {
      map['coord'] = coord?.toJson();
    }
    map['country'] = country;
    map['population'] = population;
    map['timezone'] = timezone;
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    return map;
  }
}

/// lat : 24.9056
/// lon : 67.0822

Coord coordFromJson(String str) => Coord.fromJson(json.decode(str));

String coordToJson(Coord data) => json.encode(data.toJson());

class Coord {
  Coord({
    this.lat,
    this.lon,
  });

  Coord.fromJson(dynamic json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  double? lat;
  double? lon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lon'] = lon;
    return map;
  }
}

/// dt : 1687424400
/// main : {"temp":306.72,"feels_like":311.94,"temp_min":306.06,"temp_max":306.72,"pressure":1002,"sea_level":1002,"grnd_level":997,"humidity":54,"temp_kf":0.66}
/// weather : [{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}]
/// clouds : {"all":33}
/// wind : {"speed":7.54,"deg":239,"gust":7.09}
/// visibility : 10000
/// pop : 0
/// sys : {"pod":"d"}
/// dt_txt : "2023-06-22 09:00:00"

ForecastList forecastListFromJson(String str) =>
    ForecastList.fromJson(json.decode(str));

String forecastListToJson(ForecastList data) => json.encode(data.toJson());

class ForecastList {
  ForecastList({
    this.dt,
    this.main,
    this.weather,
    this.clouds,
    this.wind,
    this.visibility,
    this.pop,
    this.sys,
    this.dtTxt,
  });

  ForecastList.fromJson(dynamic json) {
    dt = json['dt'];
    main = json['main'] != null ? Main.fromJson(json['main']) : null;
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
    clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    visibility = json['visibility'];
    pop = json['pop'];
    sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
    dtTxt = json['dt_txt'];
  }

  int? dt;
  Main? main;
  List<Weather>? weather;
  Clouds? clouds;
  Wind? wind;
  int? visibility;
  int? pop;
  Sys? sys;
  String? dtTxt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = dt;
    if (main != null) {
      map['main'] = main?.toJson();
    }
    if (weather != null) {
      map['weather'] = weather?.map((v) => v.toJson()).toList();
    }
    if (clouds != null) {
      map['clouds'] = clouds?.toJson();
    }
    if (wind != null) {
      map['wind'] = wind?.toJson();
    }
    map['visibility'] = visibility;
    map['pop'] = pop;
    if (sys != null) {
      map['sys'] = sys?.toJson();
    }
    map['dt_txt'] = dtTxt;
    return map;
  }
}

/// pod : "d"

Sys sysFromJson(String str) => Sys.fromJson(json.decode(str));

String sysToJson(Sys data) => json.encode(data.toJson());

class Sys {
  Sys({
    this.pod,
  });

  Sys.fromJson(dynamic json) {
    pod = json['pod'];
  }

  String? pod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pod'] = pod;
    return map;
  }
}

/// speed : 7.54
/// deg : 239
/// gust : 7.09

Wind windFromJson(String str) => Wind.fromJson(json.decode(str));

String windToJson(Wind data) => json.encode(data.toJson());

class Wind {
  Wind({
    this.speed,
    this.deg,
    this.gust,
  });

  Wind.fromJson(dynamic json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }

  double? speed;
  int? deg;
  double? gust;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = speed;
    map['deg'] = deg;
    map['gust'] = gust;
    return map;
  }
}

/// all : 33

Clouds cloudsFromJson(String str) => Clouds.fromJson(json.decode(str));

String cloudsToJson(Clouds data) => json.encode(data.toJson());

class Clouds {
  Clouds({
    this.all,
  });

  Clouds.fromJson(dynamic json) {
    all = json['all'];
  }

  int? all;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['all'] = all;
    return map;
  }
}

/// id : 802
/// main : "Clouds"
/// description : "scattered clouds"
/// icon : "03d"

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));

String weatherToJson(Weather data) => json.encode(data.toJson());

class Weather {
  Weather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  Weather.fromJson(dynamic json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  int? id;
  String? main;
  String? description;
  String? icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['main'] = main;
    map['description'] = description;
    map['icon'] = icon;
    return map;
  }
}

/// temp : 306.72
/// feels_like : 311.94
/// temp_min : 306.06
/// temp_max : 306.72
/// pressure : 1002
/// sea_level : 1002
/// grnd_level : 997
/// humidity : 54
/// temp_kf : 0.66

Main mainFromJson(String str) => Main.fromJson(json.decode(str));

String mainToJson(Main data) => json.encode(data.toJson());

class Main {
  Main({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.seaLevel,
    this.grndLevel,
    this.humidity,
    this.tempKf,
  });

  Main.fromJson(dynamic json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    seaLevel = json['sea_level'];
    grndLevel = json['grnd_level'];
    humidity = json['humidity'];
    tempKf = json['temp_kf'];
  }

  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? seaLevel;
  int? grndLevel;
  int? humidity;
  double? tempKf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['temp'] = temp;
    map['feels_like'] = feelsLike;
    map['temp_min'] = tempMin;
    map['temp_max'] = tempMax;
    map['pressure'] = pressure;
    map['sea_level'] = seaLevel;
    map['grnd_level'] = grndLevel;
    map['humidity'] = humidity;
    map['temp_kf'] = tempKf;
    return map;
  }
}
