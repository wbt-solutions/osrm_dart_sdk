part of osrm_dart_sdk.api;

class RouteLeg {
  
  double distance;
  
  double duration;
  
  double weight;
  
  String summary;
  
  List<RouteStep> steps = const [];
  
  Annotation annotation;

  RouteLeg({
    this.distance,
    this.duration,
    this.weight,
    this.summary,
    this.steps,
    this.annotation,
  });

  @override
  String toString() {
    return 'RouteLeg[distance=$distance, duration=$duration, weight=$weight, summary=$summary, steps=$steps, annotation=$annotation, ]';
  }

  RouteLeg.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    distance = (json['distance'] == null) ?
      null :
      json['distance'].toDouble();
    duration = (json['duration'] == null) ?
      null :
      json['duration'].toDouble();
    weight = (json['weight'] == null) ?
      null :
      json['weight'].toDouble();
    summary = json['summary'];
    steps = (json['steps'] == null) ?
      null :
      RouteStep.listFromJson(json['steps']);
    annotation = (json['annotation'] == null) ?
      null :
      Annotation.fromJson(json['annotation']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (distance != null)
      json['distance'] = distance;
    if (duration != null)
      json['duration'] = duration;
    if (weight != null)
      json['weight'] = weight;
    if (summary != null)
      json['summary'] = summary;
    if (steps != null)
      json['steps'] = steps;
    if (annotation != null)
      json['annotation'] = annotation;
    return json;
  }

  static List<RouteLeg> listFromJson(List<dynamic> json) {
    return json == null ? List<RouteLeg>() : json.map((value) => RouteLeg.fromJson(value)).toList();
  }

  static Map<String, RouteLeg> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, RouteLeg>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RouteLeg.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RouteLeg-objects as value to a dart map
  static Map<String, List<RouteLeg>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<RouteLeg>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = RouteLeg.listFromJson(value);
      });
    }
    return map;
  }
}

