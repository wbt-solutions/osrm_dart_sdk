//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class Lane {
  /// Returns a new [Lane] instance.
  Lane({
    this.indications = const [],
    this.valid,
  });

  List<String> indications;

  bool valid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Lane &&
     other.indications == indications &&
     other.valid == valid;

  @override
  int get hashCode =>
    (indications == null ? 0 : indications.hashCode) +
    (valid == null ? 0 : valid.hashCode);

  @override
  String toString() => 'Lane[indications=$indications, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (indications != null) {
      json[r'indications'] = indications;
    }
    if (valid != null) {
      json[r'valid'] = valid;
    }
    return json;
  }

  /// Returns a new [Lane] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Lane fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Lane(
        indications: json[r'indications'] == null
          ? null
          : (json[r'indications'] as List).cast<String>(),
        valid: json[r'valid'],
    );

  static List<Lane> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Lane>[]
      : json.map((v) => Lane.fromJson(v)).toList(growable: true == growable);

  static Map<String, Lane> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Lane>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Lane.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Lane-objects as value to a dart map
  static Map<String, List<Lane>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Lane>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Lane.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

