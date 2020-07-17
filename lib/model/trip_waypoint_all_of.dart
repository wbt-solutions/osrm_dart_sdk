part of osrm_dart_sdk.api;

class TripWaypointAllOf {
  
  int tripsIndex;
  
  int waypointIndex;

  TripWaypointAllOf({
    this.tripsIndex,
    this.waypointIndex,
  });

  @override
  String toString() {
    return 'TripWaypointAllOf[tripsIndex=$tripsIndex, waypointIndex=$waypointIndex, ]';
  }

  TripWaypointAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tripsIndex = json['trips_index'];
    waypointIndex = json['waypoint_index'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (tripsIndex != null)
      json['trips_index'] = tripsIndex;
    if (waypointIndex != null)
      json['waypoint_index'] = waypointIndex;
    return json;
  }

  static List<TripWaypointAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<TripWaypointAllOf>() : json.map((value) => TripWaypointAllOf.fromJson(value)).toList();
  }

  static Map<String, TripWaypointAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TripWaypointAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TripWaypointAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TripWaypointAllOf-objects as value to a dart map
  static Map<String, List<TripWaypointAllOf>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TripWaypointAllOf>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TripWaypointAllOf.listFromJson(value);
      });
    }
    return map;
  }
}

