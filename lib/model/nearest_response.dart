part of osrm_dart_sdk.api;

class NearestResponse {
  
  NearestResponseCodeEnum code;
  
  String message;
  
  DateTime dataVersion;
  
  List<NearestWaypoint> waypoints = const [];

  NearestResponse({
    @required this.code,
    this.message,
    this.dataVersion,
    this.waypoints = const [],
  });

  @override
  String toString() {
    return 'NearestResponse[code=$code, message=$message, dataVersion=$dataVersion, waypoints=$waypoints, ]';
  }

  NearestResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = NearestResponseCodeEnum.fromJson(json['code']);
    message = json['message'];
    dataVersion = (json['data_version'] == null) ?
      null :
      DateTime.parse(json['data_version']);
    waypoints = (json['waypoints'] == null) ?
      null :
      NearestWaypoint.listFromJson(json['waypoints']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (code != null)
      json['code'] = code.value;
    if (message != null)
      json['message'] = message;
    if (dataVersion != null)
      json['data_version'] = dataVersion == null ? null : dataVersion.toUtc().toIso8601String();
    if (waypoints != null)
      json['waypoints'] = waypoints;
    return json;
  }

  static List<NearestResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<NearestResponse>() : json.map((value) => NearestResponse.fromJson(value)).toList();
  }

  static Map<String, NearestResponse> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, NearestResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NearestResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NearestResponse-objects as value to a dart map
  static Map<String, List<NearestResponse>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<NearestResponse>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = NearestResponse.listFromJson(value);
      });
    }
    return map;
  }
}
class NearestResponseCodeEnum {
  /// The underlying value of this enum member.
  final String value;

  const NearestResponseCodeEnum._internal(this.value);

  static const NearestResponseCodeEnum ok_ = NearestResponseCodeEnum._internal("Ok");
  static const NearestResponseCodeEnum invalidUrl_ = NearestResponseCodeEnum._internal("InvalidUrl");
  static const NearestResponseCodeEnum invalidService_ = NearestResponseCodeEnum._internal("InvalidService");
  static const NearestResponseCodeEnum invalidVersion_ = NearestResponseCodeEnum._internal("InvalidVersion");
  static const NearestResponseCodeEnum invalidOptions_ = NearestResponseCodeEnum._internal("InvalidOptions");
  static const NearestResponseCodeEnum invalidQuery_ = NearestResponseCodeEnum._internal("InvalidQuery");
  static const NearestResponseCodeEnum invalidValue_ = NearestResponseCodeEnum._internal("InvalidValue");
  static const NearestResponseCodeEnum noSegment_ = NearestResponseCodeEnum._internal("NoSegment");
  static const NearestResponseCodeEnum tooBig_ = NearestResponseCodeEnum._internal("TooBig");
  static const NearestResponseCodeEnum noRoute_ = NearestResponseCodeEnum._internal("NoRoute");
  static const NearestResponseCodeEnum noTable_ = NearestResponseCodeEnum._internal("NoTable");
  static const NearestResponseCodeEnum notImplemented_ = NearestResponseCodeEnum._internal("NotImplemented");
  static const NearestResponseCodeEnum noTrips_ = NearestResponseCodeEnum._internal("NoTrips");

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static NearestResponseCodeEnum fromJson(String value) {
    return NearestResponseCodeEnumTypeTransformer().decode(value);
  }

  static List<NearestResponseCodeEnum> listFromJson(List<dynamic> json) {
    return json == null
      ? List<NearestResponseCodeEnum>()
      : json.map((value) => NearestResponseCodeEnum.fromJson(value)).toList();
  }
}

class NearestResponseCodeEnumTypeTransformer {

  dynamic encode(NearestResponseCodeEnum data) {
    return data.value;
  }

  NearestResponseCodeEnum decode(dynamic data) {
    switch (data) {
      case "Ok": return NearestResponseCodeEnum.ok_;
      case "InvalidUrl": return NearestResponseCodeEnum.invalidUrl_;
      case "InvalidService": return NearestResponseCodeEnum.invalidService_;
      case "InvalidVersion": return NearestResponseCodeEnum.invalidVersion_;
      case "InvalidOptions": return NearestResponseCodeEnum.invalidOptions_;
      case "InvalidQuery": return NearestResponseCodeEnum.invalidQuery_;
      case "InvalidValue": return NearestResponseCodeEnum.invalidValue_;
      case "NoSegment": return NearestResponseCodeEnum.noSegment_;
      case "TooBig": return NearestResponseCodeEnum.tooBig_;
      case "NoRoute": return NearestResponseCodeEnum.noRoute_;
      case "NoTable": return NearestResponseCodeEnum.noTable_;
      case "NotImplemented": return NearestResponseCodeEnum.notImplemented_;
      case "NoTrips": return NearestResponseCodeEnum.noTrips_;
      default: return null;
    }
  }
}


