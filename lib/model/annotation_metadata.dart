part of osrm_dart_sdk.api;

class AnnotationMetadata {
  
  List<String> datasourceNames = const [];

  AnnotationMetadata({
    this.datasourceNames = const [],
  });

  @override
  String toString() {
    return 'AnnotationMetadata[datasourceNames=$datasourceNames, ]';
  }

  AnnotationMetadata.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    datasourceNames = (json['datasource_names'] == null) ?
      null :
      (json['datasource_names'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (datasourceNames != null)
      json['datasource_names'] = datasourceNames;
    return json;
  }

  static List<AnnotationMetadata> listFromJson(List<dynamic> json) {
    return json == null ? List<AnnotationMetadata>() : json.map((value) => AnnotationMetadata.fromJson(value)).toList();
  }

  static Map<String, AnnotationMetadata> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, AnnotationMetadata>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AnnotationMetadata.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AnnotationMetadata-objects as value to a dart map
  static Map<String, List<AnnotationMetadata>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<AnnotationMetadata>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = AnnotationMetadata.listFromJson(value);
      });
    }
    return map;
  }
}

