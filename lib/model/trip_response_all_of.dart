part of osrm_dart_sdk.api;

class TripResponseAllOf {
  
  List<TripWaypoint> waypoints = const [];
  
  List<Route> trips = const [];

  TripResponseAllOf({
    this.waypoints = const [],
    this.trips = const [],
  });

  @override
  String toString() {
    return 'TripResponseAllOf[waypoints=$waypoints, trips=$trips, ]';
  }

  TripResponseAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    waypoints = (json['waypoints'] == null) ?
      null :
      TripWaypoint.listFromJson(json['waypoints']);
    trips = (json['trips'] == null) ?
      null :
      Route.listFromJson(json['trips']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (waypoints != null)
      json['waypoints'] = waypoints;
    if (trips != null)
      json['trips'] = trips;
    return json;
  }

  static List<TripResponseAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<TripResponseAllOf>() : json.map((value) => TripResponseAllOf.fromJson(value)).toList();
  }

  static Map<String, TripResponseAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TripResponseAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TripResponseAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TripResponseAllOf-objects as value to a dart map
  static Map<String, List<TripResponseAllOf>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TripResponseAllOf>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TripResponseAllOf.listFromJson(value);
      });
    }
    return map;
  }
}

