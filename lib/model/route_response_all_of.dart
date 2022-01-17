//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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
    // ignore: unnecessary_parenthesis
    (waypoints.hashCode) +
    (routes.hashCode);

  @override
  String toString() => 'RouteResponseAllOf[waypoints=$waypoints, routes=$routes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'waypoints'] = waypoints;
      json[r'routes'] = routes;
    return json;
  }

  /// Returns a new [RouteResponseAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RouteResponseAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RouteResponseAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RouteResponseAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RouteResponseAllOf(
        waypoints: Waypoint.listFromJson(json[r'waypoints']) ?? const [],
        routes: Route.listFromJson(json[r'routes']) ?? const [],
      );
    }
    return null;
  }

  static List<RouteResponseAllOf>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteResponseAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteResponseAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RouteResponseAllOf> mapFromJson(dynamic json) {
    final map = <String, RouteResponseAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteResponseAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RouteResponseAllOf-objects as value to a dart map
  static Map<String, List<RouteResponseAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RouteResponseAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteResponseAllOf.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

