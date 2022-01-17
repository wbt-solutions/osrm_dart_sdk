//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class NearestWaypoint {
  /// Returns a new [NearestWaypoint] instance.
  NearestWaypoint({
    this.name,
    this.location = const [],
    this.distance,
    this.hint,
    this.nodes = const [],
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

  List<int> nodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NearestWaypoint &&
     other.name == name &&
     other.location == location &&
     other.distance == distance &&
     other.hint == hint &&
     other.nodes == nodes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (location.hashCode) +
    (distance == null ? 0 : distance!.hashCode) +
    (hint == null ? 0 : hint!.hashCode) +
    (nodes.hashCode);

  @override
  String toString() => 'NearestWaypoint[name=$name, location=$location, distance=$distance, hint=$hint, nodes=$nodes]';

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
      json[r'nodes'] = nodes;
    return json;
  }

  /// Returns a new [NearestWaypoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NearestWaypoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NearestWaypoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NearestWaypoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NearestWaypoint(
        name: mapValueOfType<String>(json, r'name'),
        location: json[r'location'] is List
            ? (json[r'location'] as List).cast<double>()
            : const [],
        distance: mapValueOfType<double>(json, r'distance'),
        hint: mapValueOfType<String>(json, r'hint'),
        nodes: json[r'nodes'] is List
            ? (json[r'nodes'] as List).cast<int>()
            : const [],
      );
    }
    return null;
  }

  static List<NearestWaypoint>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NearestWaypoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NearestWaypoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NearestWaypoint> mapFromJson(dynamic json) {
    final map = <String, NearestWaypoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NearestWaypoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NearestWaypoint-objects as value to a dart map
  static Map<String, List<NearestWaypoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NearestWaypoint>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NearestWaypoint.listFromJson(entry.value, growable: growable,);
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

