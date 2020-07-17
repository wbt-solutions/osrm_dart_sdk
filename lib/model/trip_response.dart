part of osrm_dart_sdk.api;

class TripResponse {
  
  TripResponseCodeEnum code;
  
  String message;
  
  DateTime dataVersion;
  
  List<TripWaypoint> waypoints = const [];
  
  List<Route> trips = const [];

  TripResponse({
    @required this.code,
    this.message,
    this.dataVersion,
    this.waypoints,
    this.trips,
  });

  @override
  String toString() {
    return 'TripResponse[code=$code, message=$message, dataVersion=$dataVersion, waypoints=$waypoints, trips=$trips, ]';
  }

  TripResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = TripResponseCodeEnum.fromJson(json['code']);
    message = json['message'];
    dataVersion = (json['data_version'] == null) ?
      null :
      DateTime.parse(json['data_version']);
    waypoints = (json['waypoints'] == null) ?
      null :
      TripWaypoint.listFromJson(json['waypoints']);
    trips = (json['trips'] == null) ?
      null :
      Route.listFromJson(json['trips']);
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
    if (trips != null)
      json['trips'] = trips;
    return json;
  }

  static List<TripResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<TripResponse>() : json.map((value) => TripResponse.fromJson(value)).toList();
  }

  static Map<String, TripResponse> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TripResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TripResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TripResponse-objects as value to a dart map
  static Map<String, List<TripResponse>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TripResponse>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TripResponse.listFromJson(value);
      });
    }
    return map;
  }
}
class TripResponseCodeEnum {
  /// The underlying value of this enum member.
  final String value;

  const TripResponseCodeEnum._internal(this.value);

  static const TripResponseCodeEnum ok_ = TripResponseCodeEnum._internal("Ok");
  static const TripResponseCodeEnum invalidUrl_ = TripResponseCodeEnum._internal("InvalidUrl");
  static const TripResponseCodeEnum invalidService_ = TripResponseCodeEnum._internal("InvalidService");
  static const TripResponseCodeEnum invalidVersion_ = TripResponseCodeEnum._internal("InvalidVersion");
  static const TripResponseCodeEnum invalidOptions_ = TripResponseCodeEnum._internal("InvalidOptions");
  static const TripResponseCodeEnum invalidQuery_ = TripResponseCodeEnum._internal("InvalidQuery");
  static const TripResponseCodeEnum invalidValue_ = TripResponseCodeEnum._internal("InvalidValue");
  static const TripResponseCodeEnum noSegment_ = TripResponseCodeEnum._internal("NoSegment");
  static const TripResponseCodeEnum tooBig_ = TripResponseCodeEnum._internal("TooBig");
  static const TripResponseCodeEnum noRoute_ = TripResponseCodeEnum._internal("NoRoute");
  static const TripResponseCodeEnum noTable_ = TripResponseCodeEnum._internal("NoTable");
  static const TripResponseCodeEnum notImplemented_ = TripResponseCodeEnum._internal("NotImplemented");
  static const TripResponseCodeEnum noTrips_ = TripResponseCodeEnum._internal("NoTrips");

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static TripResponseCodeEnum fromJson(String value) {
    return TripResponseCodeEnumTypeTransformer().decode(value);
  }

  static List<TripResponseCodeEnum> listFromJson(List<dynamic> json) {
    return json == null
        ? List<TripResponseCodeEnum>()
        : json.map((value) => TripResponseCodeEnum.fromJson(value)).toList();
  }
}

class TripResponseCodeEnumTypeTransformer {

  dynamic encode(TripResponseCodeEnum data) {
    return data.value;
  }

  TripResponseCodeEnum decode(dynamic data) {
    switch (data) {
      case "Ok": return TripResponseCodeEnum.ok_;
      case "InvalidUrl": return TripResponseCodeEnum.invalidUrl_;
      case "InvalidService": return TripResponseCodeEnum.invalidService_;
      case "InvalidVersion": return TripResponseCodeEnum.invalidVersion_;
      case "InvalidOptions": return TripResponseCodeEnum.invalidOptions_;
      case "InvalidQuery": return TripResponseCodeEnum.invalidQuery_;
      case "InvalidValue": return TripResponseCodeEnum.invalidValue_;
      case "NoSegment": return TripResponseCodeEnum.noSegment_;
      case "TooBig": return TripResponseCodeEnum.tooBig_;
      case "NoRoute": return TripResponseCodeEnum.noRoute_;
      case "NoTable": return TripResponseCodeEnum.noTable_;
      case "NotImplemented": return TripResponseCodeEnum.notImplemented_;
      case "NoTrips": return TripResponseCodeEnum.noTrips_;
      default: return null;
    }
  }
}


