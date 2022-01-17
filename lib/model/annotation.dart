//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AnnotationMetadata? metadata;

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
    // ignore: unnecessary_parenthesis
    (distance.hashCode) +
    (duration.hashCode) +
    (datasources.hashCode) +
    (nodes.hashCode) +
    (weight.hashCode) +
    (speed.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'Annotation[distance=$distance, duration=$duration, datasources=$datasources, nodes=$nodes, weight=$weight, speed=$speed, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'distance'] = distance;
      json[r'duration'] = duration;
      json[r'datasources'] = datasources;
      json[r'nodes'] = nodes;
      json[r'weight'] = weight;
      json[r'speed'] = speed;
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    return json;
  }

  /// Returns a new [Annotation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Annotation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Annotation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Annotation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Annotation(
        distance: json[r'distance'] is List
            ? (json[r'distance'] as List).cast<int>()
            : const [],
        duration: json[r'duration'] is List
            ? (json[r'duration'] as List).cast<int>()
            : const [],
        datasources: json[r'datasources'] is List
            ? (json[r'datasources'] as List).cast<int>()
            : const [],
        nodes: json[r'nodes'] is List
            ? (json[r'nodes'] as List).cast<int>()
            : const [],
        weight: json[r'weight'] is List
            ? (json[r'weight'] as List).cast<int>()
            : const [],
        speed: json[r'speed'] is List
            ? (json[r'speed'] as List).cast<double>()
            : const [],
        metadata: AnnotationMetadata.fromJson(json[r'metadata']),
      );
    }
    return null;
  }

  static List<Annotation>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Annotation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Annotation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Annotation> mapFromJson(dynamic json) {
    final map = <String, Annotation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Annotation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Annotation-objects as value to a dart map
  static Map<String, List<Annotation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Annotation>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Annotation.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

