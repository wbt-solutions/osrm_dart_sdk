//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class Intersection {
  /// Returns a new [Intersection] instance.
  Intersection({
    this.location = const [],
    this.bearings = const [],
    this.classes = const [],
    this.entry = const [],
    this.in_,
    this.out_,
    this.lanes = const [],
  });

  List<double> location;

  List<int> bearings;

  List<String> classes;

  List<bool> entry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? in_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? out_;

  List<Lane> lanes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Intersection &&
     other.location == location &&
     other.bearings == bearings &&
     other.classes == classes &&
     other.entry == entry &&
     other.in_ == in_ &&
     other.out_ == out_ &&
     other.lanes == lanes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (location.hashCode) +
    (bearings.hashCode) +
    (classes.hashCode) +
    (entry.hashCode) +
    (in_ == null ? 0 : in_!.hashCode) +
    (out_ == null ? 0 : out_!.hashCode) +
    (lanes.hashCode);

  @override
  String toString() => 'Intersection[location=$location, bearings=$bearings, classes=$classes, entry=$entry, in_=$in_, out_=$out_, lanes=$lanes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'location'] = location;
      json[r'bearings'] = bearings;
      json[r'classes'] = classes;
      json[r'entry'] = entry;
    if (in_ != null) {
      json[r'in'] = in_;
    }
    if (out_ != null) {
      json[r'out'] = out_;
    }
      json[r'lanes'] = lanes;
    return json;
  }

  /// Returns a new [Intersection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Intersection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Intersection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Intersection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Intersection(
        location: json[r'location'] is List
            ? (json[r'location'] as List).cast<double>()
            : const [],
        bearings: json[r'bearings'] is List
            ? (json[r'bearings'] as List).cast<int>()
            : const [],
        classes: json[r'classes'] is List
            ? (json[r'classes'] as List).cast<String>()
            : const [],
        entry: json[r'entry'] is List
            ? (json[r'entry'] as List).cast<bool>()
            : const [],
        in_: mapValueOfType<int>(json, r'in'),
        out_: mapValueOfType<int>(json, r'out'),
        lanes: Lane.listFromJson(json[r'lanes']) ?? const [],
      );
    }
    return null;
  }

  static List<Intersection>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Intersection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Intersection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Intersection> mapFromJson(dynamic json) {
    final map = <String, Intersection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Intersection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Intersection-objects as value to a dart map
  static Map<String, List<Intersection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Intersection>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Intersection.listFromJson(entry.value, growable: growable,);
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

