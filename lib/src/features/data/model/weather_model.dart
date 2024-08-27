class WeatherModel {
  WeatherModel({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.tempF,
    this.isDay,
    this.conditionText,
    this.conditionIcon,
    this.conditionCode,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  WeatherModel.fromJson(dynamic json) {
    name = json['location']['name'];
    region = json['location']['region'];
    country = json['location']['country'];
    lat = json['location']['lat'];
    lon = json['location']['lon'];
    tzId = json['location']['tz_id'];
    localtimeEpoch = json['location']['localtime_epoch'];
    localtime = json['location']['localtime'];
    lastUpdatedEpoch = json['current']['last_updated_epoch'];
    lastUpdated = json['current']['last_updated'];
    tempC = json['current']['temp_c'];
    tempF = json['current']['temp_f'];
    isDay = json['current']['is_day'];
    conditionText = json['current']['condition']['text'];
    conditionIcon = json['current']['condition']['icon'];
    conditionCode = json['current']['condition']['code'];
    windMph = json['current']['wind_mph'];
    windKph = json['current']['wind_kph'];
    windDegree = json['current']['wind_degree'];
    windDir = json['current']['wind_dir'];
    pressureMb = json['current']['pressure_mb'];
    pressureIn = json['current']['pressure_in'];
    precipMm = json['current']['precip_mm'];
    precipIn = json['current']['precip_in'];
    humidity = json['current']['humidity'];
    cloud = json['current']['cloud'];
    feelslikeC = json['current']['feelslike_c'];
    feelslikeF = json['current']['feelslike_f'];
    windchillC = json['current']['windchill_c'];
    windchillF = json['current']['windchill_f'];
    heatindexC = json['current']['heatindex_c'];
    heatindexF = json['current']['heatindex_f'];
    dewpointC = json['current']['dewpoint_c'];
    dewpointF = json['current']['dewpoint_f'];
    visKm = json['current']['vis_km'];
    visMiles = json['current']['vis_miles'];
    uv = json['current']['uv'];
    gustMph = json['current']['gust_mph'];
    gustKph = json['current']['gust_kph'];
  }

  String? name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? tzId;
  int? localtimeEpoch;
  String? localtime;
  int? lastUpdatedEpoch;
  String? lastUpdated;
  double? tempC;
  double? tempF;
  int? isDay;
  String? conditionText;
  String? conditionIcon;
  int? conditionCode;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  double? pressureMb;
  double? pressureIn;
  double? precipMm;
  double? precipIn;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;
  double? windchillC;
  double? windchillF;
  double? heatindexC;
  double? heatindexF;
  double? dewpointC;
  double? dewpointF;
  double? visKm;
  int? visMiles;
  int? uv;
  double? gustMph;
  double? gustKph;

  WeatherModel copyWith({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    int? localtimeEpoch,
    String? localtime,
    int? lastUpdatedEpoch,
    String? lastUpdated,
    double? tempC,
    double? tempF,
    int? isDay,
    String? conditionText,
    String? conditionIcon,
    int? conditionCode,
    double? windMph,
    double? windKph,
    int? windDegree,
    String? windDir,
    double? pressureMb,
    double? pressureIn,
    double? precipMm,
    double? precipIn,
    int? humidity,
    int? cloud,
    double? feelslikeC,
    double? feelslikeF,
    double? windchillC,
    double? windchillF,
    double? heatindexC,
    double? heatindexF,
    double? dewpointC,
    double? dewpointF,
    double? visKm,
    int? visMiles,
    int? uv,
    double? gustMph,
    double? gustKph,
  }) =>
      WeatherModel(
        name: name ?? this.name,
        region: region ?? this.region,
        country: country ?? this.country,
        lat: lat ?? this.lat,
        lon: lon ?? this.lon,
        tzId: tzId ?? this.tzId,
        localtimeEpoch: localtimeEpoch ?? this.localtimeEpoch,
        localtime: localtime ?? this.localtime,
        lastUpdatedEpoch: lastUpdatedEpoch ?? this.lastUpdatedEpoch,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        tempC: tempC ?? this.tempC,
        tempF: tempF ?? this.tempF,
        isDay: isDay ?? this.isDay,
        conditionText: conditionText ?? this.conditionText,
        conditionIcon: conditionIcon ?? this.conditionIcon,
        conditionCode: conditionCode ?? this.conditionCode,
        windMph: windMph ?? this.windMph,
        windKph: windKph ?? this.windKph,
        windDegree: windDegree ?? this.windDegree,
        windDir: windDir ?? this.windDir,
        pressureMb: pressureMb ?? this.pressureMb,
        pressureIn: pressureIn ?? this.pressureIn,
        precipMm: precipMm ?? this.precipMm,
        precipIn: precipIn ?? this.precipIn,
        humidity: humidity ?? this.humidity,
        cloud: cloud ?? this.cloud,
        feelslikeC: feelslikeC ?? this.feelslikeC,
        feelslikeF: feelslikeF ?? this.feelslikeF,
        windchillC: windchillC ?? this.windchillC,
        windchillF: windchillF ?? this.windchillF,
        heatindexC: heatindexC ?? this.heatindexC,
        heatindexF: heatindexF ?? this.heatindexF,
        dewpointC: dewpointC ?? this.dewpointC,
        dewpointF: dewpointF ?? this.dewpointF,
        visKm: visKm ?? this.visKm,
        visMiles: visMiles ?? this.visMiles,
        uv: uv ?? this.uv,
        gustMph: gustMph ?? this.gustMph,
        gustKph: gustKph ?? this.gustKph,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};

    map['location'] = {
      'name': name,
      'region': region,
      'country': country,
      'lat': lat,
      'lon': lon,
      'tz_id': tzId,
      'localtime_epoch': localtimeEpoch,
      'localtime': localtime,
    };

    map['current'] = {
      'last_updated_epoch': lastUpdatedEpoch,
      'last_updated': lastUpdated,
      'temp_c': tempC,
      'temp_f': tempF,
      'is_day': isDay,
      'condition': {
        'text': conditionText,
        'icon': conditionIcon,
        'code': conditionCode,
      },
      'wind_mph': windMph,
      'wind_kph': windKph,
      'wind_degree': windDegree,
      'wind_dir': windDir,
      'pressure_mb': pressureMb,
      'pressure_in': pressureIn,
      'precip_mm': precipMm,
      'precip_in': precipIn,
      'humidity': humidity,
      'cloud': cloud,
      'feelslike_c': feelslikeC,
      'feelslike_f': feelslikeF,
      'windchill_c': windchillC,
      'windchill_f': windchillF,
      'heatindex_c': heatindexC,
      'heatindex_f': heatindexF,
      'dewpoint_c': dewpointC,
      'dewpoint_f': dewpointF,
      'vis_km': visKm,
      'vis_miles': visMiles,
      'uv': uv,
      'gust_mph': gustMph,
      'gust_kph': gustKph,
    };

    return map;
  }
}