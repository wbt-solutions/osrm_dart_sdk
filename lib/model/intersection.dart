part of osrm_dart_sdk.api;

class Intersection {
  
  List<double> location = const [];
  
  List<int> bearings = const [];
  
  List<String> classes = const [];
  
  List<bool> entry = const [];
  
  int in_;
  
  int out_;
  
  List<Lane> lanes = const [];

  Intersection({
    this.location = const [],
    this.bearings = const [],
    this.classes = const [],
    this.entry = const [],
    this.in_,
    this.out_,
    this.lanes = const [],
  });

  @override
  String toString() {
    return 'Intersection[location=$location, bearings=$bearings, classes=$classes, entry=$entry, in_=$in_, out_=$out_, lanes=$lanes, ]';
  }

  Intersection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    location = (json['location'] == null) ?
      null :
      (json['location'] as List).cast<double>();
    bearings = (json['bearings'] == null) ?
      null :
      (json['bearings'] as List).cast<int>();
    classes = (json['classes'] == null) ?
      null :
      (json['classes'] as List).cast<String>();
    entry = (json['entry'] == null) ?
      null :
      (json['entry'] as List).cast<bool>();
    in_ = json['in'];
    out_ = json['out'];
    lanes = (json['lanes'] == null) ?
      null :
      Lane.listFromJson(json['lanes']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (location != null)
      json['location'] = location;
    if (bearings != null)
      json['bearings'] = bearings;
    if (classes != null)
      json['classes'] = classes;
    if (entry != null)
      json['entry'] = entry;
    if (in_ != null)
      json['in'] = in_;
    if (out_ != null)
      json['out'] = out_;
    if (lanes != null)
      json['lanes'] = lanes;
    return json;
  }

  static List<Intersection> listFromJson(List<dynamic> json) {
    return json == null ? List<Intersection>() : json.map((value) => Intersection.fromJson(value)).toList();
  }

  static Map<String, Intersection> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Intersection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Intersection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Intersection-objects as value to a dart map
  static Map<String, List<Intersection>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Intersection>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Intersection.listFromJson(value);
      });
    }
    return map;
  }
}

