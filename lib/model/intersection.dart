//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  int in_;

  int out_;

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
    (location == null ? 0 : location.hashCode) +
    (bearings == null ? 0 : bearings.hashCode) +
    (classes == null ? 0 : classes.hashCode) +
    (entry == null ? 0 : entry.hashCode) +
    (in_ == null ? 0 : in_.hashCode) +
    (out_ == null ? 0 : out_.hashCode) +
    (lanes == null ? 0 : lanes.hashCode);

  @override
  String toString() => 'Intersection[location=$location, bearings=$bearings, classes=$classes, entry=$entry, in_=$in_, out_=$out_, lanes=$lanes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (location != null) {
      json[r'location'] = location;
    }
    if (bearings != null) {
      json[r'bearings'] = bearings;
    }
    if (classes != null) {
      json[r'classes'] = classes;
    }
    if (entry != null) {
      json[r'entry'] = entry;
    }
    if (in_ != null) {
      json[r'in'] = in_;
    }
    if (out_ != null) {
      json[r'out'] = out_;
    }
    if (lanes != null) {
      json[r'lanes'] = lanes;
    }
    return json;
  }

  /// Returns a new [Intersection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Intersection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Intersection(
        location: json[r'location'] == null
          ? null
          : (json[r'location'] as List).cast<double>(),
        bearings: json[r'bearings'] == null
          ? null
          : (json[r'bearings'] as List).cast<int>(),
        classes: json[r'classes'] == null
          ? null
          : (json[r'classes'] as List).cast<String>(),
        entry: json[r'entry'] == null
          ? null
          : (json[r'entry'] as List).cast<bool>(),
        in_: json[r'in'],
        out_: json[r'out'],
        lanes: Lane.listFromJson(json[r'lanes']),
    );

  static List<Intersection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Intersection>[]
      : json.map((v) => Intersection.fromJson(v)).toList(growable: true == growable);

  static Map<String, Intersection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Intersection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Intersection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Intersection-objects as value to a dart map
  static Map<String, List<Intersection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Intersection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Intersection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

