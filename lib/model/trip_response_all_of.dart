//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class TripResponseAllOf {
  /// Returns a new [TripResponseAllOf] instance.
  TripResponseAllOf({
    this.waypoints = const [],
    this.trips = const [],
  });

  List<TripWaypoint> waypoints;

  List<Route> trips;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TripResponseAllOf &&
     other.waypoints == waypoints &&
     other.trips == trips;

  @override
  int get hashCode =>
    (waypoints == null ? 0 : waypoints.hashCode) +
    (trips == null ? 0 : trips.hashCode);

  @override
  String toString() => 'TripResponseAllOf[waypoints=$waypoints, trips=$trips]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (waypoints != null) {
      json[r'waypoints'] = waypoints;
    }
    if (trips != null) {
      json[r'trips'] = trips;
    }
    return json;
  }

  /// Returns a new [TripResponseAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TripResponseAllOf fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TripResponseAllOf(
        waypoints: TripWaypoint.listFromJson(json[r'waypoints']),
        trips: Route.listFromJson(json[r'trips']),
    );

  static List<TripResponseAllOf> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TripResponseAllOf>[]
      : json.map((v) => TripResponseAllOf.fromJson(v)).toList(growable: true == growable);

  static Map<String, TripResponseAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TripResponseAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TripResponseAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TripResponseAllOf-objects as value to a dart map
  static Map<String, List<TripResponseAllOf>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TripResponseAllOf>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TripResponseAllOf.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

