//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class TableResponseAllOf {
  /// Returns a new [TableResponseAllOf] instance.
  TableResponseAllOf({
    this.durations = const [],
    this.distances = const [],
    this.sources = const [],
    this.destinations = const [],
    this.fallbackSpeedCells = const [],
  });

  /// array of arrays that stores the matrix in row-major order. durations[i][j] gives the travel time from the i-th waypoint to the j-th waypoint. Values are given in seconds.
  List<List<double>> durations;

  List<List<double>> distances;

  List<Waypoint> sources;

  List<Waypoint> destinations;

  List<List<int>> fallbackSpeedCells;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableResponseAllOf &&
     other.durations == durations &&
     other.distances == distances &&
     other.sources == sources &&
     other.destinations == destinations &&
     other.fallbackSpeedCells == fallbackSpeedCells;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (durations.hashCode) +
    (distances.hashCode) +
    (sources.hashCode) +
    (destinations.hashCode) +
    (fallbackSpeedCells.hashCode);

  @override
  String toString() => 'TableResponseAllOf[durations=$durations, distances=$distances, sources=$sources, destinations=$destinations, fallbackSpeedCells=$fallbackSpeedCells]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'durations'] = durations;
      json[r'distances'] = distances;
      json[r'sources'] = sources;
      json[r'destinations'] = destinations;
      json[r'fallback_speed_cells'] = fallbackSpeedCells;
    return json;
  }

  /// Returns a new [TableResponseAllOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableResponseAllOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableResponseAllOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableResponseAllOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableResponseAllOf(
        durations: json[r'durations'] is List
          ? (json[r'durations'] as List).map(
              (e) => e == null ? <double>[] : (e as List).cast<double>()
            ).toList()
          : [],
        distances: json[r'distances'] is List
          ? (json[r'distances'] as List).map(
              (e) => e == null ? <double>[] : (e as List).cast<double>()
            ).toList()
          : [],
        sources: Waypoint.listFromJson(json[r'sources']) ?? const [],
        destinations: Waypoint.listFromJson(json[r'destinations']) ?? const [],
        fallbackSpeedCells: json[r'fallback_speed_cells'] is List
          ? (json[r'fallback_speed_cells'] as List).map(
              (e) => e == null ? <int>[] : (e as List).cast<int>()
            ).toList()
          : [],
      );
    }
    return null;
  }

  static List<TableResponseAllOf>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableResponseAllOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableResponseAllOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableResponseAllOf> mapFromJson(dynamic json) {
    final map = <String, TableResponseAllOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableResponseAllOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableResponseAllOf-objects as value to a dart map
  static Map<String, List<TableResponseAllOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableResponseAllOf>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableResponseAllOf.listFromJson(entry.value, growable: growable,);
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

