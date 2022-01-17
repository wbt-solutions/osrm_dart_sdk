//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class NearestWaypointAllOf {
  /// Returns a new [NearestWaypointAllOf] instance.
  NearestWaypointAllOf({
    this.nodes = const [],
  });

  List<int> nodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NearestWaypointAllOf &&
     other.nodes == nodes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nodes.hashCode);

  @override
  String toString() => 'NearestWaypointAllOf[nodes=$nodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nodes'] = nodes;
    return json;
  }

  /// Returns a new [NearestWaypointAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NearestWaypointAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NearestWaypointAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NearestWaypointAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NearestWaypointAllOf(
        nodes: json[r'nodes'] is List
            ? (json[r'nodes'] as List).cast<int>()
            : const [],
      );
    }
    return null;
  }

  static List<NearestWaypointAllOf>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NearestWaypointAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NearestWaypointAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NearestWaypointAllOf> mapFromJson(dynamic json) {
    final map = <String, NearestWaypointAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NearestWaypointAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NearestWaypointAllOf-objects as value to a dart map
  static Map<String, List<NearestWaypointAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NearestWaypointAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NearestWaypointAllOf.listFromJson(entry.value, growable: growable,);
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

