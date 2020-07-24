part of osrm_dart_sdk.api;

class TripWaypoint {
  
  String name;
  
  List<double> location = const [];
  
  double distance;
  
  String hint;
  
  int tripsIndex;
  
  int waypointIndex;

  TripWaypoint({
    this.name,
    this.location = const [],
    this.distance,
    this.hint,
    this.tripsIndex,
    this.waypointIndex,
  });

  @override
  String toString() {
    return 'TripWaypoint[name=$name, location=$location, distance=$distance, hint=$hint, tripsIndex=$tripsIndex, waypointIndex=$waypointIndex, ]';
  }

  TripWaypoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    location = (json['location'] == null) ?
      null :
      (json['location'] as List).cast<double>();
    distance = (json['distance'] == null) ?
      null :
      json['distance'].toDouble();
    hint = json['hint'];
    tripsIndex = json['trips_index'];
    waypointIndex = json['waypoint_index'];
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
    if (tripsIndex != null)
      json['trips_index'] = tripsIndex;
    if (waypointIndex != null)
      json['waypoint_index'] = waypointIndex;
    return json;
  }

  static List<TripWaypoint> listFromJson(List<dynamic> json) {
    return json == null ? List<TripWaypoint>() : json.map((value) => TripWaypoint.fromJson(value)).toList();
  }

  static Map<String, TripWaypoint> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TripWaypoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TripWaypoint.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TripWaypoint-objects as value to a dart map
  static Map<String, List<TripWaypoint>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TripWaypoint>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TripWaypoint.listFromJson(value);
      });
    }
    return map;
  }
}

