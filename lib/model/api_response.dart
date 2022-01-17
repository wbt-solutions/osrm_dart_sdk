//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class ApiResponse {
  /// Returns a new [ApiResponse] instance.
  ApiResponse({
    required this.code,
    this.message,
    this.dataVersion,
  });

  ApiResponseCodeEnum code;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiResponse &&
     other.code == code &&
     other.message == message &&
     other.dataVersion == dataVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (dataVersion == null ? 0 : dataVersion!.hashCode);

  @override
  String toString() => 'ApiResponse[code=$code, message=$message, dataVersion=$dataVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
    if (message != null) {
      json[r'message'] = message;
    }
    if (dataVersion != null) {
      json[r'data_version'] = dataVersion!.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [ApiResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiResponse(
        code: ApiResponseCodeEnum.fromJson(json[r'code'])!,
        message: mapValueOfType<String>(json, r'message'),
        dataVersion: mapDateTime(json, r'data_version', ''),
      );
    }
    return null;
  }

  static List<ApiResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiResponse> mapFromJson(dynamic json) {
    final map = <String, ApiResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiResponse-objects as value to a dart map
  static Map<String, List<ApiResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiResponse.listFromJson(entry.value, growable: growable,);
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


class ApiResponseCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const ApiResponseCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = ApiResponseCodeEnum._(r'Ok');
  static const invalidUrl = ApiResponseCodeEnum._(r'InvalidUrl');
  static const invalidService = ApiResponseCodeEnum._(r'InvalidService');
  static const invalidVersion = ApiResponseCodeEnum._(r'InvalidVersion');
  static const invalidOptions = ApiResponseCodeEnum._(r'InvalidOptions');
  static const invalidQuery = ApiResponseCodeEnum._(r'InvalidQuery');
  static const invalidValue = ApiResponseCodeEnum._(r'InvalidValue');
  static const noSegment = ApiResponseCodeEnum._(r'NoSegment');
  static const tooBig = ApiResponseCodeEnum._(r'TooBig');
  static const noRoute = ApiResponseCodeEnum._(r'NoRoute');
  static const noTable = ApiResponseCodeEnum._(r'NoTable');
  static const notImplemented = ApiResponseCodeEnum._(r'NotImplemented');
  static const noTrips = ApiResponseCodeEnum._(r'NoTrips');

  /// List of all possible values in this [enum][ApiResponseCodeEnum].
  static const values = <ApiResponseCodeEnum>[
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

  static ApiResponseCodeEnum? fromJson(dynamic value) => ApiResponseCodeEnumTypeTransformer().decode(value);

  static List<ApiResponseCodeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiResponseCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiResponseCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ApiResponseCodeEnum] to String,
/// and [decode] dynamic data back to [ApiResponseCodeEnum].
class ApiResponseCodeEnumTypeTransformer {
  factory ApiResponseCodeEnumTypeTransformer() => _instance ??= const ApiResponseCodeEnumTypeTransformer._();

  const ApiResponseCodeEnumTypeTransformer._();

  String encode(ApiResponseCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ApiResponseCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ApiResponseCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'Ok': return ApiResponseCodeEnum.ok;
        case r'InvalidUrl': return ApiResponseCodeEnum.invalidUrl;
        case r'InvalidService': return ApiResponseCodeEnum.invalidService;
        case r'InvalidVersion': return ApiResponseCodeEnum.invalidVersion;
        case r'InvalidOptions': return ApiResponseCodeEnum.invalidOptions;
        case r'InvalidQuery': return ApiResponseCodeEnum.invalidQuery;
        case r'InvalidValue': return ApiResponseCodeEnum.invalidValue;
        case r'NoSegment': return ApiResponseCodeEnum.noSegment;
        case r'TooBig': return ApiResponseCodeEnum.tooBig;
        case r'NoRoute': return ApiResponseCodeEnum.noRoute;
        case r'NoTable': return ApiResponseCodeEnum.noTable;
        case r'NotImplemented': return ApiResponseCodeEnum.notImplemented;
        case r'NoTrips': return ApiResponseCodeEnum.noTrips;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ApiResponseCodeEnumTypeTransformer] instance.
  static ApiResponseCodeEnumTypeTransformer? _instance;
}


