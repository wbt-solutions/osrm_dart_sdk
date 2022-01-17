//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class TripResponseAllOf {
  /// Returns a new [TripResponseAllOf] instance.
  TripResponseAllOf({
    this.waypoints = const [],
    this.trips = const [],
  });

  List<TripWaypoint> waypoints;

  List<Route> trips;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TripResponseAllOf &&
     other.waypoints == waypoints &&
     other.trips == trips;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (waypoints.hashCode) +
    (trips.hashCode);

  @override
  String toString() => 'TripResponseAllOf[waypoints=$waypoints, trips=$trips]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'waypoints'] = waypoints;
      json[r'trips'] = trips;
    return json;
  }

  /// Returns a new [TripResponseAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TripResponseAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TripResponseAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TripResponseAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TripResponseAllOf(
        waypoints: TripWaypoint.listFromJson(json[r'waypoints']) ?? const [],
        trips: Route.listFromJson(json[r'trips']) ?? const [],
      );
    }
    return null;
  }

  static List<TripResponseAllOf>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TripResponseAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TripResponseAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TripResponseAllOf> mapFromJson(dynamic json) {
    final map = <String, TripResponseAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TripResponseAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TripResponseAllOf-objects as value to a dart map
  static Map<String, List<TripResponseAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TripResponseAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TripResponseAllOf.listFromJson(entry.value, growable: growable,);
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

