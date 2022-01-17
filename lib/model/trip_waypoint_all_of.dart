//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class TripWaypointAllOf {
  /// Returns a new [TripWaypointAllOf] instance.
  TripWaypointAllOf({
    this.tripsIndex,
    this.waypointIndex,
  });

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
  bool operator ==(Object other) => identical(this, other) || other is TripWaypointAllOf &&
     other.tripsIndex == tripsIndex &&
     other.waypointIndex == waypointIndex;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tripsIndex == null ? 0 : tripsIndex!.hashCode) +
    (waypointIndex == null ? 0 : waypointIndex!.hashCode);

  @override
  String toString() => 'TripWaypointAllOf[tripsIndex=$tripsIndex, waypointIndex=$waypointIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (tripsIndex != null) {
      json[r'trips_index'] = tripsIndex;
    }
    if (waypointIndex != null) {
      json[r'waypoint_index'] = waypointIndex;
    }
    return json;
  }

  /// Returns a new [TripWaypointAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TripWaypointAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TripWaypointAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TripWaypointAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TripWaypointAllOf(
        tripsIndex: mapValueOfType<int>(json, r'trips_index'),
        waypointIndex: mapValueOfType<int>(json, r'waypoint_index'),
      );
    }
    return null;
  }

  static List<TripWaypointAllOf>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TripWaypointAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TripWaypointAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TripWaypointAllOf> mapFromJson(dynamic json) {
    final map = <String, TripWaypointAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TripWaypointAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TripWaypointAllOf-objects as value to a dart map
  static Map<String, List<TripWaypointAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TripWaypointAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TripWaypointAllOf.listFromJson(entry.value, growable: growable,);
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

