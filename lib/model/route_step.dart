part of osrm_dart_sdk.api;

class RouteStep {
  
  double distance;
  
  double duration;
  
  Object geometry;
  
  double weight;
  
  String name;
  
  num ref;
  
  String pronunciation;
  
  Object destinations;
  
  Object exits;
  
  String mode;
  
  StepManeuver maneuver;
  
  List<Intersection> intersections = const [];
  
  String rotaryName;
  
  String rotaryPronunciation;
  
  RouteStepDrivingSideEnum drivingSide;

  RouteStep({
    this.distance,
    this.duration,
    this.geometry,
    this.weight,
    this.name,
    this.ref,
    this.pronunciation,
    this.destinations,
    this.exits,
    this.mode,
    this.maneuver,
    this.intersections,
    this.rotaryName,
    this.rotaryPronunciation,
    this.drivingSide,
  });

  @override
  String toString() {
    return 'RouteStep[distance=$distance, duration=$duration, geometry=$geometry, weight=$weight, name=$name, ref=$ref, pronunciation=$pronunciation, destinations=$destinations, exits=$exits, mode=$mode, maneuver=$maneuver, intersections=$intersections, rotaryName=$rotaryName, rotaryPronunciation=$rotaryPronunciation, drivingSide=$drivingSide, ]';
  }

  RouteStep.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    distance = (json['distance'] == null) ?
      null :
      json['distance'].toDouble();
    duration = (json['duration'] == null) ?
      null :
      json['duration'].toDouble();
    geometry = json['geometry'];
    weight = (json['weight'] == null) ?
      null :
      json['weight'].toDouble();
    name = json['name'];
    ref = json['ref'];
    pronunciation = json['pronunciation'];
    destinations = json['destinations'];
    exits = json['exits'];
    mode = json['mode'];
    maneuver = (json['maneuver'] == null) ?
      null :
      StepManeuver.fromJson(json['maneuver']);
    intersections = (json['intersections'] == null) ?
      null :
      Intersection.listFromJson(json['intersections']);
    rotaryName = json['rotary_name'];
    rotaryPronunciation = json['rotary_pronunciation'];
    drivingSide = RouteStepDrivingSideEnum.fromJson(json['driving_side']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (distance != null)
      json['distance'] = distance;
    if (duration != null)
      json['duration'] = duration;
    if (geometry != null)
      json['geometry'] = geometry;
    if (weight != null)
      json['weight'] = weight;
    if (name != null)
      json['name'] = name;
    if (ref != null)
      json['ref'] = ref;
    if (pronunciation != null)
      json['pronunciation'] = pronunciation;
    if (destinations != null)
      json['destinations'] = destinations;
    if (exits != null)
      json['exits'] = exits;
    if (mode != null)
      json['mode'] = mode;
    if (maneuver != null)
      json['maneuver'] = maneuver;
    if (intersections != null)
      json['intersections'] = intersections;
    if (rotaryName != null)
      json['rotary_name'] = rotaryName;
    if (rotaryPronunciation != null)
      json['rotary_pronunciation'] = rotaryPronunciation;
    if (drivingSide != null)
      json['driving_side'] = drivingSide.value;
    return json;
  }

  static List<RouteStep> listFromJson(List<dynamic> json) {
    return json == null ? List<RouteStep>() : json.map((value) => RouteStep.fromJson(value)).toList();
  }

  static Map<String, RouteStep> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, RouteStep>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RouteStep.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RouteStep-objects as value to a dart map
  static Map<String, List<RouteStep>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<RouteStep>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = RouteStep.listFromJson(value);
      });
    }
    return map;
  }
}
class RouteStepDrivingSideEnum {
  /// The underlying value of this enum member.
  final String value;

  const RouteStepDrivingSideEnum._internal(this.value);

  static const RouteStepDrivingSideEnum left_ = RouteStepDrivingSideEnum._internal("left");
  static const RouteStepDrivingSideEnum right_ = RouteStepDrivingSideEnum._internal("right");

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static RouteStepDrivingSideEnum fromJson(String value) {
    return RouteStepDrivingSideEnumTypeTransformer().decode(value);
  }

  static List<RouteStepDrivingSideEnum> listFromJson(List<dynamic> json) {
    return json == null
        ? List<RouteStepDrivingSideEnum>()
        : json.map((value) => RouteStepDrivingSideEnum.fromJson(value)).toList();
  }
}

class RouteStepDrivingSideEnumTypeTransformer {

  dynamic encode(RouteStepDrivingSideEnum data) {
    return data.value;
  }

  RouteStepDrivingSideEnum decode(dynamic data) {
    switch (data) {
      case "left": return RouteStepDrivingSideEnum.left_;
      case "right": return RouteStepDrivingSideEnum.right_;
      default: return null;
    }
  }
}


