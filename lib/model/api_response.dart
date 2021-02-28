//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class ApiResponse {
  /// Returns a new [ApiResponse] instance.
  ApiResponse({
    @required this.code,
    this.message,
    this.dataVersion,
  });

  ApiResponseCodeEnum code;

  String message;

  DateTime dataVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiResponse &&
     other.code == code &&
     other.message == message &&
     other.dataVersion == dataVersion;

  @override
  int get hashCode =>
    (code == null ? 0 : code.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (dataVersion == null ? 0 : dataVersion.hashCode);

  @override
  String toString() => 'ApiResponse[code=$code, message=$message, dataVersion=$dataVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
    if (message != null) {
      json[r'message'] = message;
    }
    if (dataVersion != null) {
      json[r'data_version'] = dataVersion.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [ApiResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApiResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ApiResponse(
        code: ApiResponseCodeEnum.fromJson(json[r'code']),
        message: json[r'message'],
        dataVersion: json[r'data_version'] == null
          ? null
          : DateTime.parse(json[r'data_version']),
    );

  static List<ApiResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ApiResponse>[]
      : json.map((v) => ApiResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, ApiResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ApiResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ApiResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ApiResponse-objects as value to a dart map
  static Map<String, List<ApiResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ApiResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ApiResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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

  static ApiResponseCodeEnum fromJson(dynamic value) =>
    ApiResponseCodeEnumTypeTransformer().decode(value);

  static List<ApiResponseCodeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ApiResponseCodeEnum>[]
      : json
          .map((value) => ApiResponseCodeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ApiResponseCodeEnum] to String,
/// and [decode] dynamic data back to [ApiResponseCodeEnum].
class ApiResponseCodeEnumTypeTransformer {
  const ApiResponseCodeEnumTypeTransformer._();

  factory ApiResponseCodeEnumTypeTransformer() => _instance ??= ApiResponseCodeEnumTypeTransformer._();

  String encode(ApiResponseCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ApiResponseCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ApiResponseCodeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
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
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ApiResponseCodeEnumTypeTransformer] instance.
  static ApiResponseCodeEnumTypeTransformer _instance;
}

