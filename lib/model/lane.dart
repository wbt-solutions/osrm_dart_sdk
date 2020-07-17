part of osrm_dart_sdk.api;

class Lane {
  
  List<String> indications = const [];
  
  LaneValidEnum valid;

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
    valid = LaneValidEnum.fromJson(json['valid']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (indications != null)
      json['indications'] = indications;
    if (valid != null)
      json['valid'] = valid.value;
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
class LaneValidEnum {
  /// The underlying value of this enum member.
  final String value;

  const LaneValidEnum._internal(this.value);

  static const LaneValidEnum true_ = LaneValidEnum._internal("true");
  static const LaneValidEnum false_ = LaneValidEnum._internal("false");

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static LaneValidEnum fromJson(String value) {
    return LaneValidEnumTypeTransformer().decode(value);
  }

  static List<LaneValidEnum> listFromJson(List<dynamic> json) {
    return json == null
        ? List<LaneValidEnum>()
        : json.map((value) => LaneValidEnum.fromJson(value)).toList();
  }
}

class LaneValidEnumTypeTransformer {

  dynamic encode(LaneValidEnum data) {
    return data.value;
  }

  LaneValidEnum decode(dynamic data) {
    switch (data) {
      case "true": return LaneValidEnum.true_;
      case "false": return LaneValidEnum.false_;
      default: return null;
    }
  }
}


