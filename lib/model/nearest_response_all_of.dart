//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class NearestResponseAllOf {
  /// Returns a new [NearestResponseAllOf] instance.
  NearestResponseAllOf({
    this.waypoints = const [],
  });

  List<NearestWaypoint> waypoints;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NearestResponseAllOf &&
     other.waypoints == waypoints;

  @override
  int get hashCode =>
    (waypoints == null ? 0 : waypoints.hashCode);

  @override
  String toString() => 'NearestResponseAllOf[waypoints=$waypoints]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (waypoints != null) {
      json[r'waypoints'] = waypoints;
    }
    return json;
  }

  /// Returns a new [NearestResponseAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NearestResponseAllOf fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NearestResponseAllOf(
        waypoints: NearestWaypoint.listFromJson(json[r'waypoints']),
    );

  static List<NearestResponseAllOf> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NearestResponseAllOf>[]
      : json.map((v) => NearestResponseAllOf.fromJson(v)).toList(growable: true == growable);

  static Map<String, NearestResponseAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NearestResponseAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NearestResponseAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NearestResponseAllOf-objects as value to a dart map
  static Map<String, List<NearestResponseAllOf>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NearestResponseAllOf>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NearestResponseAllOf.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

