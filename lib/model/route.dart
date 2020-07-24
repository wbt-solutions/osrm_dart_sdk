part of osrm_dart_sdk.api;

class Route {
  
  double distance;
  
  double duration;
  
  Object geometry;
  
  double weight;
  
  String weightName;
  
  List<RouteLeg> legs = const [];

  Route({
    this.distance,
    this.duration,
    this.geometry,
    this.weight,
    this.weightName,
    this.legs = const [],
  });

  @override
  String toString() {
    return 'Route[distance=$distance, duration=$duration, geometry=$geometry, weight=$weight, weightName=$weightName, legs=$legs, ]';
  }

  Route.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    distance = (json['distance'] == null) ?
      null :
      json['distance'].toDouble();
    duration = (json['duration'] == null) ?
      null :
      json['duration'].toDouble();
    geometry = json['geometry'];
    weight = (json['weight'] == null) ?
      null :
      json['weight'].toDouble();
    weightName = json['weight_name'];
    legs = (json['legs'] == null) ?
      null :
      RouteLeg.listFromJson(json['legs']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (distance != null)
      json['distance'] = distance;
    if (duration != null)
      json['duration'] = duration;
    if (geometry != null)
      json['geometry'] = geometry;
    if (weight != null)
      json['weight'] = weight;
    if (weightName != null)
      json['weight_name'] = weightName;
    if (legs != null)
      json['legs'] = legs;
    return json;
  }

  static List<Route> listFromJson(List<dynamic> json) {
    return json == null ? List<Route>() : json.map((value) => Route.fromJson(value)).toList();
  }

  static Map<String, Route> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Route>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Route.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Route-objects as value to a dart map
  static Map<String, List<Route>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Route>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Route.listFromJson(value);
      });
    }
    return map;
  }
}

