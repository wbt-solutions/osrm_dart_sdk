part of osrm_dart_sdk.api;

class RouteResponse {
  
  RouteResponseCodeEnum code;
  
  String message;
  
  DateTime dataVersion;
  
  List<Waypoint> waypoints = const [];
  
  List<Route> routes = const [];

  RouteResponse({
    @required this.code,
    this.message,
    this.dataVersion,
    this.waypoints,
    this.routes,
  });

  @override
  String toString() {
    return 'RouteResponse[code=$code, message=$message, dataVersion=$dataVersion, waypoints=$waypoints, routes=$routes, ]';
  }

  RouteResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = RouteResponseCodeEnum.fromJson(json['code']);
    message = json['message'];
    dataVersion = (json['data_version'] == null) ?
      null :
      DateTime.parse(json['data_version']);
    waypoints = (json['waypoints'] == null) ?
      null :
      Waypoint.listFromJson(json['waypoints']);
    routes = (json['routes'] == null) ?
      null :
      Route.listFromJson(json['routes']);
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
    if (routes != null)
      json['routes'] = routes;
    return json;
  }

  static List<RouteResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RouteResponse>() : json.map((value) => RouteResponse.fromJson(value)).toList();
  }

  static Map<String, RouteResponse> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, RouteResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RouteResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RouteResponse-objects as value to a dart map
  static Map<String, List<RouteResponse>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<RouteResponse>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = RouteResponse.listFromJson(value);
      });
    }
    return map;
  }
}
class RouteResponseCodeEnum {
  /// The underlying value of this enum member.
  final String value;

  const RouteResponseCodeEnum._internal(this.value);

  static const RouteResponseCodeEnum ok_ = RouteResponseCodeEnum._internal("Ok");
  static const RouteResponseCodeEnum invalidUrl_ = RouteResponseCodeEnum._internal("InvalidUrl");
  static const RouteResponseCodeEnum invalidService_ = RouteResponseCodeEnum._internal("InvalidService");
  static const RouteResponseCodeEnum invalidVersion_ = RouteResponseCodeEnum._internal("InvalidVersion");
  static const RouteResponseCodeEnum invalidOptions_ = RouteResponseCodeEnum._internal("InvalidOptions");
  static const RouteResponseCodeEnum invalidQuery_ = RouteResponseCodeEnum._internal("InvalidQuery");
  static const RouteResponseCodeEnum invalidValue_ = RouteResponseCodeEnum._internal("InvalidValue");
  static const RouteResponseCodeEnum noSegment_ = RouteResponseCodeEnum._internal("NoSegment");
  static const RouteResponseCodeEnum tooBig_ = RouteResponseCodeEnum._internal("TooBig");
  static const RouteResponseCodeEnum noRoute_ = RouteResponseCodeEnum._internal("NoRoute");
  static const RouteResponseCodeEnum noTable_ = RouteResponseCodeEnum._internal("NoTable");
  static const RouteResponseCodeEnum notImplemented_ = RouteResponseCodeEnum._internal("NotImplemented");
  static const RouteResponseCodeEnum noTrips_ = RouteResponseCodeEnum._internal("NoTrips");

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static RouteResponseCodeEnum fromJson(String value) {
    return RouteResponseCodeEnumTypeTransformer().decode(value);
  }

  static List<RouteResponseCodeEnum> listFromJson(List<dynamic> json) {
    return json == null
        ? List<RouteResponseCodeEnum>()
        : json.map((value) => RouteResponseCodeEnum.fromJson(value)).toList();
  }
}

class RouteResponseCodeEnumTypeTransformer {

  dynamic encode(RouteResponseCodeEnum data) {
    return data.value;
  }

  RouteResponseCodeEnum decode(dynamic data) {
    switch (data) {
      case "Ok": return RouteResponseCodeEnum.ok_;
      case "InvalidUrl": return RouteResponseCodeEnum.invalidUrl_;
      case "InvalidService": return RouteResponseCodeEnum.invalidService_;
      case "InvalidVersion": return RouteResponseCodeEnum.invalidVersion_;
      case "InvalidOptions": return RouteResponseCodeEnum.invalidOptions_;
      case "InvalidQuery": return RouteResponseCodeEnum.invalidQuery_;
      case "InvalidValue": return RouteResponseCodeEnum.invalidValue_;
      case "NoSegment": return RouteResponseCodeEnum.noSegment_;
      case "TooBig": return RouteResponseCodeEnum.tooBig_;
      case "NoRoute": return RouteResponseCodeEnum.noRoute_;
      case "NoTable": return RouteResponseCodeEnum.noTable_;
      case "NotImplemented": return RouteResponseCodeEnum.notImplemented_;
      case "NoTrips": return RouteResponseCodeEnum.noTrips_;
      default: return null;
    }
  }
}


