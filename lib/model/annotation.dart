//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class Annotation {
  /// Returns a new [Annotation] instance.
  Annotation({
    this.distance = const [],
    this.duration = const [],
    this.datasources = const [],
    this.nodes = const [],
    this.weight = const [],
    this.speed = const [],
    this.metadata,
  });

  /// The distance, in metres, between each pair of coordinates
  List<int> distance;

  /// The duration between each pair of coordinates, in seconds
  List<int> duration;

  List<int> datasources;

  List<int> nodes;

  List<int> weight;

  List<double> speed;

  AnnotationMetadata metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Annotation &&
     other.distance == distance &&
     other.duration == duration &&
     other.datasources == datasources &&
     other.nodes == nodes &&
     other.weight == weight &&
     other.speed == speed &&
     other.metadata == metadata;

  @override
  int get hashCode =>
    (distance == null ? 0 : distance.hashCode) +
    (duration == null ? 0 : duration.hashCode) +
    (datasources == null ? 0 : datasources.hashCode) +
    (nodes == null ? 0 : nodes.hashCode) +
    (weight == null ? 0 : weight.hashCode) +
    (speed == null ? 0 : speed.hashCode) +
    (metadata == null ? 0 : metadata.hashCode);

  @override
  String toString() => 'Annotation[distance=$distance, duration=$duration, datasources=$datasources, nodes=$nodes, weight=$weight, speed=$speed, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (distance != null) {
      json[r'distance'] = distance;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    if (datasources != null) {
      json[r'datasources'] = datasources;
    }
    if (nodes != null) {
      json[r'nodes'] = nodes;
    }
    if (weight != null) {
      json[r'weight'] = weight;
    }
    if (speed != null) {
      json[r'speed'] = speed;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [Annotation] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Annotation fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Annotation(
        distance: json[r'distance'] == null
          ? null
          : (json[r'distance'] as List).cast<int>(),
        duration: json[r'duration'] == null
          ? null
          : (json[r'duration'] as List).cast<int>(),
        datasources: json[r'datasources'] == null
          ? null
          : (json[r'datasources'] as List).cast<int>(),
        nodes: json[r'nodes'] == null
          ? null
          : (json[r'nodes'] as List).cast<int>(),
        weight: json[r'weight'] == null
          ? null
          : (json[r'weight'] as List).cast<int>(),
        speed: json[r'speed'] == null
          ? null
          : (json[r'speed'] as List).cast<double>(),
        metadata: AnnotationMetadata.fromJson(json[r'metadata']),
    );

  static List<Annotation> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Annotation>[]
      : json.map((v) => Annotation.fromJson(v)).toList(growable: true == growable);

  static Map<String, Annotation> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Annotation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Annotation.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Annotation-objects as value to a dart map
  static Map<String, List<Annotation>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Annotation>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Annotation.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

