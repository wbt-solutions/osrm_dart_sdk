part of osrm_dart_sdk.api;

class Waypoint {
  
  String name;
  
  List<double> location = const [];
  
  double distance;
  
  String hint;

  Waypoint({
    this.name,
    this.location = const [],
    this.distance,
    this.hint,
  });

  @override
  String toString() {
    return 'Waypoint[name=$name, location=$location, distance=$distance, hint=$hint, ]';
  }

  Waypoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    location = (json['location'] == null) ?
      null :
      (json['location'] as List).cast<double>();
    distance = (json['distance'] == null) ?
      null :
      json['distance'].toDouble();
    hint = json['hint'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (location != null)
      json['location'] = location;
    if (distance != null)
      json['distance'] = distance;
    if (hint != null)
      json['hint'] = hint;
    return json;
  }

  static List<Waypoint> listFromJson(List<dynamic> json) {
    return json == null ? List<Waypoint>() : json.map((value) => Waypoint.fromJson(value)).toList();
  }

  static Map<String, Waypoint> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Waypoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Waypoint.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Waypoint-objects as value to a dart map
  static Map<String, List<Waypoint>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Waypoint>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Waypoint.listFromJson(value);
      });
    }
    return map;
  }
}

