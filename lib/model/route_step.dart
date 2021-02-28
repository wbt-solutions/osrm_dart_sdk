//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  double distance;

  double duration;

  Object geometry;

  double weight;

  String name;

  String ref;

  String pronunciation;

  Object destinations;

  Object exits;

  String mode;

  StepManeuver maneuver;

  List<Intersection> intersections;

  String rotaryName;

  String rotaryPronunciation;

  RouteStepDrivingSideEnum drivingSide;

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
    (distance == null ? 0 : distance.hashCode) +
    (duration == null ? 0 : duration.hashCode) +
    (geometry == null ? 0 : geometry.hashCode) +
    (weight == null ? 0 : weight.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (ref == null ? 0 : ref.hashCode) +
    (pronunciation == null ? 0 : pronunciation.hashCode) +
    (destinations == null ? 0 : destinations.hashCode) +
    (exits == null ? 0 : exits.hashCode) +
    (mode == null ? 0 : mode.hashCode) +
    (maneuver == null ? 0 : maneuver.hashCode) +
    (intersections == null ? 0 : intersections.hashCode) +
    (rotaryName == null ? 0 : rotaryName.hashCode) +
    (rotaryPronunciation == null ? 0 : rotaryPronunciation.hashCode) +
    (drivingSide == null ? 0 : drivingSide.hashCode);

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
    if (intersections != null) {
      json[r'intersections'] = intersections;
    }
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
  /// [json] if it's non-null, null if [json] is null.
  static RouteStep fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RouteStep(
        distance: json[r'distance'],
        duration: json[r'duration'],
        geometry: json[r'geometry'],
        weight: json[r'weight'],
        name: json[r'name'],
        ref: json[r'ref'],
        pronunciation: json[r'pronunciation'],
        destinations: json[r'destinations'],
        exits: json[r'exits'],
        mode: json[r'mode'],
        maneuver: StepManeuver.fromJson(json[r'maneuver']),
        intersections: Intersection.listFromJson(json[r'intersections']),
        rotaryName: json[r'rotary_name'],
        rotaryPronunciation: json[r'rotary_pronunciation'],
        drivingSide: RouteStepDrivingSideEnum.fromJson(json[r'driving_side']),
    );

  static List<RouteStep> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RouteStep>[]
      : json.map((v) => RouteStep.fromJson(v)).toList(growable: true == growable);

  static Map<String, RouteStep> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RouteStep>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RouteStep.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RouteStep-objects as value to a dart map
  static Map<String, List<RouteStep>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RouteStep>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RouteStep.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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

  static RouteStepDrivingSideEnum fromJson(dynamic value) =>
    RouteStepDrivingSideEnumTypeTransformer().decode(value);

  static List<RouteStepDrivingSideEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RouteStepDrivingSideEnum>[]
      : json
          .map((value) => RouteStepDrivingSideEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RouteStepDrivingSideEnum] to String,
/// and [decode] dynamic data back to [RouteStepDrivingSideEnum].
class RouteStepDrivingSideEnumTypeTransformer {
  const RouteStepDrivingSideEnumTypeTransformer._();

  factory RouteStepDrivingSideEnumTypeTransformer() => _instance ??= RouteStepDrivingSideEnumTypeTransformer._();

  String encode(RouteStepDrivingSideEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RouteStepDrivingSideEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RouteStepDrivingSideEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'left': return RouteStepDrivingSideEnum.left;
      case r'right': return RouteStepDrivingSideEnum.right;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RouteStepDrivingSideEnumTypeTransformer] instance.
  static RouteStepDrivingSideEnumTypeTransformer _instance;
}

