//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class NearestResponse {
  /// Returns a new [NearestResponse] instance.
  NearestResponse({
    @required this.code,
    this.message,
    this.dataVersion,
    this.waypoints = const [],
  });

  NearestResponseCodeEnum code;

  String message;

  DateTime dataVersion;

  List<NearestWaypoint> waypoints;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NearestResponse &&
     other.code == code &&
     other.message == message &&
     other.dataVersion == dataVersion &&
     other.waypoints == waypoints;

  @override
  int get hashCode =>
    (code == null ? 0 : code.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (dataVersion == null ? 0 : dataVersion.hashCode) +
    (waypoints == null ? 0 : waypoints.hashCode);

  @override
  String toString() => 'NearestResponse[code=$code, message=$message, dataVersion=$dataVersion, waypoints=$waypoints]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
    if (message != null) {
      json[r'message'] = message;
    }
    if (dataVersion != null) {
      json[r'data_version'] = dataVersion.toUtc().toIso8601String();
    }
    if (waypoints != null) {
      json[r'waypoints'] = waypoints;
    }
    return json;
  }

  /// Returns a new [NearestResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NearestResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NearestResponse(
        code: NearestResponseCodeEnum.fromJson(json[r'code']),
        message: json[r'message'],
        dataVersion: json[r'data_version'] == null
          ? null
          : DateTime.parse(json[r'data_version']),
        waypoints: NearestWaypoint.listFromJson(json[r'waypoints']),
    );

  static List<NearestResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NearestResponse>[]
      : json.map((v) => NearestResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, NearestResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NearestResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NearestResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NearestResponse-objects as value to a dart map
  static Map<String, List<NearestResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NearestResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NearestResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class NearestResponseCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const NearestResponseCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = NearestResponseCodeEnum._(r'Ok');
  static const invalidUrl = NearestResponseCodeEnum._(r'InvalidUrl');
  static const invalidService = NearestResponseCodeEnum._(r'InvalidService');
  static const invalidVersion = NearestResponseCodeEnum._(r'InvalidVersion');
  static const invalidOptions = NearestResponseCodeEnum._(r'InvalidOptions');
  static const invalidQuery = NearestResponseCodeEnum._(r'InvalidQuery');
  static const invalidValue = NearestResponseCodeEnum._(r'InvalidValue');
  static const noSegment = NearestResponseCodeEnum._(r'NoSegment');
  static const tooBig = NearestResponseCodeEnum._(r'TooBig');
  static const noRoute = NearestResponseCodeEnum._(r'NoRoute');
  static const noTable = NearestResponseCodeEnum._(r'NoTable');
  static const notImplemented = NearestResponseCodeEnum._(r'NotImplemented');
  static const noTrips = NearestResponseCodeEnum._(r'NoTrips');

  /// List of all possible values in this [enum][NearestResponseCodeEnum].
  static const values = <NearestResponseCodeEnum>[
    ok,
    invalidUrl,
    invalidService,
    invalidVersion,
    invalidOptions,
    invalidQuery,
    invalidValue,
    noSegment,
    tooBig,
    noRoute,
    noTable,
    notImplemented,
    noTrips,
  ];

  static NearestResponseCodeEnum fromJson(dynamic value) =>
    NearestResponseCodeEnumTypeTransformer().decode(value);

  static List<NearestResponseCodeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NearestResponseCodeEnum>[]
      : json
          .map((value) => NearestResponseCodeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [NearestResponseCodeEnum] to String,
/// and [decode] dynamic data back to [NearestResponseCodeEnum].
class NearestResponseCodeEnumTypeTransformer {
  const NearestResponseCodeEnumTypeTransformer._();

  factory NearestResponseCodeEnumTypeTransformer() => _instance ??= NearestResponseCodeEnumTypeTransformer._();

  String encode(NearestResponseCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NearestResponseCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NearestResponseCodeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'Ok': return NearestResponseCodeEnum.ok;
      case r'InvalidUrl': return NearestResponseCodeEnum.invalidUrl;
      case r'InvalidService': return NearestResponseCodeEnum.invalidService;
      case r'InvalidVersion': return NearestResponseCodeEnum.invalidVersion;
      case r'InvalidOptions': return NearestResponseCodeEnum.invalidOptions;
      case r'InvalidQuery': return NearestResponseCodeEnum.invalidQuery;
      case r'InvalidValue': return NearestResponseCodeEnum.invalidValue;
      case r'NoSegment': return NearestResponseCodeEnum.noSegment;
      case r'TooBig': return NearestResponseCodeEnum.tooBig;
      case r'NoRoute': return NearestResponseCodeEnum.noRoute;
      case r'NoTable': return NearestResponseCodeEnum.noTable;
      case r'NotImplemented': return NearestResponseCodeEnum.notImplemented;
      case r'NoTrips': return NearestResponseCodeEnum.noTrips;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [NearestResponseCodeEnumTypeTransformer] instance.
  static NearestResponseCodeEnumTypeTransformer _instance;
}

