//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class TableResponse {
  /// Returns a new [TableResponse] instance.
  TableResponse({
    @required this.code,
    this.message,
    this.dataVersion,
    this.durations = const [],
    this.distances = const [],
    this.sources = const [],
    this.destinations = const [],
    this.fallbackSpeedCells = const [],
  });

  TableResponseCodeEnum code;

  String message;

  DateTime dataVersion;

  /// array of arrays that stores the matrix in row-major order. durations[i][j] gives the travel time from the i-th waypoint to the j-th waypoint. Values are given in seconds.
  List<List<double>> durations;

  List<List<double>> distances;

  List<Waypoint> sources;

  List<Waypoint> destinations;

  List<List<int>> fallbackSpeedCells;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TableResponse &&
     other.code == code &&
     other.message == message &&
     other.dataVersion == dataVersion &&
     other.durations == durations &&
     other.distances == distances &&
     other.sources == sources &&
     other.destinations == destinations &&
     other.fallbackSpeedCells == fallbackSpeedCells;

  @override
  int get hashCode =>
    (code == null ? 0 : code.hashCode) +
    (message == null ? 0 : message.hashCode) +
    (dataVersion == null ? 0 : dataVersion.hashCode) +
    (durations == null ? 0 : durations.hashCode) +
    (distances == null ? 0 : distances.hashCode) +
    (sources == null ? 0 : sources.hashCode) +
    (destinations == null ? 0 : destinations.hashCode) +
    (fallbackSpeedCells == null ? 0 : fallbackSpeedCells.hashCode);

  @override
  String toString() => 'TableResponse[code=$code, message=$message, dataVersion=$dataVersion, durations=$durations, distances=$distances, sources=$sources, destinations=$destinations, fallbackSpeedCells=$fallbackSpeedCells]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
    if (message != null) {
      json[r'message'] = message;
    }
    if (dataVersion != null) {
      json[r'data_version'] = dataVersion.toUtc().toIso8601String();
    }
    if (durations != null) {
      json[r'durations'] = durations;
    }
    if (distances != null) {
      json[r'distances'] = distances;
    }
    if (sources != null) {
      json[r'sources'] = sources;
    }
    if (destinations != null) {
      json[r'destinations'] = destinations;
    }
    if (fallbackSpeedCells != null) {
      json[r'fallback_speed_cells'] = fallbackSpeedCells;
    }
    return json;
  }

  /// Returns a new [TableResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TableResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TableResponse(
        code: TableResponseCodeEnum.fromJson(json[r'code']),
        message: json[r'message'],
        dataVersion: json[r'data_version'] == null
          ? null
          : DateTime.parse(json[r'data_version']),
        durations: json[r'durations'] == null
          ? null
          : (json[r'durations'] as List).map(
              (e) => e == null ? null : (e as List).cast<double>()
            ).toList(growable: false),
        distances: json[r'distances'] == null
          ? null
          : (json[r'distances'] as List).map(
              (e) => e == null ? null : (e as List).cast<double>()
            ).toList(growable: false),
        sources: Waypoint.listFromJson(json[r'sources']),
        destinations: Waypoint.listFromJson(json[r'destinations']),
        fallbackSpeedCells: json[r'fallback_speed_cells'] == null
          ? null
          : (json[r'fallback_speed_cells'] as List).map(
              (e) => e == null ? null : (e as List).cast<int>()
            ).toList(growable: false),
    );

  static List<TableResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TableResponse>[]
      : json.map((v) => TableResponse.fromJson(v)).toList(growable: true == growable);

  static Map<String, TableResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TableResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TableResponse.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TableResponse-objects as value to a dart map
  static Map<String, List<TableResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TableResponse>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TableResponse.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class TableResponseCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const TableResponseCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = TableResponseCodeEnum._(r'Ok');
  static const invalidUrl = TableResponseCodeEnum._(r'InvalidUrl');
  static const invalidService = TableResponseCodeEnum._(r'InvalidService');
  static const invalidVersion = TableResponseCodeEnum._(r'InvalidVersion');
  static const invalidOptions = TableResponseCodeEnum._(r'InvalidOptions');
  static const invalidQuery = TableResponseCodeEnum._(r'InvalidQuery');
  static const invalidValue = TableResponseCodeEnum._(r'InvalidValue');
  static const noSegment = TableResponseCodeEnum._(r'NoSegment');
  static const tooBig = TableResponseCodeEnum._(r'TooBig');
  static const noRoute = TableResponseCodeEnum._(r'NoRoute');
  static const noTable = TableResponseCodeEnum._(r'NoTable');
  static const notImplemented = TableResponseCodeEnum._(r'NotImplemented');
  static const noTrips = TableResponseCodeEnum._(r'NoTrips');

  /// List of all possible values in this [enum][TableResponseCodeEnum].
  static const values = <TableResponseCodeEnum>[
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

  static TableResponseCodeEnum fromJson(dynamic value) =>
    TableResponseCodeEnumTypeTransformer().decode(value);

  static List<TableResponseCodeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TableResponseCodeEnum>[]
      : json
          .map((value) => TableResponseCodeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [TableResponseCodeEnum] to String,
/// and [decode] dynamic data back to [TableResponseCodeEnum].
class TableResponseCodeEnumTypeTransformer {
  const TableResponseCodeEnumTypeTransformer._();

  factory TableResponseCodeEnumTypeTransformer() => _instance ??= TableResponseCodeEnumTypeTransformer._();

  String encode(TableResponseCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TableResponseCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TableResponseCodeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'Ok': return TableResponseCodeEnum.ok;
      case r'InvalidUrl': return TableResponseCodeEnum.invalidUrl;
      case r'InvalidService': return TableResponseCodeEnum.invalidService;
      case r'InvalidVersion': return TableResponseCodeEnum.invalidVersion;
      case r'InvalidOptions': return TableResponseCodeEnum.invalidOptions;
      case r'InvalidQuery': return TableResponseCodeEnum.invalidQuery;
      case r'InvalidValue': return TableResponseCodeEnum.invalidValue;
      case r'NoSegment': return TableResponseCodeEnum.noSegment;
      case r'TooBig': return TableResponseCodeEnum.tooBig;
      case r'NoRoute': return TableResponseCodeEnum.noRoute;
      case r'NoTable': return TableResponseCodeEnum.noTable;
      case r'NotImplemented': return TableResponseCodeEnum.notImplemented;
      case r'NoTrips': return TableResponseCodeEnum.noTrips;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [TableResponseCodeEnumTypeTransformer] instance.
  static TableResponseCodeEnumTypeTransformer _instance;
}

