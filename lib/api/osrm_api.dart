part of osrm_dart_sdk.api;



class OSRMApi {
  final ApiClient apiClient;

  OSRMApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> nearestWithHttpInfo(String version, String profile, String coordinate, int number, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude }) async {
    Object postBody;

    // verify required params are set
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(profile == null) {
     throw ApiException(400, "Missing required param: profile");
    }
    if(coordinate == null) {
     throw ApiException(400, "Missing required param: coordinate");
    }
    if(number == null) {
     throw ApiException(400, "Missing required param: number");
    }

    // create path and map variables
    String path = "/nearest/{version}/{profile}/{coordinate}.json".replaceAll("{format}","json").replaceAll("{" + "version" + "}", version.toString()).replaceAll("{" + "profile" + "}", profile.toString()).replaceAll("{" + "coordinate" + "}", coordinate.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(bearings != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bearings", bearings));
    }
    if(radiuses != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "radiuses", radiuses));
    }
    if(generateHints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "generate_hints", generateHints));
    }
    if(hints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "hints", hints));
    }
    if(approaches != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "approaches", approaches));
    }
    if(exclude != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude", exclude));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "number", number));

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String version  (required):
  ///     Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///String profile  (required):
  ///     Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///String coordinate  (required):
  ///    
  ///int number  (required):
  ///     Number of nearest segments that should be returned.
  ///String bearings :
  ///     Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///String radiuses :
  ///     Limits the search to given radius in meters.
  ///bool generateHints :
  ///     Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///String hints :
  ///     Hint from previous request to derive position in street network.
  ///String approaches :
  ///     Keep waypoints on curb side.
  ///String exclude :
  ///     Additive list of classes to avoid, order does not matter.
  /// 
  Future<NearestResponse> nearest(String version, String profile, String coordinate, int number, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude }) async {
    Response response = await nearestWithHttpInfo(version, profile, coordinate, number,  bearings: bearings, radiuses: radiuses, generateHints: generateHints, hints: hints, approaches: approaches, exclude: exclude );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'NearestResponse') as NearestResponse;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> routeWithHttpInfo(String version, String profile, String coordinates, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude, dynamic alternatives, bool steps, bool annotations, String geometries, String overview, String continueStraight, String waypoints }) async {
    Object postBody;

    // verify required params are set
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(profile == null) {
     throw ApiException(400, "Missing required param: profile");
    }
    if(coordinates == null) {
     throw ApiException(400, "Missing required param: coordinates");
    }

    // create path and map variables
    String path = "/route/{version}/{profile}/{coordinates}".replaceAll("{format}","json").replaceAll("{" + "version" + "}", version.toString()).replaceAll("{" + "profile" + "}", profile.toString()).replaceAll("{" + "coordinates" + "}", coordinates.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(bearings != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bearings", bearings));
    }
    if(radiuses != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "radiuses", radiuses));
    }
    if(generateHints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "generate_hints", generateHints));
    }
    if(hints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "hints", hints));
    }
    if(approaches != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "approaches", approaches));
    }
    if(exclude != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude", exclude));
    }
    if(alternatives != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "alternatives", alternatives));
    }
    if(steps != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "steps", steps));
    }
    if(annotations != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "annotations", annotations));
    }
    if(geometries != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "geometries", geometries));
    }
    if(overview != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "overview", overview));
    }
    if(continueStraight != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "continue_straight", continueStraight));
    }
    if(waypoints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "waypoints", waypoints));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String version  (required):
  ///     Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///String profile  (required):
  ///     Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///String coordinates  (required):
  ///    
  ///String bearings :
  ///     Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///String radiuses :
  ///     Limits the search to given radius in meters.
  ///bool generateHints :
  ///     Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///String hints :
  ///     Hint from previous request to derive position in street network.
  ///String approaches :
  ///     Keep waypoints on curb side.
  ///String exclude :
  ///     Additive list of classes to avoid, order does not matter.
  ///dynamic alternatives :
  ///     Search for alternative routes. Passing a number alternatives=n searches for up to n alternative routes.
  ///bool steps :
  ///     Returned route steps for each route leg
  ///bool annotations :
  ///     Returns additional metadata for each coordinate along the route geometry.
  ///String geometries :
  ///     Returned route geometry format (influences overview and per step)
  ///String overview :
  ///     Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all.
  ///String continueStraight :
  ///     Forces the route to keep going straight at waypoints constraining uturns there even if it would be faster. Default value depends on the profile.
  ///String waypoints :
  ///     Treats input coordinates indicated by given indices as waypoints in returned Match object. Default is to treat all input coordinates as waypoints.
  /// 
  Future<RouteResponse> route(String version, String profile, String coordinates, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude, dynamic alternatives, bool steps, bool annotations, String geometries, String overview, String continueStraight, String waypoints }) async {
    Response response = await routeWithHttpInfo(version, profile, coordinates,  bearings: bearings, radiuses: radiuses, generateHints: generateHints, hints: hints, approaches: approaches, exclude: exclude, alternatives: alternatives, steps: steps, annotations: annotations, geometries: geometries, overview: overview, continueStraight: continueStraight, waypoints: waypoints );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RouteResponse') as RouteResponse;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> tableWithHttpInfo(String version, String profile, String coordinates, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude, String sources, String destinations }) async {
    Object postBody;

    // verify required params are set
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(profile == null) {
     throw ApiException(400, "Missing required param: profile");
    }
    if(coordinates == null) {
     throw ApiException(400, "Missing required param: coordinates");
    }

    // create path and map variables
    String path = "/table/{version}/{profile}/{coordinates}".replaceAll("{format}","json").replaceAll("{" + "version" + "}", version.toString()).replaceAll("{" + "profile" + "}", profile.toString()).replaceAll("{" + "coordinates" + "}", coordinates.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(bearings != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bearings", bearings));
    }
    if(radiuses != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "radiuses", radiuses));
    }
    if(generateHints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "generate_hints", generateHints));
    }
    if(hints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "hints", hints));
    }
    if(approaches != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "approaches", approaches));
    }
    if(exclude != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude", exclude));
    }
    if(sources != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sources", sources));
    }
    if(destinations != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "destinations", destinations));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String version  (required):
  ///     Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///String profile  (required):
  ///     Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///String coordinates  (required):
  ///    
  ///String bearings :
  ///     Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///String radiuses :
  ///     Limits the search to given radius in meters.
  ///bool generateHints :
  ///     Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///String hints :
  ///     Hint from previous request to derive position in street network.
  ///String approaches :
  ///     Keep waypoints on curb side.
  ///String exclude :
  ///     Additive list of classes to avoid, order does not matter.
  ///String sources :
  ///     Use location with given index as source.
  ///String destinations :
  ///     Use location with given index as destination.
  /// 
  Future<TableResponse> table(String version, String profile, String coordinates, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude, String sources, String destinations }) async {
    Response response = await tableWithHttpInfo(version, profile, coordinates,  bearings: bearings, radiuses: radiuses, generateHints: generateHints, hints: hints, approaches: approaches, exclude: exclude, sources: sources, destinations: destinations );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TableResponse') as TableResponse;
    } else {
      return null;
    }
  }

  ///  with HTTP info returned
  ///
  /// 
  Future<Response> tripWithHttpInfo(String version, String profile, String coordinates, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude, bool roundtrip, String source_, String destination, bool steps, String annotations, String geometries, String overview }) async {
    Object postBody;

    // verify required params are set
    if(version == null) {
     throw ApiException(400, "Missing required param: version");
    }
    if(profile == null) {
     throw ApiException(400, "Missing required param: profile");
    }
    if(coordinates == null) {
     throw ApiException(400, "Missing required param: coordinates");
    }

    // create path and map variables
    String path = "/trip/{version}/{profile}/{coordinates}".replaceAll("{format}","json").replaceAll("{" + "version" + "}", version.toString()).replaceAll("{" + "profile" + "}", profile.toString()).replaceAll("{" + "coordinates" + "}", coordinates.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(bearings != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "bearings", bearings));
    }
    if(radiuses != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "radiuses", radiuses));
    }
    if(generateHints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "generate_hints", generateHints));
    }
    if(hints != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "hints", hints));
    }
    if(approaches != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "approaches", approaches));
    }
    if(exclude != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "exclude", exclude));
    }
    if(roundtrip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "roundtrip", roundtrip));
    }
    if(source_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "source", source_));
    }
    if(destination != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "destination", destination));
    }
    if(steps != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "steps", steps));
    }
    if(annotations != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "annotations", annotations));
    }
    if(geometries != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "geometries", geometries));
    }
    if(overview != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "overview", overview));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// 
  ///
  ///String version  (required):
  ///     Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///String profile  (required):
  ///     Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///String coordinates  (required):
  ///    
  ///String bearings :
  ///     Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///String radiuses :
  ///     Limits the search to given radius in meters.
  ///bool generateHints :
  ///     Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///String hints :
  ///     Hint from previous request to derive position in street network.
  ///String approaches :
  ///     Keep waypoints on curb side.
  ///String exclude :
  ///     Additive list of classes to avoid, order does not matter.
  ///bool roundtrip :
  ///     Returned route is a roundtrip (route returns to first location)
  ///String source_ :
  ///     Returned route starts at any or first coordinate
  ///String destination :
  ///     Returned route ends at any or last coordinate
  ///bool steps :
  ///     Returned route instructions for each trip
  ///String annotations :
  ///     Returns additional metadata for each coordinate along the route geometry.
  ///String geometries :
  ///     Returned route geometry format (influences overview and per step)
  ///String overview :
  ///     Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all.
  /// 
  Future<TripResponse> trip(String version, String profile, String coordinates, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude, bool roundtrip, String source_, String destination, bool steps, String annotations, String geometries, String overview }) async {
    Response response = await tripWithHttpInfo(version, profile, coordinates,  bearings: bearings, radiuses: radiuses, generateHints: generateHints, hints: hints, approaches: approaches, exclude: exclude, roundtrip: roundtrip, source_: source_, destination: destination, steps: steps, annotations: annotations, geometries: geometries, overview: overview );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TripResponse') as TripResponse;
    } else {
      return null;
    }
  }

}
