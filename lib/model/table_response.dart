part of osrm_dart_sdk.api;

class TableResponse {
  
  TableResponseCodeEnum code = ;
  
  String message;
  
  DateTime dataVersion;
  
  List<List<double>> durations = const [];
  
  List<List<double>> distances = const [];
  
  List<Waypoint> sources = const [];
  
  List<Waypoint> destinations = const [];
  
  List<List<int>> fallbackSpeedCells = const [];

  TableResponse({
    @required this.code,
    this.message,
    this.dataVersion,
    this.durations,
    this.distances,
    this.sources,
    this.destinations,
    this.fallbackSpeedCells,
  });

  @override
  String toString() {
    return 'TableResponse[code=$code, message=$message, dataVersion=$dataVersion, durations=$durations, distances=$distances, sources=$sources, destinations=$destinations, fallbackSpeedCells=$fallbackSpeedCells, ]';
  }

  TableResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = TableResponseCodeEnum.fromJson(json['code']);
    message = json['message'];
    dataVersion = (json['data_version'] == null) ?
      null :
      DateTime.parse(json['data_version']);
    durations = (json['durations'] == null) ?
      null :
      (json['durations'] as List).map(
        (e) => e == null ? null :
          (e as List).cast<double>()
      ).toList();
    distances = (json['distances'] == null) ?
      null :
      (json['distances'] as List).map(
        (e) => e == null ? null :
          (e as List).cast<double>()
      ).toList();
    sources = (json['sources'] == null) ?
      null :
      Waypoint.listFromJson(json['sources']);
    destinations = (json['destinations'] == null) ?
      null :
      Waypoint.listFromJson(json['destinations']);
    fallbackSpeedCells = (json['fallback_speed_cells'] == null) ?
      null :
      (json['fallback_speed_cells'] as List).map(
        (e) => e == null ? null :
          (e as List).cast<int>()
      ).toList();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (code != null)
      json['code'] = code.value;
    if (message != null)
      json['message'] = message;
    if (dataVersion != null)
      json['data_version'] = dataVersion == null ? null : dataVersion.toUtc().toIso8601String();
    if (durations != null)
      json['durations'] = durations;
    if (distances != null)
      json['distances'] = distances;
    if (sources != null)
      json['sources'] = sources;
    if (destinations != null)
      json['destinations'] = destinations;
    if (fallbackSpeedCells != null)
      json['fallback_speed_cells'] = fallbackSpeedCells;
    return json;
  }

  static List<TableResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<TableResponse>() : json.map((value) => TableResponse.fromJson(value)).toList();
  }

  static Map<String, TableResponse> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TableResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TableResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TableResponse-objects as value to a dart map
  static Map<String, List<TableResponse>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TableResponse>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TableResponse.listFromJson(value);
      });
    }
    return map;
  }
}
class TableResponseCodeEnum {
  /// The underlying value of this enum member.
  final String value;

  const TableResponseCodeEnum._internal(this.value);

  static const TableResponseCodeEnum ok_ = TableResponseCodeEnum._internal("Ok");
  static const TableResponseCodeEnum invalidUrl_ = TableResponseCodeEnum._internal("InvalidUrl");
  static const TableResponseCodeEnum invalidService_ = TableResponseCodeEnum._internal("InvalidService");
  static const TableResponseCodeEnum invalidVersion_ = TableResponseCodeEnum._internal("InvalidVersion");
  static const TableResponseCodeEnum invalidOptions_ = TableResponseCodeEnum._internal("InvalidOptions");
  static const TableResponseCodeEnum invalidQuery_ = TableResponseCodeEnum._internal("InvalidQuery");
  static const TableResponseCodeEnum invalidValue_ = TableResponseCodeEnum._internal("InvalidValue");
  static const TableResponseCodeEnum noSegment_ = TableResponseCodeEnum._internal("NoSegment");
  static const TableResponseCodeEnum tooBig_ = TableResponseCodeEnum._internal("TooBig");
  static const TableResponseCodeEnum noRoute_ = TableResponseCodeEnum._internal("NoRoute");
  static const TableResponseCodeEnum noTable_ = TableResponseCodeEnum._internal("NoTable");
  static const TableResponseCodeEnum notImplemented_ = TableResponseCodeEnum._internal("NotImplemented");
  static const TableResponseCodeEnum noTrips_ = TableResponseCodeEnum._internal("NoTrips");

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static TableResponseCodeEnum fromJson(String value) {
    return TableResponseCodeEnumTypeTransformer().decode(value);
  }

  static List<TableResponseCodeEnum> listFromJson(List<dynamic> json) {
    return json == null
        ? List<TableResponseCodeEnum>()
        : json.map((value) => TableResponseCodeEnum.fromJson(value)).toList();
  }
}

class TableResponseCodeEnumTypeTransformer {

  dynamic encode(TableResponseCodeEnum data) {
    return data.value;
  }

  TableResponseCodeEnum decode(dynamic data) {
    switch (data) {
      case "Ok": return TableResponseCodeEnum.ok_;
      case "InvalidUrl": return TableResponseCodeEnum.invalidUrl_;
      case "InvalidService": return TableResponseCodeEnum.invalidService_;
      case "InvalidVersion": return TableResponseCodeEnum.invalidVersion_;
      case "InvalidOptions": return TableResponseCodeEnum.invalidOptions_;
      case "InvalidQuery": return TableResponseCodeEnum.invalidQuery_;
      case "InvalidValue": return TableResponseCodeEnum.invalidValue_;
      case "NoSegment": return TableResponseCodeEnum.noSegment_;
      case "TooBig": return TableResponseCodeEnum.tooBig_;
      case "NoRoute": return TableResponseCodeEnum.noRoute_;
      case "NoTable": return TableResponseCodeEnum.noTable_;
      case "NotImplemented": return TableResponseCodeEnum.notImplemented_;
      case "NoTrips": return TableResponseCodeEnum.noTrips_;
      default: return null;
    }
  }
}


