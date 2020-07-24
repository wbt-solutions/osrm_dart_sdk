part of osrm_dart_sdk.api;

class NearestWaypoint {
  
  String name;
  
  List<double> location = const [];
  
  double distance;
  
  String hint;
  
  List<int> nodes = const [];

  NearestWaypoint({
    this.name,
    this.location = const [],
    this.distance,
    this.hint,
    this.nodes = const [],
  });

  @override
  String toString() {
    return 'NearestWaypoint[name=$name, location=$location, distance=$distance, hint=$hint, nodes=$nodes, ]';
  }

  NearestWaypoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    location = (json['location'] == null) ?
      null :
      (json['location'] as List).cast<double>();
    distance = (json['distance'] == null) ?
      null :
      json['distance'].toDouble();
    hint = json['hint'];
    nodes = (json['nodes'] == null) ?
      null :
      (json['nodes'] as List).cast<int>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (location != null)
      json['location'] = location;
    if (distance != null)
      json['distance'] = distance;
    if (hint != null)
      json['hint'] = hint;
    if (nodes != null)
      json['nodes'] = nodes;
    return json;
  }

  static List<NearestWaypoint> listFromJson(List<dynamic> json) {
    return json == null ? List<NearestWaypoint>() : json.map((value) => NearestWaypoint.fromJson(value)).toList();
  }

  static Map<String, NearestWaypoint> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, NearestWaypoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NearestWaypoint.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NearestWaypoint-objects as value to a dart map
  static Map<String, List<NearestWaypoint>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<NearestWaypoint>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = NearestWaypoint.listFromJson(value);
      });
    }
    return map;
  }
}

