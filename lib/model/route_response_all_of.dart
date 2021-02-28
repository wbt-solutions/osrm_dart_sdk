//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class RouteResponseAllOf {
  /// Returns a new [RouteResponseAllOf] instance.
  RouteResponseAllOf({
    this.waypoints = const [],
    this.routes = const [],
  });

  List<Waypoint> waypoints;

  List<Route> routes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RouteResponseAllOf &&
     other.waypoints == waypoints &&
     other.routes == routes;

  @override
  int get hashCode =>
    (waypoints == null ? 0 : waypoints.hashCode) +
    (routes == null ? 0 : routes.hashCode);

  @override
  String toString() => 'RouteResponseAllOf[waypoints=$waypoints, routes=$routes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (waypoints != null) {
      json[r'waypoints'] = waypoints;
    }
    if (routes != null) {
      json[r'routes'] = routes;
    }
    return json;
  }

  /// Returns a new [RouteResponseAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RouteResponseAllOf fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RouteResponseAllOf(
        waypoints: Waypoint.listFromJson(json[r'waypoints']),
        routes: Route.listFromJson(json[r'routes']),
    );

  static List<RouteResponseAllOf> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RouteResponseAllOf>[]
      : json.map((v) => RouteResponseAllOf.fromJson(v)).toList(growable: true == growable);

  static Map<String, RouteResponseAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RouteResponseAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RouteResponseAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RouteResponseAllOf-objects as value to a dart map
  static Map<String, List<RouteResponseAllOf>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RouteResponseAllOf>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RouteResponseAllOf.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

