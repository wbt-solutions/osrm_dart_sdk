//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class Route {
  /// Returns a new [Route] instance.
  Route({
    this.distance,
    this.duration,
    this.geometry,
    this.weight,
    this.weightName,
    this.legs = const [],
  });

  double distance;

  double duration;

  Object geometry;

  double weight;

  String weightName;

  List<RouteLeg> legs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Route &&
     other.distance == distance &&
     other.duration == duration &&
     other.geometry == geometry &&
     other.weight == weight &&
     other.weightName == weightName &&
     other.legs == legs;

  @override
  int get hashCode =>
    (distance == null ? 0 : distance.hashCode) +
    (duration == null ? 0 : duration.hashCode) +
    (geometry == null ? 0 : geometry.hashCode) +
    (weight == null ? 0 : weight.hashCode) +
    (weightName == null ? 0 : weightName.hashCode) +
    (legs == null ? 0 : legs.hashCode);

  @override
  String toString() => 'Route[distance=$distance, duration=$duration, geometry=$geometry, weight=$weight, weightName=$weightName, legs=$legs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (distance != null) {
      json[r'distance'] = distance;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    if (geometry != null) {
      json[r'geometry'] = geometry;
    }
    if (weight != null) {
      json[r'weight'] = weight;
    }
    if (weightName != null) {
      json[r'weight_name'] = weightName;
    }
    if (legs != null) {
      json[r'legs'] = legs;
    }
    return json;
  }

  /// Returns a new [Route] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Route fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Route(
        distance: json[r'distance'],
        duration: json[r'duration'],
        geometry: json[r'geometry'],
        weight: json[r'weight'],
        weightName: json[r'weight_name'],
        legs: RouteLeg.listFromJson(json[r'legs']),
    );

  static List<Route> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Route>[]
      : json.map((v) => Route.fromJson(v)).toList(growable: true == growable);

  static Map<String, Route> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Route>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Route.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Route-objects as value to a dart map
  static Map<String, List<Route>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Route>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Route.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

