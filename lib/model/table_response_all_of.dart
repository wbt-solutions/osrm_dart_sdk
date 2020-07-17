part of osrm_dart_sdk.api;

class TableResponseAllOf {
  
  List<List<double>> durations = const [];
  
  List<List<double>> distances = const [];
  
  List<Waypoint> sources = const [];
  
  List<Waypoint> destinations = const [];
  
  List<List<int>> fallbackSpeedCells = const [];

  TableResponseAllOf({
    this.durations,
    this.distances,
    this.sources,
    this.destinations,
    this.fallbackSpeedCells,
  });

  @override
  String toString() {
    return 'TableResponseAllOf[durations=$durations, distances=$distances, sources=$sources, destinations=$destinations, fallbackSpeedCells=$fallbackSpeedCells, ]';
  }

  TableResponseAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    durations = (json['durations'] == null) ?
      null :
      (json['durations'] as List).map(
        (e) => e == null ? null :
          (e as List).cast<double>()
      ).toList();
    distances = (json['distances'] == null) ?
      null :
      (json['distances'] as List).map(
        (e) => e == null ? null :
          (e as List).cast<double>()
      ).toList();
    sources = (json['sources'] == null) ?
      null :
      Waypoint.listFromJson(json['sources']);
    destinations = (json['destinations'] == null) ?
      null :
      Waypoint.listFromJson(json['destinations']);
    fallbackSpeedCells = (json['fallback_speed_cells'] == null) ?
      null :
      (json['fallback_speed_cells'] as List).map(
        (e) => e == null ? null :
          (e as List).cast<int>()
      ).toList();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (durations != null)
      json['durations'] = durations;
    if (distances != null)
      json['distances'] = distances;
    if (sources != null)
      json['sources'] = sources;
    if (destinations != null)
      json['destinations'] = destinations;
    if (fallbackSpeedCells != null)
      json['fallback_speed_cells'] = fallbackSpeedCells;
    return json;
  }

  static List<TableResponseAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<TableResponseAllOf>() : json.map((value) => TableResponseAllOf.fromJson(value)).toList();
  }

  static Map<String, TableResponseAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TableResponseAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TableResponseAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TableResponseAllOf-objects as value to a dart map
  static Map<String, List<TableResponseAllOf>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TableResponseAllOf>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TableResponseAllOf.listFromJson(value);
      });
    }
    return map;
  }
}

