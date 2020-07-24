part of osrm_dart_sdk.api;

class RouteResponseAllOf {
  
  List<Waypoint> waypoints = const [];
  
  List<Route> routes = const [];

  RouteResponseAllOf({
    this.waypoints = const [],
    this.routes = const [],
  });

  @override
  String toString() {
    return 'RouteResponseAllOf[waypoints=$waypoints, routes=$routes, ]';
  }

  RouteResponseAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    waypoints = (json['waypoints'] == null) ?
      null :
      Waypoint.listFromJson(json['waypoints']);
    routes = (json['routes'] == null) ?
      null :
      Route.listFromJson(json['routes']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (waypoints != null)
      json['waypoints'] = waypoints;
    if (routes != null)
      json['routes'] = routes;
    return json;
  }

  static List<RouteResponseAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<RouteResponseAllOf>() : json.map((value) => RouteResponseAllOf.fromJson(value)).toList();
  }

  static Map<String, RouteResponseAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, RouteResponseAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RouteResponseAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RouteResponseAllOf-objects as value to a dart map
  static Map<String, List<RouteResponseAllOf>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<RouteResponseAllOf>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = RouteResponseAllOf.listFromJson(value);
      });
    }
    return map;
  }
}

