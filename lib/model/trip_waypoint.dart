//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  String name;

  List<double> location;

  double distance;

  String hint;

  int tripsIndex;

  int waypointIndex;

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
    (name == null ? 0 : name.hashCode) +
    (location == null ? 0 : location.hashCode) +
    (distance == null ? 0 : distance.hashCode) +
    (hint == null ? 0 : hint.hashCode) +
    (tripsIndex == null ? 0 : tripsIndex.hashCode) +
    (waypointIndex == null ? 0 : waypointIndex.hashCode);

  @override
  String toString() => 'TripWaypoint[name=$name, location=$location, distance=$distance, hint=$hint, tripsIndex=$tripsIndex, waypointIndex=$waypointIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (location != null) {
      json[r'location'] = location;
    }
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
  /// [json] if it's non-null, null if [json] is null.
  static TripWaypoint fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TripWaypoint(
        name: json[r'name'],
        location: json[r'location'] == null
          ? null
          : (json[r'location'] as List).cast<double>(),
        distance: json[r'distance'],
        hint: json[r'hint'],
        tripsIndex: json[r'trips_index'],
        waypointIndex: json[r'waypoint_index'],
    );

  static List<TripWaypoint> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TripWaypoint>[]
      : json.map((v) => TripWaypoint.fromJson(v)).toList(growable: true == growable);

  static Map<String, TripWaypoint> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TripWaypoint>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TripWaypoint.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TripWaypoint-objects as value to a dart map
  static Map<String, List<TripWaypoint>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TripWaypoint>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TripWaypoint.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

