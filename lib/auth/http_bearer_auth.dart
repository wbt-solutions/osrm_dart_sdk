part of osrm_dart_sdk.api;

class HttpBearerAuth implements Authentication {
  dynamic _accessToken;

  HttpBearerAuth() { }

  @override
  void applyToParams(List<QueryParam> queryParams, Map<String, String> headerParams) {
    if (_accessToken is String) {
      headerParams["Authorization"] = "Bearer " + _accessToken;
    } else if (_accessToken is String Function()){
      headerParams["Authorization"] = "Bearer " + _accessToken();
    } else {
      throw ArgumentError('Type of Bearer accessToken should be String or String Function().');
    }
  }

  void setAccessToken(dynamic accessToken) {
    if (!((accessToken is String) | (accessToken is String Function()))){
      throw ArgumentError('Type of Bearer accessToken should be String or String Function().');
    } 
    this._accessToken = accessToken;
  }
}
