//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class RouteLeg {
  /// Returns a new [RouteLeg] instance.
  RouteLeg({
    this.distance,
    this.duration,
    this.weight,
    this.summary,
    this.steps = const [],
    this.annotation,
  });

  /// The distance traveled by the route, in float meters.
  double distance;

  /// The estimated travel time, in float number of seconds.
  double duration;

  double weight;

  String summary;

  List<RouteStep> steps;

  Annotation annotation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RouteLeg &&
     other.distance == distance &&
     other.duration == duration &&
     other.weight == weight &&
     other.summary == summary &&
     other.steps == steps &&
     other.annotation == annotation;

  @override
  int get hashCode =>
    (distance == null ? 0 : distance.hashCode) +
    (duration == null ? 0 : duration.hashCode) +
    (weight == null ? 0 : weight.hashCode) +
    (summary == null ? 0 : summary.hashCode) +
    (steps == null ? 0 : steps.hashCode) +
    (annotation == null ? 0 : annotation.hashCode);

  @override
  String toString() => 'RouteLeg[distance=$distance, duration=$duration, weight=$weight, summary=$summary, steps=$steps, annotation=$annotation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (distance != null) {
      json[r'distance'] = distance;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    if (weight != null) {
      json[r'weight'] = weight;
    }
    if (summary != null) {
      json[r'summary'] = summary;
    }
    if (steps != null) {
      json[r'steps'] = steps;
    }
    if (annotation != null) {
      json[r'annotation'] = annotation;
    }
    return json;
  }

  /// Returns a new [RouteLeg] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RouteLeg fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RouteLeg(
        distance: json[r'distance'],
        duration: json[r'duration'],
        weight: json[r'weight'],
        summary: json[r'summary'],
        steps: RouteStep.listFromJson(json[r'steps']),
        annotation: Annotation.fromJson(json[r'annotation']),
    );

  static List<RouteLeg> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RouteLeg>[]
      : json.map((v) => RouteLeg.fromJson(v)).toList(growable: true == growable);

  static Map<String, RouteLeg> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RouteLeg>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RouteLeg.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RouteLeg-objects as value to a dart map
  static Map<String, List<RouteLeg>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RouteLeg>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RouteLeg.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

