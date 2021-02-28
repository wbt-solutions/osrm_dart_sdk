//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class StepManeuver {
  /// Returns a new [StepManeuver] instance.
  StepManeuver({
    this.location = const [],
    this.bearingBefore,
    this.bearingAfter,
    this.type,
    this.modifier,
    this.exit,
  });

  List<double> location;

  int bearingBefore;

  int bearingAfter;

  String type;

  String modifier;

  int exit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StepManeuver &&
     other.location == location &&
     other.bearingBefore == bearingBefore &&
     other.bearingAfter == bearingAfter &&
     other.type == type &&
     other.modifier == modifier &&
     other.exit == exit;

  @override
  int get hashCode =>
    (location == null ? 0 : location.hashCode) +
    (bearingBefore == null ? 0 : bearingBefore.hashCode) +
    (bearingAfter == null ? 0 : bearingAfter.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (modifier == null ? 0 : modifier.hashCode) +
    (exit == null ? 0 : exit.hashCode);

  @override
  String toString() => 'StepManeuver[location=$location, bearingBefore=$bearingBefore, bearingAfter=$bearingAfter, type=$type, modifier=$modifier, exit=$exit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (location != null) {
      json[r'location'] = location;
    }
    if (bearingBefore != null) {
      json[r'bearing_before'] = bearingBefore;
    }
    if (bearingAfter != null) {
      json[r'bearing_after'] = bearingAfter;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (modifier != null) {
      json[r'modifier'] = modifier;
    }
    if (exit != null) {
      json[r'exit'] = exit;
    }
    return json;
  }

  /// Returns a new [StepManeuver] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static StepManeuver fromJson(Map<String, dynamic> json) => json == null
    ? null
    : StepManeuver(
        location: json[r'location'] == null
          ? null
          : (json[r'location'] as List).cast<double>(),
        bearingBefore: json[r'bearing_before'],
        bearingAfter: json[r'bearing_after'],
        type: json[r'type'],
        modifier: json[r'modifier'],
        exit: json[r'exit'],
    );

  static List<StepManeuver> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <StepManeuver>[]
      : json.map((v) => StepManeuver.fromJson(v)).toList(growable: true == growable);

  static Map<String, StepManeuver> mapFromJson(Map<String, dynamic> json) {
    final map = <String, StepManeuver>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = StepManeuver.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of StepManeuver-objects as value to a dart map
  static Map<String, List<StepManeuver>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<StepManeuver>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = StepManeuver.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

