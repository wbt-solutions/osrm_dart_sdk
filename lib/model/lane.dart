part of osrm_dart_sdk.api;

class Lane {
  
  List<String> indications = const [];
  
  bool valid;

  Lane({
    this.indications,
    this.valid,
  });

  @override
  String toString() {
    return 'Lane[indications=$indications, valid=$valid, ]';
  }

  Lane.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    indications = (json['indications'] == null) ?
      null :
      (json['indications'] as List).cast<String>();
    valid = json['valid'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (indications != null)
      json['indications'] = indications;
    if (valid != null)
      json['valid'] = valid;
    return json;
  }

  static List<Lane> listFromJson(List<dynamic> json) {
    return json == null ? List<Lane>() : json.map((value) => Lane.fromJson(value)).toList();
  }

  static Map<String, Lane> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Lane>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Lane.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Lane-objects as value to a dart map
  static Map<String, List<Lane>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Lane>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Lane.listFromJson(value);
      });
    }
    return map;
  }
}

