//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class RouteResponse {
  /// Returns a new [RouteResponse] instance.
  RouteResponse({
    @required this.code,
    this.message,
    this.dataVersion,
    this.waypoints = const [],
    this.routes = const [],
  });

  RouteResponseCodeEnum code;

  String message;

  DateTime dataVersion;

  List<Waypoint> waypoints;

  List<Route> routes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RouteResponse &&
     other.code == code &&
     other.message == message &&
     other.dataVersion == dataVersion &&
     other.waypoints == waypoints &&
     other.routes == routes;

  @override
  int get hashCode =>
    (code == null ? 0 : code.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (dataVersion == null ? 0 : dataVersion.hashCode) +
    (waypoints == null ? 0 : waypoints.hashCode) +
    (routes == null ? 0 : routes.hashCode);

  @override
  String toString() => 'RouteResponse[code=$code, message=$message, dataVersion=$dataVersion, waypoints=$waypoints, routes=$routes]';

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
    if (routes != null) {
      json[r'routes'] = routes;
    }
    return json;
  }

  /// Returns a new [RouteResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RouteResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RouteResponse(
        code: RouteResponseCodeEnum.fromJson(json[r'code']),
        message: json[r'message'],
        dataVersion: json[r'data_version'] == null
          ? null
          : DateTime.parse(json[r'data_version']),
        waypoints: Waypoint.listFromJson(json[r'waypoints']),
        routes: Route.listFromJson(json[r'routes']),
    );

  static List<RouteResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RouteResponse>[]
      : json.map((v) => RouteResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, RouteResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RouteResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RouteResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RouteResponse-objects as value to a dart map
  static Map<String, List<RouteResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RouteResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RouteResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class RouteResponseCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const RouteResponseCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = RouteResponseCodeEnum._(r'Ok');
  static const invalidUrl = RouteResponseCodeEnum._(r'InvalidUrl');
  static const invalidService = RouteResponseCodeEnum._(r'InvalidService');
  static const invalidVersion = RouteResponseCodeEnum._(r'InvalidVersion');
  static const invalidOptions = RouteResponseCodeEnum._(r'InvalidOptions');
  static const invalidQuery = RouteResponseCodeEnum._(r'InvalidQuery');
  static const invalidValue = RouteResponseCodeEnum._(r'InvalidValue');
  static const noSegment = RouteResponseCodeEnum._(r'NoSegment');
  static const tooBig = RouteResponseCodeEnum._(r'TooBig');
  static const noRoute = RouteResponseCodeEnum._(r'NoRoute');
  static const noTable = RouteResponseCodeEnum._(r'NoTable');
  static const notImplemented = RouteResponseCodeEnum._(r'NotImplemented');
  static const noTrips = RouteResponseCodeEnum._(r'NoTrips');

  /// List of all possible values in this [enum][RouteResponseCodeEnum].
  static const values = <RouteResponseCodeEnum>[
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

  static RouteResponseCodeEnum fromJson(dynamic value) =>
    RouteResponseCodeEnumTypeTransformer().decode(value);

  static List<RouteResponseCodeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RouteResponseCodeEnum>[]
      : json
          .map((value) => RouteResponseCodeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [RouteResponseCodeEnum] to String,
/// and [decode] dynamic data back to [RouteResponseCodeEnum].
class RouteResponseCodeEnumTypeTransformer {
  const RouteResponseCodeEnumTypeTransformer._();

  factory RouteResponseCodeEnumTypeTransformer() => _instance ??= RouteResponseCodeEnumTypeTransformer._();

  String encode(RouteResponseCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RouteResponseCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RouteResponseCodeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'Ok': return RouteResponseCodeEnum.ok;
      case r'InvalidUrl': return RouteResponseCodeEnum.invalidUrl;
      case r'InvalidService': return RouteResponseCodeEnum.invalidService;
      case r'InvalidVersion': return RouteResponseCodeEnum.invalidVersion;
      case r'InvalidOptions': return RouteResponseCodeEnum.invalidOptions;
      case r'InvalidQuery': return RouteResponseCodeEnum.invalidQuery;
      case r'InvalidValue': return RouteResponseCodeEnum.invalidValue;
      case r'NoSegment': return RouteResponseCodeEnum.noSegment;
      case r'TooBig': return RouteResponseCodeEnum.tooBig;
      case r'NoRoute': return RouteResponseCodeEnum.noRoute;
      case r'NoTable': return RouteResponseCodeEnum.noTable;
      case r'NotImplemented': return RouteResponseCodeEnum.notImplemented;
      case r'NoTrips': return RouteResponseCodeEnum.noTrips;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [RouteResponseCodeEnumTypeTransformer] instance.
  static RouteResponseCodeEnumTypeTransformer _instance;
}

