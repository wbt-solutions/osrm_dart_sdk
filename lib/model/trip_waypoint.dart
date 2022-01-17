//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class TripWaypoint {
  /// Returns a new [TripWaypoint] instance.
  TripWaypoint({
    this.name,
    this.location = const [],
    this.distance,
    this.hint,
    this.tripsIndex,
    this.waypointIndex,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  List<double> location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? distance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tripsIndex;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? waypointIndex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TripWaypoint &&
     other.name == name &&
     other.location == location &&
     other.distance == distance &&
     other.hint == hint &&
     other.tripsIndex == tripsIndex &&
     other.waypointIndex == waypointIndex;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (location.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (hint == null ? 0 : hint!.hashCode) +
    (tripsIndex == null ? 0 : tripsIndex!.hashCode) +
    (waypointIndex == null ? 0 : waypointIndex!.hashCode);

  @override
  String toString() => 'TripWaypoint[name=$name, location=$location, distance=$distance, hint=$hint, tripsIndex=$tripsIndex, waypointIndex=$waypointIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'location'] = location;
    if (distance != null) {
      json[r'distance'] = distance;
    }
    if (hint != null) {
      json[r'hint'] = hint;
    }
    if (tripsIndex != null) {
      json[r'trips_index'] = tripsIndex;
    }
    if (waypointIndex != null) {
      json[r'waypoint_index'] = waypointIndex;
    }
    return json;
  }

  /// Returns a new [TripWaypoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TripWaypoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TripWaypoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TripWaypoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TripWaypoint(
        name: mapValueOfType<String>(json, r'name'),
        location: json[r'location'] is List
            ? (json[r'location'] as List).cast<double>()
            : const [],
        distance: mapValueOfType<double>(json, r'distance'),
        hint: mapValueOfType<String>(json, r'hint'),
        tripsIndex: mapValueOfType<int>(json, r'trips_index'),
        waypointIndex: mapValueOfType<int>(json, r'waypoint_index'),
      );
    }
    return null;
  }

  static List<TripWaypoint>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TripWaypoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TripWaypoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TripWaypoint> mapFromJson(dynamic json) {
    final map = <String, TripWaypoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TripWaypoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TripWaypoint-objects as value to a dart map
  static Map<String, List<TripWaypoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TripWaypoint>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TripWaypoint.listFromJson(entry.value, growable: growable,);
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

