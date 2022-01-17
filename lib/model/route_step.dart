//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class RouteStep {
  /// Returns a new [RouteStep] instance.
  RouteStep({
    this.distance,
    this.duration,
    this.geometry,
    this.weight,
    this.name,
    this.ref,
    this.pronunciation,
    this.destinations,
    this.exits,
    this.mode,
    this.maneuver,
    this.intersections = const [],
    this.rotaryName,
    this.rotaryPronunciation,
    this.drivingSide,
  });

  /// The distance traveled by the route, in float meters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? distance;

  /// The estimated travel time, in float number of seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? geometry;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? weight;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pronunciation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? destinations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? exits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StepManeuver? maneuver;

  List<Intersection> intersections;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rotaryName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rotaryPronunciation;

  RouteStepDrivingSideEnum? drivingSide;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RouteStep &&
     other.distance == distance &&
     other.duration == duration &&
     other.geometry == geometry &&
     other.weight == weight &&
     other.name == name &&
     other.ref == ref &&
     other.pronunciation == pronunciation &&
     other.destinations == destinations &&
     other.exits == exits &&
     other.mode == mode &&
     other.maneuver == maneuver &&
     other.intersections == intersections &&
     other.rotaryName == rotaryName &&
     other.rotaryPronunciation == rotaryPronunciation &&
     other.drivingSide == drivingSide;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (distance == null ? 0 : distance!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (geometry == null ? 0 : geometry!.hashCode) +
    (weight == null ? 0 : weight!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (ref == null ? 0 : ref!.hashCode) +
    (pronunciation == null ? 0 : pronunciation!.hashCode) +
    (destinations == null ? 0 : destinations!.hashCode) +
    (exits == null ? 0 : exits!.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (maneuver == null ? 0 : maneuver!.hashCode) +
    (intersections.hashCode) +
    (rotaryName == null ? 0 : rotaryName!.hashCode) +
    (rotaryPronunciation == null ? 0 : rotaryPronunciation!.hashCode) +
    (drivingSide == null ? 0 : drivingSide!.hashCode);

  @override
  String toString() => 'RouteStep[distance=$distance, duration=$duration, geometry=$geometry, weight=$weight, name=$name, ref=$ref, pronunciation=$pronunciation, destinations=$destinations, exits=$exits, mode=$mode, maneuver=$maneuver, intersections=$intersections, rotaryName=$rotaryName, rotaryPronunciation=$rotaryPronunciation, drivingSide=$drivingSide]';

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
    if (name != null) {
      json[r'name'] = name;
    }
    if (ref != null) {
      json[r'ref'] = ref;
    }
    if (pronunciation != null) {
      json[r'pronunciation'] = pronunciation;
    }
    if (destinations != null) {
      json[r'destinations'] = destinations;
    }
    if (exits != null) {
      json[r'exits'] = exits;
    }
    if (mode != null) {
      json[r'mode'] = mode;
    }
    if (maneuver != null) {
      json[r'maneuver'] = maneuver;
    }
      json[r'intersections'] = intersections;
    if (rotaryName != null) {
      json[r'rotary_name'] = rotaryName;
    }
    if (rotaryPronunciation != null) {
      json[r'rotary_pronunciation'] = rotaryPronunciation;
    }
    if (drivingSide != null) {
      json[r'driving_side'] = drivingSide;
    }
    return json;
  }

  /// Returns a new [RouteStep] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RouteStep? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RouteStep[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RouteStep[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RouteStep(
        distance: mapValueOfType<double>(json, r'distance'),
        duration: mapValueOfType<double>(json, r'duration'),
        geometry: mapValueOfType<Object>(json, r'geometry'),
        weight: mapValueOfType<double>(json, r'weight'),
        name: mapValueOfType<String>(json, r'name'),
        ref: mapValueOfType<String>(json, r'ref'),
        pronunciation: mapValueOfType<String>(json, r'pronunciation'),
        destinations: mapValueOfType<Object>(json, r'destinations'),
        exits: mapValueOfType<Object>(json, r'exits'),
        mode: mapValueOfType<String>(json, r'mode'),
        maneuver: StepManeuver.fromJson(json[r'maneuver']),
        intersections: Intersection.listFromJson(json[r'intersections']) ?? const [],
        rotaryName: mapValueOfType<String>(json, r'rotary_name'),
        rotaryPronunciation: mapValueOfType<String>(json, r'rotary_pronunciation'),
        drivingSide: RouteStepDrivingSideEnum.fromJson(json[r'driving_side']),
      );
    }
    return null;
  }

  static List<RouteStep>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteStep>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteStep.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RouteStep> mapFromJson(dynamic json) {
    final map = <String, RouteStep>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteStep.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RouteStep-objects as value to a dart map
  static Map<String, List<RouteStep>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RouteStep>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteStep.listFromJson(entry.value, growable: growable,);
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


class RouteStepDrivingSideEnum {
  /// Instantiate a new enum with the provided [value].
  const RouteStepDrivingSideEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const left = RouteStepDrivingSideEnum._(r'left');
  static const right = RouteStepDrivingSideEnum._(r'right');

  /// List of all possible values in this [enum][RouteStepDrivingSideEnum].
  static const values = <RouteStepDrivingSideEnum>[
    left,
    right,
  ];

  static RouteStepDrivingSideEnum? fromJson(dynamic value) => RouteStepDrivingSideEnumTypeTransformer().decode(value);

  static List<RouteStepDrivingSideEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteStepDrivingSideEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteStepDrivingSideEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RouteStepDrivingSideEnum] to String,
/// and [decode] dynamic data back to [RouteStepDrivingSideEnum].
class RouteStepDrivingSideEnumTypeTransformer {
  factory RouteStepDrivingSideEnumTypeTransformer() => _instance ??= const RouteStepDrivingSideEnumTypeTransformer._();

  const RouteStepDrivingSideEnumTypeTransformer._();

  String encode(RouteStepDrivingSideEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RouteStepDrivingSideEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RouteStepDrivingSideEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'left': return RouteStepDrivingSideEnum.left;
        case r'right': return RouteStepDrivingSideEnum.right;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RouteStepDrivingSideEnumTypeTransformer] instance.
  static RouteStepDrivingSideEnumTypeTransformer? _instance;
}


