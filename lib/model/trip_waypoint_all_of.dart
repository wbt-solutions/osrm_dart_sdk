//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class TripWaypointAllOf {
  /// Returns a new [TripWaypointAllOf] instance.
  TripWaypointAllOf({
    this.tripsIndex,
    this.waypointIndex,
  });

  int tripsIndex;

  int waypointIndex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TripWaypointAllOf &&
     other.tripsIndex == tripsIndex &&
     other.waypointIndex == waypointIndex;

  @override
  int get hashCode =>
    (tripsIndex == null ? 0 : tripsIndex.hashCode) +
    (waypointIndex == null ? 0 : waypointIndex.hashCode);

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
  /// [json] if it's non-null, null if [json] is null.
  static TripWaypointAllOf fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TripWaypointAllOf(
        tripsIndex: json[r'trips_index'],
        waypointIndex: json[r'waypoint_index'],
    );

  static List<TripWaypointAllOf> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TripWaypointAllOf>[]
      : json.map((v) => TripWaypointAllOf.fromJson(v)).toList(growable: true == growable);

  static Map<String, TripWaypointAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TripWaypointAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TripWaypointAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TripWaypointAllOf-objects as value to a dart map
  static Map<String, List<TripWaypointAllOf>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TripWaypointAllOf>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TripWaypointAllOf.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

