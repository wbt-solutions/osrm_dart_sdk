//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
    (nodes == null ? 0 : nodes.hashCode);

  @override
  String toString() => 'NearestWaypointAllOf[nodes=$nodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (nodes != null) {
      json[r'nodes'] = nodes;
    }
    return json;
  }

  /// Returns a new [NearestWaypointAllOf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NearestWaypointAllOf fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NearestWaypointAllOf(
        nodes: json[r'nodes'] == null
          ? null
          : (json[r'nodes'] as List).cast<int>(),
    );

  static List<NearestWaypointAllOf> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NearestWaypointAllOf>[]
      : json.map((v) => NearestWaypointAllOf.fromJson(v)).toList(growable: true == growable);

  static Map<String, NearestWaypointAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NearestWaypointAllOf>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NearestWaypointAllOf.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NearestWaypointAllOf-objects as value to a dart map
  static Map<String, List<NearestWaypointAllOf>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NearestWaypointAllOf>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NearestWaypointAllOf.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

