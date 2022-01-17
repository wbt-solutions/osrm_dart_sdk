//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class RouteResponse {
  /// Returns a new [RouteResponse] instance.
  RouteResponse({
    required this.code,
    this.message,
    this.dataVersion,
    this.waypoints = const [],
    this.routes = const [],
  });

  RouteResponseCodeEnum code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dataVersion;

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
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (dataVersion == null ? 0 : dataVersion!.hashCode) +
    (waypoints.hashCode) +
    (routes.hashCode);

  @override
  String toString() => 'RouteResponse[code=$code, message=$message, dataVersion=$dataVersion, waypoints=$waypoints, routes=$routes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
    if (message != null) {
      json[r'message'] = message;
    }
    if (dataVersion != null) {
      json[r'data_version'] = dataVersion!.toUtc().toIso8601String();
    }
      json[r'waypoints'] = waypoints;
      json[r'routes'] = routes;
    return json;
  }

  /// Returns a new [RouteResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RouteResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RouteResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RouteResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RouteResponse(
        code: RouteResponseCodeEnum.fromJson(json[r'code'])!,
        message: mapValueOfType<String>(json, r'message'),
        dataVersion: mapDateTime(json, r'data_version', ''),
        waypoints: Waypoint.listFromJson(json[r'waypoints']) ?? const [],
        routes: Route.listFromJson(json[r'routes']) ?? const [],
      );
    }
    return null;
  }

  static List<RouteResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RouteResponse> mapFromJson(dynamic json) {
    final map = <String, RouteResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RouteResponse-objects as value to a dart map
  static Map<String, List<RouteResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RouteResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RouteResponse.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
  };
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

  static RouteResponseCodeEnum? fromJson(dynamic value) => RouteResponseCodeEnumTypeTransformer().decode(value);

  static List<RouteResponseCodeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RouteResponseCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RouteResponseCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RouteResponseCodeEnum] to String,
/// and [decode] dynamic data back to [RouteResponseCodeEnum].
class RouteResponseCodeEnumTypeTransformer {
  factory RouteResponseCodeEnumTypeTransformer() => _instance ??= const RouteResponseCodeEnumTypeTransformer._();

  const RouteResponseCodeEnumTypeTransformer._();

  String encode(RouteResponseCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RouteResponseCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RouteResponseCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
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
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RouteResponseCodeEnumTypeTransformer] instance.
  static RouteResponseCodeEnumTypeTransformer? _instance;
}


