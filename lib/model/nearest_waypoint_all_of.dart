part of osrm_dart_sdk.api;

class NearestWaypointAllOf {
  
  List<int> nodes = const [];

  NearestWaypointAllOf({
    this.nodes = const [],
  });

  @override
  String toString() {
    return 'NearestWaypointAllOf[nodes=$nodes, ]';
  }

  NearestWaypointAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    nodes = (json['nodes'] == null) ?
      null :
      (json['nodes'] as List).cast<int>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (nodes != null)
      json['nodes'] = nodes;
    return json;
  }

  static List<NearestWaypointAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<NearestWaypointAllOf>() : json.map((value) => NearestWaypointAllOf.fromJson(value)).toList();
  }

  static Map<String, NearestWaypointAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, NearestWaypointAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NearestWaypointAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NearestWaypointAllOf-objects as value to a dart map
  static Map<String, List<NearestWaypointAllOf>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<NearestWaypointAllOf>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = NearestWaypointAllOf.listFromJson(value);
      });
    }
    return map;
  }
}

