part of osrm_dart_sdk.api;

class Annotation {
  
  List<int> distance = const [];
  
  List<int> duration = const [];
  
  List<int> datasources = const [];
  
  List<int> nodes = const [];
  
  List<int> weight = const [];
  
  List<double> speed = const [];
  
  AnnotationMetadata metadata;

  Annotation({
    this.distance,
    this.duration,
    this.datasources,
    this.nodes,
    this.weight,
    this.speed,
    this.metadata,
  });

  @override
  String toString() {
    return 'Annotation[distance=$distance, duration=$duration, datasources=$datasources, nodes=$nodes, weight=$weight, speed=$speed, metadata=$metadata, ]';
  }

  Annotation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    distance = (json['distance'] == null) ?
      null :
      (json['distance'] as List).cast<int>();
    duration = (json['duration'] == null) ?
      null :
      (json['duration'] as List).cast<int>();
    datasources = (json['datasources'] == null) ?
      null :
      (json['datasources'] as List).cast<int>();
    nodes = (json['nodes'] == null) ?
      null :
      (json['nodes'] as List).cast<int>();
    weight = (json['weight'] == null) ?
      null :
      (json['weight'] as List).cast<int>();
    speed = (json['speed'] == null) ?
      null :
      (json['speed'] as List).cast<double>();
    metadata = (json['metadata'] == null) ?
      null :
      AnnotationMetadata.fromJson(json['metadata']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (distance != null)
      json['distance'] = distance;
    if (duration != null)
      json['duration'] = duration;
    if (datasources != null)
      json['datasources'] = datasources;
    if (nodes != null)
      json['nodes'] = nodes;
    if (weight != null)
      json['weight'] = weight;
    if (speed != null)
      json['speed'] = speed;
    if (metadata != null)
      json['metadata'] = metadata;
    return json;
  }

  static List<Annotation> listFromJson(List<dynamic> json) {
    return json == null ? List<Annotation>() : json.map((value) => Annotation.fromJson(value)).toList();
  }

  static Map<String, Annotation> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Annotation>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Annotation.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Annotation-objects as value to a dart map
  static Map<String, List<Annotation>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Annotation>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Annotation.listFromJson(value);
      });
    }
    return map;
  }
}

