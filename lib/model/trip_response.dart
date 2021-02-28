//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class TripResponse {
  /// Returns a new [TripResponse] instance.
  TripResponse({
    @required this.code,
    this.message,
    this.dataVersion,
    this.waypoints = const [],
    this.trips = const [],
  });

  TripResponseCodeEnum code;

  String message;

  DateTime dataVersion;

  List<TripWaypoint> waypoints;

  List<Route> trips;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TripResponse &&
     other.code == code &&
     other.message == message &&
     other.dataVersion == dataVersion &&
     other.waypoints == waypoints &&
     other.trips == trips;

  @override
  int get hashCode =>
    (code == null ? 0 : code.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (dataVersion == null ? 0 : dataVersion.hashCode) +
    (waypoints == null ? 0 : waypoints.hashCode) +
    (trips == null ? 0 : trips.hashCode);

  @override
  String toString() => 'TripResponse[code=$code, message=$message, dataVersion=$dataVersion, waypoints=$waypoints, trips=$trips]';

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
    if (trips != null) {
      json[r'trips'] = trips;
    }
    return json;
  }

  /// Returns a new [TripResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TripResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TripResponse(
        code: TripResponseCodeEnum.fromJson(json[r'code']),
        message: json[r'message'],
        dataVersion: json[r'data_version'] == null
          ? null
          : DateTime.parse(json[r'data_version']),
        waypoints: TripWaypoint.listFromJson(json[r'waypoints']),
        trips: Route.listFromJson(json[r'trips']),
    );

  static List<TripResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TripResponse>[]
      : json.map((v) => TripResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, TripResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TripResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TripResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TripResponse-objects as value to a dart map
  static Map<String, List<TripResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TripResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TripResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class TripResponseCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const TripResponseCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = TripResponseCodeEnum._(r'Ok');
  static const invalidUrl = TripResponseCodeEnum._(r'InvalidUrl');
  static const invalidService = TripResponseCodeEnum._(r'InvalidService');
  static const invalidVersion = TripResponseCodeEnum._(r'InvalidVersion');
  static const invalidOptions = TripResponseCodeEnum._(r'InvalidOptions');
  static const invalidQuery = TripResponseCodeEnum._(r'InvalidQuery');
  static const invalidValue = TripResponseCodeEnum._(r'InvalidValue');
  static const noSegment = TripResponseCodeEnum._(r'NoSegment');
  static const tooBig = TripResponseCodeEnum._(r'TooBig');
  static const noRoute = TripResponseCodeEnum._(r'NoRoute');
  static const noTable = TripResponseCodeEnum._(r'NoTable');
  static const notImplemented = TripResponseCodeEnum._(r'NotImplemented');
  static const noTrips = TripResponseCodeEnum._(r'NoTrips');

  /// List of all possible values in this [enum][TripResponseCodeEnum].
  static const values = <TripResponseCodeEnum>[
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

  static TripResponseCodeEnum fromJson(dynamic value) =>
    TripResponseCodeEnumTypeTransformer().decode(value);

  static List<TripResponseCodeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TripResponseCodeEnum>[]
      : json
          .map((value) => TripResponseCodeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [TripResponseCodeEnum] to String,
/// and [decode] dynamic data back to [TripResponseCodeEnum].
class TripResponseCodeEnumTypeTransformer {
  const TripResponseCodeEnumTypeTransformer._();

  factory TripResponseCodeEnumTypeTransformer() => _instance ??= TripResponseCodeEnumTypeTransformer._();

  String encode(TripResponseCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TripResponseCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TripResponseCodeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'Ok': return TripResponseCodeEnum.ok;
      case r'InvalidUrl': return TripResponseCodeEnum.invalidUrl;
      case r'InvalidService': return TripResponseCodeEnum.invalidService;
      case r'InvalidVersion': return TripResponseCodeEnum.invalidVersion;
      case r'InvalidOptions': return TripResponseCodeEnum.invalidOptions;
      case r'InvalidQuery': return TripResponseCodeEnum.invalidQuery;
      case r'InvalidValue': return TripResponseCodeEnum.invalidValue;
      case r'NoSegment': return TripResponseCodeEnum.noSegment;
      case r'TooBig': return TripResponseCodeEnum.tooBig;
      case r'NoRoute': return TripResponseCodeEnum.noRoute;
      case r'NoTable': return TripResponseCodeEnum.noTable;
      case r'NotImplemented': return TripResponseCodeEnum.notImplemented;
      case r'NoTrips': return TripResponseCodeEnum.noTrips;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [TripResponseCodeEnumTypeTransformer] instance.
  static TripResponseCodeEnumTypeTransformer _instance;
}

