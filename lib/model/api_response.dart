part of osrm_dart_sdk.api;

class ApiResponse {
  
  ApiResponseCodeEnum code = ;
  
  String message;
  
  DateTime dataVersion;

  ApiResponse({
    @required this.code,
    this.message,
    this.dataVersion,
  });

  @override
  String toString() {
    return 'ApiResponse[code=$code, message=$message, dataVersion=$dataVersion, ]';
  }

  ApiResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = ApiResponseCodeEnum.fromJson(json['code']);
    message = json['message'];
    dataVersion = (json['data_version'] == null) ?
      null :
      DateTime.parse(json['data_version']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (code != null)
      json['code'] = code.value;
    if (message != null)
      json['message'] = message;
    if (dataVersion != null)
      json['data_version'] = dataVersion == null ? null : dataVersion.toUtc().toIso8601String();
    return json;
  }

  static List<ApiResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiResponse>() : json.map((value) => ApiResponse.fromJson(value)).toList();
  }

  static Map<String, ApiResponse> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, ApiResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiResponse-objects as value to a dart map
  static Map<String, List<ApiResponse>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<ApiResponse>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ApiResponse.listFromJson(value);
      });
    }
    return map;
  }
}
class ApiResponseCodeEnum {
  /// The underlying value of this enum member.
  final String value;

  const ApiResponseCodeEnum._internal(this.value);

  static const ApiResponseCodeEnum ok_ = ApiResponseCodeEnum._internal("Ok");
  static const ApiResponseCodeEnum invalidUrl_ = ApiResponseCodeEnum._internal("InvalidUrl");
  static const ApiResponseCodeEnum invalidService_ = ApiResponseCodeEnum._internal("InvalidService");
  static const ApiResponseCodeEnum invalidVersion_ = ApiResponseCodeEnum._internal("InvalidVersion");
  static const ApiResponseCodeEnum invalidOptions_ = ApiResponseCodeEnum._internal("InvalidOptions");
  static const ApiResponseCodeEnum invalidQuery_ = ApiResponseCodeEnum._internal("InvalidQuery");
  static const ApiResponseCodeEnum invalidValue_ = ApiResponseCodeEnum._internal("InvalidValue");
  static const ApiResponseCodeEnum noSegment_ = ApiResponseCodeEnum._internal("NoSegment");
  static const ApiResponseCodeEnum tooBig_ = ApiResponseCodeEnum._internal("TooBig");
  static const ApiResponseCodeEnum noRoute_ = ApiResponseCodeEnum._internal("NoRoute");
  static const ApiResponseCodeEnum noTable_ = ApiResponseCodeEnum._internal("NoTable");
  static const ApiResponseCodeEnum notImplemented_ = ApiResponseCodeEnum._internal("NotImplemented");
  static const ApiResponseCodeEnum noTrips_ = ApiResponseCodeEnum._internal("NoTrips");

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static ApiResponseCodeEnum fromJson(String value) {
    return ApiResponseCodeEnumTypeTransformer().decode(value);
  }

  static List<ApiResponseCodeEnum> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ApiResponseCodeEnum>()
        : json.map((value) => ApiResponseCodeEnum.fromJson(value)).toList();
  }
}

class ApiResponseCodeEnumTypeTransformer {

  dynamic encode(ApiResponseCodeEnum data) {
    return data.value;
  }

  ApiResponseCodeEnum decode(dynamic data) {
    switch (data) {
      case "Ok": return ApiResponseCodeEnum.ok_;
      case "InvalidUrl": return ApiResponseCodeEnum.invalidUrl_;
      case "InvalidService": return ApiResponseCodeEnum.invalidService_;
      case "InvalidVersion": return ApiResponseCodeEnum.invalidVersion_;
      case "InvalidOptions": return ApiResponseCodeEnum.invalidOptions_;
      case "InvalidQuery": return ApiResponseCodeEnum.invalidQuery_;
      case "InvalidValue": return ApiResponseCodeEnum.invalidValue_;
      case "NoSegment": return ApiResponseCodeEnum.noSegment_;
      case "TooBig": return ApiResponseCodeEnum.tooBig_;
      case "NoRoute": return ApiResponseCodeEnum.noRoute_;
      case "NoTable": return ApiResponseCodeEnum.noTable_;
      case "NotImplemented": return ApiResponseCodeEnum.notImplemented_;
      case "NoTrips": return ApiResponseCodeEnum.noTrips_;
      default: return null;
    }
  }
}


