//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
    (durations == null ? 0 : durations.hashCode) +
    (distances == null ? 0 : distances.hashCode) +
    (sources == null ? 0 : sources.hashCode) +
    (destinations == null ? 0 : destinations.hashCode) +
    (fallbackSpeedCells == null ? 0 : fallbackSpeedCells.hashCode);

  @override
  String toString() => 'TableResponseAllOf[durations=$durations, distances=$distances, sources=$sources, destinations=$destinations, fallbackSpeedCells=$fallbackSpeedCells]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (durations != null) {
      json[r'durations'] = durations;
    }
    if (distances != null) {
      json[r'distances'] = distances;
    }
    if (sources != null) {
      json[r'sources'] = sources;
    }
    if (destinations != null) {
      json[r'destinations'] = destinations;
    }
    if (fallbackSpeedCells != null) {
      json[r'fallback_speed_cells'] = fallbackSpeedCells;
    }
    return json;
  }

  /// Returns a new [TableResponseAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TableResponseAllOf fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TableResponseAllOf(
        durations: json[r'durations'] == null
          ? null
          : (json[r'durations'] as List).map(
              (e) => e == null ? null : (e as List).cast<double>()
            ).toList(growable: false),
        distances: json[r'distances'] == null
          ? null
          : (json[r'distances'] as List).map(
              (e) => e == null ? null : (e as List).cast<double>()
            ).toList(growable: false),
        sources: Waypoint.listFromJson(json[r'sources']),
        destinations: Waypoint.listFromJson(json[r'destinations']),
        fallbackSpeedCells: json[r'fallback_speed_cells'] == null
          ? null
          : (json[r'fallback_speed_cells'] as List).map(
              (e) => e == null ? null : (e as List).cast<int>()
            ).toList(growable: false),
    );

  static List<TableResponseAllOf> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TableResponseAllOf>[]
      : json.map((v) => TableResponseAllOf.fromJson(v)).toList(growable: true == growable);

  static Map<String, TableResponseAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TableResponseAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TableResponseAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TableResponseAllOf-objects as value to a dart map
  static Map<String, List<TableResponseAllOf>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TableResponseAllOf>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TableResponseAllOf.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

