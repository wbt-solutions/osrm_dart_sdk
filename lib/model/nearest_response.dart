//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class NearestResponse {
  /// Returns a new [NearestResponse] instance.
  NearestResponse({
    required this.code,
    this.message,
    this.dataVersion,
    this.waypoints = const [],
  });

  NearestResponseCodeEnum code;

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

  List<NearestWaypoint> waypoints;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NearestResponse &&
     other.code == code &&
     other.message == message &&
     other.dataVersion == dataVersion &&
     other.waypoints == waypoints;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (dataVersion == null ? 0 : dataVersion!.hashCode) +
    (waypoints.hashCode);

  @override
  String toString() => 'NearestResponse[code=$code, message=$message, dataVersion=$dataVersion, waypoints=$waypoints]';

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
    return json;
  }

  /// Returns a new [NearestResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NearestResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NearestResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NearestResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NearestResponse(
        code: NearestResponseCodeEnum.fromJson(json[r'code'])!,
        message: mapValueOfType<String>(json, r'message'),
        dataVersion: mapDateTime(json, r'data_version', ''),
        waypoints: NearestWaypoint.listFromJson(json[r'waypoints']) ?? const [],
      );
    }
    return null;
  }

  static List<NearestResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NearestResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NearestResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NearestResponse> mapFromJson(dynamic json) {
    final map = <String, NearestResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NearestResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NearestResponse-objects as value to a dart map
  static Map<String, List<NearestResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NearestResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NearestResponse.listFromJson(entry.value, growable: growable,);
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

  static NearestResponseCodeEnum? fromJson(dynamic value) => NearestResponseCodeEnumTypeTransformer().decode(value);

  static List<NearestResponseCodeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NearestResponseCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NearestResponseCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NearestResponseCodeEnum] to String,
/// and [decode] dynamic data back to [NearestResponseCodeEnum].
class NearestResponseCodeEnumTypeTransformer {
  factory NearestResponseCodeEnumTypeTransformer() => _instance ??= const NearestResponseCodeEnumTypeTransformer._();

  const NearestResponseCodeEnumTypeTransformer._();

  String encode(NearestResponseCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NearestResponseCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NearestResponseCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
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
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NearestResponseCodeEnumTypeTransformer] instance.
  static NearestResponseCodeEnumTypeTransformer? _instance;
}


