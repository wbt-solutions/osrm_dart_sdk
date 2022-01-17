//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class RouteLeg {
  /// Returns a new [RouteLeg] instance.
  RouteLeg({
    this.distance,
    this.duration,
    this.weight,
    this.summary,
    this.steps = const [],
    this.annotation,
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
  double? weight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? summary;

  List<RouteStep> steps;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Annotation? annotation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RouteLeg &&
     other.distance == distance &&
     other.duration == duration &&
     other.weight == weight &&
     other.summary == summary &&
     other.steps == steps &&
     other.annotation == annotation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (distance == null ? 0 : distance!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (weight == null ? 0 : weight!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (steps.hashCode) +
    (annotation == null ? 0 : annotation!.hashCode);

  @override
  String toString() => 'RouteLeg[distance=$distance, duration=$duration, weight=$weight, summary=$summary, steps=$steps, annotation=$annotation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (distance != null) {
      json[r'distance'] = distance;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    if (weight != null) {
      json[r'weight'] = weight;
    }
    if (summary != null) {
      json[r'summary'] = summary;
    }
      json[r'steps'] = steps;
    if (annotation != null) {
      json[r'annotation'] = annotation;
    }
    return json;
  }

  /// Returns a new [RouteLeg] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RouteLeg? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RouteLeg[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RouteLeg[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RouteLeg(
        distance: mapValueOfType<double>(json, r'distance'),
        duration: mapValueOfType<double>(json, r'duration'),
        weight: mapValueOfType<double>(json, r'weight'),
        summary: mapValueOfType<String>(json, r'summary'),
        steps: RouteStep.listFromJson(json[r'steps']) ?? const [],
        annotation: Annotation.fromJson(json[r'annotation']),
      );
    }
    return null;
  }

  static List<RouteLeg>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteLeg>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteLeg.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RouteLeg> mapFromJson(dynamic json) {
    final map = <String, RouteLeg>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteLeg.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RouteLeg-objects as value to a dart map
  static Map<String, List<RouteLeg>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RouteLeg>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteLeg.listFromJson(entry.value, growable: growable,);
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

