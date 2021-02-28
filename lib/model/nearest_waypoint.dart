//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  String name;

  List<double> location;

  double distance;

  String hint;

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
    (name == null ? 0 : name.hashCode) +
    (location == null ? 0 : location.hashCode) +
    (distance == null ? 0 : distance.hashCode) +
    (hint == null ? 0 : hint.hashCode) +
    (nodes == null ? 0 : nodes.hashCode);

  @override
  String toString() => 'NearestWaypoint[name=$name, location=$location, distance=$distance, hint=$hint, nodes=$nodes]';

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
    if (nodes != null) {
      json[r'nodes'] = nodes;
    }
    return json;
  }

  /// Returns a new [NearestWaypoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NearestWaypoint fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NearestWaypoint(
        name: json[r'name'],
        location: json[r'location'] == null
          ? null
          : (json[r'location'] as List).cast<double>(),
        distance: json[r'distance'],
        hint: json[r'hint'],
        nodes: json[r'nodes'] == null
          ? null
          : (json[r'nodes'] as List).cast<int>(),
    );

  static List<NearestWaypoint> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NearestWaypoint>[]
      : json.map((v) => NearestWaypoint.fromJson(v)).toList(growable: true == growable);

  static Map<String, NearestWaypoint> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NearestWaypoint>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NearestWaypoint.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NearestWaypoint-objects as value to a dart map
  static Map<String, List<NearestWaypoint>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NearestWaypoint>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NearestWaypoint.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

