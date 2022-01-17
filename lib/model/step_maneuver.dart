//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class StepManeuver {
  /// Returns a new [StepManeuver] instance.
  StepManeuver({
    this.location = const [],
    this.bearingBefore,
    this.bearingAfter,
    this.type,
    this.modifier,
    this.exit,
  });

  List<double> location;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bearingBefore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bearingAfter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? modifier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StepManeuver &&
     other.location == location &&
     other.bearingBefore == bearingBefore &&
     other.bearingAfter == bearingAfter &&
     other.type == type &&
     other.modifier == modifier &&
     other.exit == exit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (location.hashCode) +
    (bearingBefore == null ? 0 : bearingBefore!.hashCode) +
    (bearingAfter == null ? 0 : bearingAfter!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (modifier == null ? 0 : modifier!.hashCode) +
    (exit == null ? 0 : exit!.hashCode);

  @override
  String toString() => 'StepManeuver[location=$location, bearingBefore=$bearingBefore, bearingAfter=$bearingAfter, type=$type, modifier=$modifier, exit=$exit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'location'] = location;
    if (bearingBefore != null) {
      json[r'bearing_before'] = bearingBefore;
    }
    if (bearingAfter != null) {
      json[r'bearing_after'] = bearingAfter;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (modifier != null) {
      json[r'modifier'] = modifier;
    }
    if (exit != null) {
      json[r'exit'] = exit;
    }
    return json;
  }

  /// Returns a new [StepManeuver] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StepManeuver? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StepManeuver[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StepManeuver[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StepManeuver(
        location: json[r'location'] is List
            ? (json[r'location'] as List).cast<double>()
            : const [],
        bearingBefore: mapValueOfType<int>(json, r'bearing_before'),
        bearingAfter: mapValueOfType<int>(json, r'bearing_after'),
        type: mapValueOfType<String>(json, r'type'),
        modifier: mapValueOfType<String>(json, r'modifier'),
        exit: mapValueOfType<int>(json, r'exit'),
      );
    }
    return null;
  }

  static List<StepManeuver>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StepManeuver>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StepManeuver.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StepManeuver> mapFromJson(dynamic json) {
    final map = <String, StepManeuver>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StepManeuver.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StepManeuver-objects as value to a dart map
  static Map<String, List<StepManeuver>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StepManeuver>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StepManeuver.listFromJson(entry.value, growable: growable,);
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

