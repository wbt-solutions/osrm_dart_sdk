//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
    (datasourceNames == null ? 0 : datasourceNames.hashCode);

  @override
  String toString() => 'AnnotationMetadata[datasourceNames=$datasourceNames]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (datasourceNames != null) {
      json[r'datasource_names'] = datasourceNames;
    }
    return json;
  }

  /// Returns a new [AnnotationMetadata] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AnnotationMetadata fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AnnotationMetadata(
        datasourceNames: json[r'datasource_names'] == null
          ? null
          : (json[r'datasource_names'] as List).cast<String>(),
    );

  static List<AnnotationMetadata> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AnnotationMetadata>[]
      : json.map((v) => AnnotationMetadata.fromJson(v)).toList(growable: true == growable);

  static Map<String, AnnotationMetadata> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AnnotationMetadata>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AnnotationMetadata.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AnnotationMetadata-objects as value to a dart map
  static Map<String, List<AnnotationMetadata>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AnnotationMetadata>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AnnotationMetadata.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

