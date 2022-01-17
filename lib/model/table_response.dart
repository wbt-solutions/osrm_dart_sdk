//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;

class TableResponse {
  /// Returns a new [TableResponse] instance.
  TableResponse({
    required this.code,
    this.message,
    this.dataVersion,
    this.durations = const [],
    this.distances = const [],
    this.sources = const [],
    this.destinations = const [],
    this.fallbackSpeedCells = const [],
  });

  TableResponseCodeEnum code;

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
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (dataVersion == null ? 0 : dataVersion!.hashCode) +
    (durations.hashCode) +
    (distances.hashCode) +
    (sources.hashCode) +
    (destinations.hashCode) +
    (fallbackSpeedCells.hashCode);

  @override
  String toString() => 'TableResponse[code=$code, message=$message, dataVersion=$dataVersion, durations=$durations, distances=$distances, sources=$sources, destinations=$destinations, fallbackSpeedCells=$fallbackSpeedCells]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
    if (message != null) {
      json[r'message'] = message;
    }
    if (dataVersion != null) {
      json[r'data_version'] = dataVersion!.toUtc().toIso8601String();
    }
      json[r'durations'] = durations;
      json[r'distances'] = distances;
      json[r'sources'] = sources;
      json[r'destinations'] = destinations;
      json[r'fallback_speed_cells'] = fallbackSpeedCells;
    return json;
  }

  /// Returns a new [TableResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TableResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TableResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TableResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TableResponse(
        code: TableResponseCodeEnum.fromJson(json[r'code'])!,
        message: mapValueOfType<String>(json, r'message'),
        dataVersion: mapDateTime(json, r'data_version', ''),
        durations: json[r'durations'] is List
          ? (json[r'durations'] as List).map(
              (e) => e == null ? <double>[] : (e as List).cast<double>()
            ).toList()
          : [],
        distances: json[r'distances'] is List
          ? (json[r'distances'] as List).map(
              (e) => e == null ? <double>[] : (e as List).cast<double>()
            ).toList()
          : [],
        sources: Waypoint.listFromJson(json[r'sources']) ?? const [],
        destinations: Waypoint.listFromJson(json[r'destinations']) ?? const [],
        fallbackSpeedCells: json[r'fallback_speed_cells'] is List
          ? (json[r'fallback_speed_cells'] as List).map(
              (e) => e == null ? <int>[] : (e as List).cast<int>()
            ).toList()
          : [],
      );
    }
    return null;
  }

  static List<TableResponse>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TableResponse> mapFromJson(dynamic json) {
    final map = <String, TableResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TableResponse-objects as value to a dart map
  static Map<String, List<TableResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TableResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TableResponse.listFromJson(entry.value, growable: growable,);
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

  static TableResponseCodeEnum? fromJson(dynamic value) => TableResponseCodeEnumTypeTransformer().decode(value);

  static List<TableResponseCodeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TableResponseCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TableResponseCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TableResponseCodeEnum] to String,
/// and [decode] dynamic data back to [TableResponseCodeEnum].
class TableResponseCodeEnumTypeTransformer {
  factory TableResponseCodeEnumTypeTransformer() => _instance ??= const TableResponseCodeEnumTypeTransformer._();

  const TableResponseCodeEnumTypeTransformer._();

  String encode(TableResponseCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TableResponseCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TableResponseCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
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
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TableResponseCodeEnumTypeTransformer] instance.
  static TableResponseCodeEnumTypeTransformer? _instance;
}


