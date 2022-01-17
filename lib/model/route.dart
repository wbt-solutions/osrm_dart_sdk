//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class Route {
  /// Returns a new [Route] instance.
  Route({
    this.distance,
    this.duration,
    this.geometry,
    this.weight,
    this.weightName,
    this.legs = const [],
  });

  /// The distance traveled by the route, in float meters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? distance;

  /// The estimated travel time, in float number of seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? geometry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? weight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? weightName;

  List<RouteLeg> legs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Route &&
     other.distance == distance &&
     other.duration == duration &&
     other.geometry == geometry &&
     other.weight == weight &&
     other.weightName == weightName &&
     other.legs == legs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (distance == null ? 0 : distance!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (geometry == null ? 0 : geometry!.hashCode) +
    (weight == null ? 0 : weight!.hashCode) +
    (weightName == null ? 0 : weightName!.hashCode) +
    (legs.hashCode);

  @override
  String toString() => 'Route[distance=$distance, duration=$duration, geometry=$geometry, weight=$weight, weightName=$weightName, legs=$legs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (distance != null) {
      json[r'distance'] = distance;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    if (geometry != null) {
      json[r'geometry'] = geometry;
    }
    if (weight != null) {
      json[r'weight'] = weight;
    }
    if (weightName != null) {
      json[r'weight_name'] = weightName;
    }
      json[r'legs'] = legs;
    return json;
  }

  /// Returns a new [Route] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Route? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Route[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Route[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Route(
        distance: mapValueOfType<double>(json, r'distance'),
        duration: mapValueOfType<double>(json, r'duration'),
        geometry: mapValueOfType<Object>(json, r'geometry'),
        weight: mapValueOfType<double>(json, r'weight'),
        weightName: mapValueOfType<String>(json, r'weight_name'),
        legs: RouteLeg.listFromJson(json[r'legs']) ?? const [],
      );
    }
    return null;
  }

  static List<Route>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Route>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Route.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Route> mapFromJson(dynamic json) {
    final map = <String, Route>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Route.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Route-objects as value to a dart map
  static Map<String, List<Route>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Route>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Route.listFromJson(entry.value, growable: growable,);
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

