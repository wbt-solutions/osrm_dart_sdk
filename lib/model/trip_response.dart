//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class TripResponse {
  /// Returns a new [TripResponse] instance.
  TripResponse({
    required this.code,
    this.message,
    this.dataVersion,
    this.waypoints = const [],
    this.trips = const [],
  });

  TripResponseCodeEnum code;

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
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (dataVersion == null ? 0 : dataVersion!.hashCode) +
    (waypoints.hashCode) +
    (trips.hashCode);

  @override
  String toString() => 'TripResponse[code=$code, message=$message, dataVersion=$dataVersion, waypoints=$waypoints, trips=$trips]';

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
      json[r'trips'] = trips;
    return json;
  }

  /// Returns a new [TripResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TripResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TripResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TripResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TripResponse(
        code: TripResponseCodeEnum.fromJson(json[r'code'])!,
        message: mapValueOfType<String>(json, r'message'),
        dataVersion: mapDateTime(json, r'data_version', ''),
        waypoints: TripWaypoint.listFromJson(json[r'waypoints']) ?? const [],
        trips: Route.listFromJson(json[r'trips']) ?? const [],
      );
    }
    return null;
  }

  static List<TripResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TripResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TripResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TripResponse> mapFromJson(dynamic json) {
    final map = <String, TripResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TripResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TripResponse-objects as value to a dart map
  static Map<String, List<TripResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TripResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TripResponse.listFromJson(entry.value, growable: growable,);
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

  static TripResponseCodeEnum? fromJson(dynamic value) => TripResponseCodeEnumTypeTransformer().decode(value);

  static List<TripResponseCodeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TripResponseCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TripResponseCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TripResponseCodeEnum] to String,
/// and [decode] dynamic data back to [TripResponseCodeEnum].
class TripResponseCodeEnumTypeTransformer {
  factory TripResponseCodeEnumTypeTransformer() => _instance ??= const TripResponseCodeEnumTypeTransformer._();

  const TripResponseCodeEnumTypeTransformer._();

  String encode(TripResponseCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TripResponseCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TripResponseCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
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
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TripResponseCodeEnumTypeTransformer] instance.
  static TripResponseCodeEnumTypeTransformer? _instance;
}


