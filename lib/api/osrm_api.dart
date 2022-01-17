//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of osrm_dart_sdk.api;


class OSRMApi {
  OSRMApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /nearest/{version}/{profile}/{coordinate}.json' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///
  /// * [String] profile (required):
  ///   Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///
  /// * [String] coordinate (required):
  ///
  /// * [int] number (required):
  ///   Number of nearest segments that should be returned.
  ///
  /// * [String] bearings:
  ///   Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///
  /// * [String] radiuses:
  ///   Limits the search to given radius in meters.
  ///
  /// * [bool] generateHints:
  ///   Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///
  /// * [String] hints:
  ///   Hint from previous request to derive position in street network.
  ///
  /// * [String] approaches:
  ///   Keep waypoints on curb side.
  ///
  /// * [String] exclude:
  ///   Additive list of classes to avoid, order does not matter.
  Future<Response> nearestWithHttpInfo(String version, String profile, String coordinate, int number, { String? bearings, String? radiuses, bool? generateHints, String? hints, String? approaches, String? exclude, }) async {
    // ignore: prefer_const_declarations
    final path = r'/nearest/{version}/{profile}/{coordinate}.json'
      .replaceAll('{version}', version)
      .replaceAll('{profile}', profile)
      .replaceAll('{coordinate}', coordinate);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (bearings != null) {
      queryParams.addAll(_queryParams('', 'bearings', bearings));
    }
    if (radiuses != null) {
      queryParams.addAll(_queryParams('', 'radiuses', radiuses));
    }
    if (generateHints != null) {
      queryParams.addAll(_queryParams('', 'generate_hints', generateHints));
    }
    if (hints != null) {
      queryParams.addAll(_queryParams('', 'hints', hints));
    }
    if (approaches != null) {
      queryParams.addAll(_queryParams('', 'approaches', approaches));
    }
    if (exclude != null) {
      queryParams.addAll(_queryParams('', 'exclude', exclude));
    }
      queryParams.addAll(_queryParams('', 'number', number));

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] version (required):
  ///   Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///
  /// * [String] profile (required):
  ///   Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///
  /// * [String] coordinate (required):
  ///
  /// * [int] number (required):
  ///   Number of nearest segments that should be returned.
  ///
  /// * [String] bearings:
  ///   Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///
  /// * [String] radiuses:
  ///   Limits the search to given radius in meters.
  ///
  /// * [bool] generateHints:
  ///   Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///
  /// * [String] hints:
  ///   Hint from previous request to derive position in street network.
  ///
  /// * [String] approaches:
  ///   Keep waypoints on curb side.
  ///
  /// * [String] exclude:
  ///   Additive list of classes to avoid, order does not matter.
  Future<NearestResponse?> nearest(String version, String profile, String coordinate, int number, { String? bearings, String? radiuses, bool? generateHints, String? hints, String? approaches, String? exclude, }) async {
    final response = await nearestWithHttpInfo(version, profile, coordinate, number,  bearings: bearings, radiuses: radiuses, generateHints: generateHints, hints: hints, approaches: approaches, exclude: exclude, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NearestResponse',) as NearestResponse;

    }
    return null;
  }

