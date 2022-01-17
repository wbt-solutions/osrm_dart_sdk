//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class AnnotationMetadata {
  /// Returns a new [AnnotationMetadata] instance.
  AnnotationMetadata({
    this.datasourceNames = const [],
  });

  List<String> datasourceNames;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnnotationMetadata &&
     other.datasourceNames == datasourceNames;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (datasourceNames.hashCode);

  @override
  String toString() => 'AnnotationMetadata[datasourceNames=$datasourceNames]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'datasource_names'] = datasourceNames;
    return json;
  }

  /// Returns a new [AnnotationMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnnotationMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnnotationMetadata[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnnotationMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnnotationMetadata(
        datasourceNames: json[r'datasource_names'] is List
            ? (json[r'datasource_names'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<AnnotationMetadata>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnnotationMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnnotationMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnnotationMetadata> mapFromJson(dynamic json) {
    final map = <String, AnnotationMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnnotationMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnnotationMetadata-objects as value to a dart map
  static Map<String, List<AnnotationMetadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnnotationMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnnotationMetadata.listFromJson(entry.value, growable: growable,);
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

