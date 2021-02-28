//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class Waypoint {
  /// Returns a new [Waypoint] instance.
  Waypoint({
    this.name,
    this.location = const [],
    this.distance,
    this.hint,
  });

  String name;

  List<double> location;

  double distance;

  String hint;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Waypoint &&
     other.name == name &&
     other.location == location &&
     other.distance == distance &&
     other.hint == hint;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (location == null ? 0 : location.hashCode) +
    (distance == null ? 0 : distance.hashCode) +
    (hint == null ? 0 : hint.hashCode);

  @override
  String toString() => 'Waypoint[name=$name, location=$location, distance=$distance, hint=$hint]';

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
    return json;
  }

  /// Returns a new [Waypoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Waypoint fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Waypoint(
        name: json[r'name'],
        location: json[r'location'] == null
          ? null
          : (json[r'location'] as List).cast<double>(),
        distance: json[r'distance'],
        hint: json[r'hint'],
    );

  static List<Waypoint> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Waypoint>[]
      : json.map((v) => Waypoint.fromJson(v)).toList(growable: true == growable);

  static Map<String, Waypoint> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Waypoint>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Waypoint.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Waypoint-objects as value to a dart map
  static Map<String, List<Waypoint>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Waypoint>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Waypoint.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