  /// Performs an HTTP 'GET /route/{version}/{profile}/{coordinates}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///
  /// * [String] profile (required):
  ///   Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///
  /// * [String] coordinates (required):
  ///
  /// * [String] bearings:
  ///   Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///
  /// * [String] radiuses:
  ///   Limits the search to given radius in meters.
  ///
  /// * [bool] generateHints:
  ///   Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///
  /// * [String] hints:
  ///   Hint from previous request to derive position in street network.
  ///
  /// * [String] approaches:
  ///   Keep waypoints on curb side.
  ///
  /// * [String] exclude:
  ///   Additive list of classes to avoid, order does not matter.
  ///
  /// * [OneOfbooleaninteger] alternatives:
  ///   Search for alternative routes. Passing a number alternatives=n searches for up to n alternative routes.
  ///
  /// * [bool] steps:
  ///   Returned route steps for each route leg
  ///
  /// * [bool] annotations:
  ///   Returns additional metadata for each coordinate along the route geometry.
  ///
  /// * [String] geometries:
  ///   Returned route geometry format (influences overview and per step)
  ///
  /// * [String] overview:
  ///   Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all.
  ///
  /// * [String] continueStraight:
  ///   Forces the route to keep going straight at waypoints constraining uturns there even if it would be faster. Default value depends on the profile.
  ///
  /// * [String] waypoints:
  ///   Treats input coordinates indicated by given indices as waypoints in returned Match object. Default is to treat all input coordinates as waypoints.
  Future<Response> routeWithHttpInfo(String version, String profile, String coordinates, { String? bearings, String? radiuses, bool? generateHints, String? hints, String? approaches, String? exclude, dynamic alternatives, bool? steps, bool? annotations, String? geometries, String? overview, String? continueStraight, String? waypoints, }) async {
    // ignore: prefer_const_declarations
    final path = r'/route/{version}/{profile}/{coordinates}'
      .replaceAll('{version}', version)
      .replaceAll('{profile}', profile)
      .replaceAll('{coordinates}', coordinates);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (bearings != null) {
      queryParams.addAll(_queryParams('', 'bearings', bearings));
    }
    if (radiuses != null) {
      queryParams.addAll(_queryParams('', 'radiuses', radiuses));
    }
    if (generateHints != null) {
      queryParams.addAll(_queryParams('', 'generate_hints', generateHints));
    }
    if (hints != null) {
      queryParams.addAll(_queryParams('', 'hints', hints));
    }
    if (approaches != null) {
      queryParams.addAll(_queryParams('', 'approaches', approaches));
    }
    if (exclude != null) {
      queryParams.addAll(_queryParams('', 'exclude', exclude));
    }
    if (alternatives != null) {
      queryParams.addAll(_queryParams('', 'alternatives', alternatives));
    }
    if (steps != null) {
      queryParams.addAll(_queryParams('', 'steps', steps));
    }
    if (annotations != null) {
      queryParams.addAll(_queryParams('', 'annotations', annotations));
    }
    if (geometries != null) {
      queryParams.addAll(_queryParams('', 'geometries', geometries));
    }
    if (overview != null) {
      queryParams.addAll(_queryParams('', 'overview', overview));
    }
    if (continueStraight != null) {
      queryParams.addAll(_queryParams('', 'continue_straight', continueStraight));
    }
    if (waypoints != null) {
      queryParams.addAll(_queryParams('', 'waypoints', waypoints));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] version (required):
  ///   Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///
  /// * [String] profile (required):
  ///   Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///
  /// * [String] coordinates (required):
  ///
  /// * [String] bearings:
  ///   Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///
  /// * [String] radiuses:
  ///   Limits the search to given radius in meters.
  ///
  /// * [bool] generateHints:
  ///   Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///
  /// * [String] hints:
  ///   Hint from previous request to derive position in street network.
  ///
  /// * [String] approaches:
  ///   Keep waypoints on curb side.
  ///
  /// * [String] exclude:
  ///   Additive list of classes to avoid, order does not matter.
  ///
  /// * [OneOfbooleaninteger] alternatives:
  ///   Search for alternative routes. Passing a number alternatives=n searches for up to n alternative routes.
  ///
  /// * [bool] steps:
  ///   Returned route steps for each route leg
  ///
  /// * [bool] annotations:
  ///   Returns additional metadata for each coordinate along the route geometry.
  ///
  /// * [String] geometries:
  ///   Returned route geometry format (influences overview and per step)
  ///
  /// * [String] overview:
  ///   Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all.
  ///
  /// * [String] continueStraight:
  ///   Forces the route to keep going straight at waypoints constraining uturns there even if it would be faster. Default value depends on the profile.
  ///
  /// * [String] waypoints:
  ///   Treats input coordinates indicated by given indices as waypoints in returned Match object. Default is to treat all input coordinates as waypoints.
  Future<RouteResponse?> route(String version, String profile, String coordinates, { String? bearings, String? radiuses, bool? generateHints, String? hints, String? approaches, String? exclude, dynamic alternatives, bool? steps, bool? annotations, String? geometries, String? overview, String? continueStraight, String? waypoints, }) async {
    final response = await routeWithHttpInfo(version, profile, coordinates,  bearings: bearings, radiuses: radiuses, generateHints: generateHints, hints: hints, approaches: approaches, exclude: exclude, alternatives: alternatives, steps: steps, annotations: annotations, geometries: geometries, overview: overview, continueStraight: continueStraight, waypoints: waypoints, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RouteResponse',) as RouteResponse;

    }
    return null;
  }

  /// Performs an HTTP 'GET /table/{version}/{profile}/{coordinates}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///
  /// * [String] profile (required):
  ///   Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///
  /// * [String] coordinates (required):
  ///
  /// * [String] bearings:
  ///   Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///
  /// * [String] radiuses:
  ///   Limits the search to given radius in meters.
  ///
  /// * [bool] generateHints:
  ///   Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///
  /// * [String] hints:
  ///   Hint from previous request to derive position in street network.
  ///
  /// * [String] approaches:
  ///   Keep waypoints on curb side.
  ///
  /// * [String] exclude:
  ///   Additive list of classes to avoid, order does not matter.
  ///
  /// * [String] sources:
  ///   Use location with given index as source.
  ///
  /// * [String] destinations:
  ///   Use location with given index as destination.
  Future<Response> tableWithHttpInfo(String version, String profile, String coordinates, { String? bearings, String? radiuses, bool? generateHints, String? hints, String? approaches, String? exclude, String? sources, String? destinations, }) async {
    // ignore: prefer_const_declarations
    final path = r'/table/{version}/{profile}/{coordinates}'
      .replaceAll('{version}', version)
      .replaceAll('{profile}', profile)
      .replaceAll('{coordinates}', coordinates);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (bearings != null) {
      queryParams.addAll(_queryParams('', 'bearings', bearings));
    }
    if (radiuses != null) {
      queryParams.addAll(_queryParams('', 'radiuses', radiuses));
    }
    if (generateHints != null) {
      queryParams.addAll(_queryParams('', 'generate_hints', generateHints));
    }
    if (hints != null) {
      queryParams.addAll(_queryParams('', 'hints', hints));
    }
    if (approaches != null) {
      queryParams.addAll(_queryParams('', 'approaches', approaches));
    }
    if (exclude != null) {
      queryParams.addAll(_queryParams('', 'exclude', exclude));
    }
    if (sources != null) {
      queryParams.addAll(_queryParams('', 'sources', sources));
    }
    if (destinations != null) {
      queryParams.addAll(_queryParams('', 'destinations', destinations));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] version (required):
  ///   Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///
  /// * [String] profile (required):
  ///   Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///
  /// * [String] coordinates (required):
  ///
  /// * [String] bearings:
  ///   Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///
  /// * [String] radiuses:
  ///   Limits the search to given radius in meters.
  ///
  /// * [bool] generateHints:
  ///   Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///
  /// * [String] hints:
  ///   Hint from previous request to derive position in street network.
  ///
  /// * [String] approaches:
  ///   Keep waypoints on curb side.
  ///
  /// * [String] exclude:
  ///   Additive list of classes to avoid, order does not matter.
  ///
  /// * [String] sources:
  ///   Use location with given index as source.
  ///
  /// * [String] destinations:
  ///   Use location with given index as destination.
  Future<TableResponse?> table(String version, String profile, String coordinates, { String? bearings, String? radiuses, bool? generateHints, String? hints, String? approaches, String? exclude, String? sources, String? destinations, }) async {
    final response = await tableWithHttpInfo(version, profile, coordinates,  bearings: bearings, radiuses: radiuses, generateHints: generateHints, hints: hints, approaches: approaches, exclude: exclude, sources: sources, destinations: destinations, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TableResponse',) as TableResponse;

    }
    return null;
  }

  /// Performs an HTTP 'GET /trip/{version}/{profile}/{coordinates}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] version (required):
  ///   Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///
  /// * [String] profile (required):
  ///   Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///
  /// * [String] coordinates (required):
  ///
  /// * [String] bearings:
  ///   Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///
  /// * [String] radiuses:
  ///   Limits the search to given radius in meters.
  ///
  /// * [bool] generateHints:
  ///   Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///
  /// * [String] hints:
  ///   Hint from previous request to derive position in street network.
  ///
  /// * [String] approaches:
  ///   Keep waypoints on curb side.
  ///
  /// * [String] exclude:
  ///   Additive list of classes to avoid, order does not matter.
  ///
  /// * [bool] roundtrip:
  ///   Returned route is a roundtrip (route returns to first location)
  ///
  /// * [String] source_:
  ///   Returned route starts at any or first coordinate
  ///
  /// * [String] destination:
  ///   Returned route ends at any or last coordinate
  ///
  /// * [bool] steps:
  ///   Returned route instructions for each trip
  ///
  /// * [String] annotations:
  ///   Returns additional metadata for each coordinate along the route geometry.
  ///
  /// * [String] geometries:
  ///   Returned route geometry format (influences overview and per step)
  ///
  /// * [String] overview:
  ///   Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all.
  Future<Response> tripWithHttpInfo(String version, String profile, String coordinates, { String? bearings, String? radiuses, bool? generateHints, String? hints, String? approaches, String? exclude, bool? roundtrip, String? source_, String? destination, bool? steps, String? annotations, String? geometries, String? overview, }) async {
    // ignore: prefer_const_declarations
    final path = r'/trip/{version}/{profile}/{coordinates}'
      .replaceAll('{version}', version)
      .replaceAll('{profile}', profile)
      .replaceAll('{coordinates}', coordinates);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (bearings != null) {
      queryParams.addAll(_queryParams('', 'bearings', bearings));
    }
    if (radiuses != null) {
      queryParams.addAll(_queryParams('', 'radiuses', radiuses));
    }
    if (generateHints != null) {
      queryParams.addAll(_queryParams('', 'generate_hints', generateHints));
    }
    if (hints != null) {
      queryParams.addAll(_queryParams('', 'hints', hints));
    }
    if (approaches != null) {
      queryParams.addAll(_queryParams('', 'approaches', approaches));
    }
    if (exclude != null) {
      queryParams.addAll(_queryParams('', 'exclude', exclude));
    }
    if (roundtrip != null) {
      queryParams.addAll(_queryParams('', 'roundtrip', roundtrip));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (destination != null) {
      queryParams.addAll(_queryParams('', 'destination', destination));
    }
    if (steps != null) {
      queryParams.addAll(_queryParams('', 'steps', steps));
    }
    if (annotations != null) {
      queryParams.addAll(_queryParams('', 'annotations', annotations));
    }
    if (geometries != null) {
      queryParams.addAll(_queryParams('', 'geometries', geometries));
    }
    if (overview != null) {
      queryParams.addAll(_queryParams('', 'overview', overview));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [String] version (required):
  ///   Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
  ///
  /// * [String] profile (required):
  ///   Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
  ///
  /// * [String] coordinates (required):
  ///
  /// * [String] bearings:
  ///   Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
  ///
  /// * [String] radiuses:
  ///   Limits the search to given radius in meters.
  ///
  /// * [bool] generateHints:
  ///   Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
  ///
  /// * [String] hints:
  ///   Hint from previous request to derive position in street network.
  ///
  /// * [String] approaches:
  ///   Keep waypoints on curb side.
  ///
  /// * [String] exclude:
  ///   Additive list of classes to avoid, order does not matter.
  ///
  /// * [bool] roundtrip:
  ///   Returned route is a roundtrip (route returns to first location)
  ///
  /// * [String] source_:
  ///   Returned route starts at any or first coordinate
  ///
  /// * [String] destination:
  ///   Returned route ends at any or last coordinate
  ///
  /// * [bool] steps:
  ///   Returned route instructions for each trip
  ///
  /// * [String] annotations:
  ///   Returns additional metadata for each coordinate along the route geometry.
  ///
  /// * [String] geometries:
  ///   Returned route geometry format (influences overview and per step)
  ///
  /// * [String] overview:
  ///   Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all.
  Future<TripResponse?> trip(String version, String profile, String coordinates, { String? bearings, String? radiuses, bool? generateHints, String? hints, String? approaches, String? exclude, bool? roundtrip, String? source_, String? destination, bool? steps, String? annotations, String? geometries, String? overview, }) async {
    final response = await tripWithHttpInfo(version, profile, coordinates,  bearings: bearings, radiuses: radiuses, generateHints: generateHints, hints: hints, approaches: approaches, exclude: exclude, roundtrip: roundtrip, source_: source_, destination: destination, steps: steps, annotations: annotations, geometries: geometries, overview: overview, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TripResponse',) as TripResponse;

    }
    return null;
  }
}
