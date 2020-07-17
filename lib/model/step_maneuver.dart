part of osrm_dart_sdk.api;

class StepManeuver {
  
  List<double> location = const [];
  
  int bearingBefore;
  
  int bearingAfter;
  
  String type;
  
  String modifier;
  
  int exit;

  StepManeuver({
    this.location,
    this.bearingBefore,
    this.bearingAfter,
    this.type,
    this.modifier,
    this.exit,
  });

  @override
  String toString() {
    return 'StepManeuver[location=$location, bearingBefore=$bearingBefore, bearingAfter=$bearingAfter, type=$type, modifier=$modifier, exit=$exit, ]';
  }

  StepManeuver.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    location = (json['location'] == null) ?
      null :
      (json['location'] as List).cast<double>();
    bearingBefore = json['bearing_before'];
    bearingAfter = json['bearing_after'];
    type = json['type'];
    modifier = json['modifier'];
    exit = json['exit'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (location != null)
      json['location'] = location;
    if (bearingBefore != null)
      json['bearing_before'] = bearingBefore;
    if (bearingAfter != null)
      json['bearing_after'] = bearingAfter;
    if (type != null)
      json['type'] = type;
    if (modifier != null)
      json['modifier'] = modifier;
    if (exit != null)
      json['exit'] = exit;
    return json;
  }

  static List<StepManeuver> listFromJson(List<dynamic> json) {
    return json == null ? List<StepManeuver>() : json.map((value) => StepManeuver.fromJson(value)).toList();
  }

  static Map<String, StepManeuver> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, StepManeuver>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = StepManeuver.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StepManeuver-objects as value to a dart map
  static Map<String, List<StepManeuver>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<StepManeuver>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = StepManeuver.listFromJson(value);
      });
    }
    return map;
  }
}

