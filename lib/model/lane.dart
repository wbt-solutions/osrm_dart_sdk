//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class Lane {
  /// Returns a new [Lane] instance.
  Lane({
    this.indications = const [],
    this.valid,
  });

  List<String> indications;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? valid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Lane &&
     other.indications == indications &&
     other.valid == valid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (indications.hashCode) +
    (valid == null ? 0 : valid!.hashCode);

  @override
  String toString() => 'Lane[indications=$indications, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'indications'] = indications;
    if (valid != null) {
      json[r'valid'] = valid;
    }
    return json;
  }

  /// Returns a new [Lane] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Lane? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Lane[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Lane[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Lane(
        indications: json[r'indications'] is List
            ? (json[r'indications'] as List).cast<String>()
            : const [],
        valid: mapValueOfType<bool>(json, r'valid'),
      );
    }
    return null;
  }

  static List<Lane>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Lane>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Lane.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Lane> mapFromJson(dynamic json) {
    final map = <String, Lane>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Lane.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Lane-objects as value to a dart map
  static Map<String, List<Lane>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Lane>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Lane.listFromJson(entry.value, growable: growable,);
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

