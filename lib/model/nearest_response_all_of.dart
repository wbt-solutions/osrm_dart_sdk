part of osrm_dart_sdk.api;

class NearestResponseAllOf {
  
  List<NearestWaypoint> waypoints = const [];

  NearestResponseAllOf({
    this.waypoints,
  });

  @override
  String toString() {
    return 'NearestResponseAllOf[waypoints=$waypoints, ]';
  }

  NearestResponseAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    waypoints = (json['waypoints'] == null) ?
      null :
      NearestWaypoint.listFromJson(json['waypoints']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (waypoints != null)
      json['waypoints'] = waypoints;
    return json;
  }

  static List<NearestResponseAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<NearestResponseAllOf>() : json.map((value) => NearestResponseAllOf.fromJson(value)).toList();
  }

  static Map<String, NearestResponseAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, NearestResponseAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NearestResponseAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NearestResponseAllOf-objects as value to a dart map
  static Map<String, List<NearestResponseAllOf>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<NearestResponseAllOf>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = NearestResponseAllOf.listFromJson(value);
      });
    }
    return map;
  }
}

