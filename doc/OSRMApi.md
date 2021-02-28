# osrm_dart_sdk.api.OSRMApi

## Load the API package
```dart
import 'package:osrm_dart_sdk/api.dart';
```

All URIs are relative to *http://router.project-osrm.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nearest**](OSRMApi.md#nearest) | **GET** /nearest/{version}/{profile}/{coordinate}.json | 
[**route**](OSRMApi.md#route) | **GET** /route/{version}/{profile}/{coordinates} | 
[**table**](OSRMApi.md#table) | **GET** /table/{version}/{profile}/{coordinates} | 
[**trip**](OSRMApi.md#trip) | **GET** /trip/{version}/{profile}/{coordinates} | 


# **nearest**
> NearestResponse nearest(version, profile, coordinate, number, bearings, radiuses, generateHints, hints, approaches, exclude)



### Example 
```dart
import 'package:osrm_dart_sdk/api.dart';

final api_instance = OSRMApi();
final version = version_example; // String | Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
final profile = profile_example; // String | Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
final coordinate = coordinate_example; // String | 
final number = 56; // int | Number of nearest segments that should be returned.
final bearings = bearings_example; // String | Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
final radiuses = radiuses_example; // String | Limits the search to given radius in meters.
final generateHints = true; // bool | Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
final hints = hints_example; // String | Hint from previous request to derive position in street network.
final approaches = approaches_example; // String | Keep waypoints on curb side.
final exclude = exclude_example; // String | Additive list of classes to avoid, order does not matter.

try { 
    final result = api_instance.nearest(version, profile, coordinate, number, bearings, radiuses, generateHints, hints, approaches, exclude);
    print(result);
} catch (e) {
    print('Exception when calling OSRMApi->nearest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Version of the protocol implemented by the service. v1 for all OSRM 5.x installations | 
 **profile** | **String**| Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles. | 
 **coordinate** | **String**|  | 
 **number** | **int**| Number of nearest segments that should be returned. | [default to 1]
 **bearings** | **String**| Limits the search to segments with given bearing in degrees towards true north in clockwise direction. | [optional] 
 **radiuses** | **String**| Limits the search to given radius in meters. | [optional] 
 **generateHints** | **bool**| Adds a Hint to the response which can be used in subsequent requests, see hints parameter. | [optional] 
 **hints** | **String**| Hint from previous request to derive position in street network. | [optional] 
 **approaches** | **String**| Keep waypoints on curb side. | [optional] 
 **exclude** | **String**| Additive list of classes to avoid, order does not matter. | [optional] 

### Return type

[**NearestResponse**](NearestResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **route**
> RouteResponse route(version, profile, coordinates, bearings, radiuses, generateHints, hints, approaches, exclude, alternatives, steps, annotations, geometries, overview, continueStraight, waypoints)



### Example 
```dart
import 'package:osrm_dart_sdk/api.dart';

final api_instance = OSRMApi();
final version = version_example; // String | Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
final profile = profile_example; // String | Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
final coordinates = coordinates_example; // String | 
final bearings = bearings_example; // String | Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
final radiuses = radiuses_example; // String | Limits the search to given radius in meters.
final generateHints = true; // bool | Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
final hints = hints_example; // String | Hint from previous request to derive position in street network.
final approaches = approaches_example; // String | Keep waypoints on curb side.
final exclude = exclude_example; // String | Additive list of classes to avoid, order does not matter.
final alternatives = ; // OneOfbooleaninteger | Search for alternative routes. Passing a number alternatives=n searches for up to n alternative routes.
final steps = true; // bool | Returned route steps for each route leg
final annotations = true; // bool | Returns additional metadata for each coordinate along the route geometry.
final geometries = geometries_example; // String | Returned route geometry format (influences overview and per step)
final overview = overview_example; // String | Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all.
final continueStraight = continueStraight_example; // String | Forces the route to keep going straight at waypoints constraining uturns there even if it would be faster. Default value depends on the profile.
final waypoints = waypoints_example; // String | Treats input coordinates indicated by given indices as waypoints in returned Match object. Default is to treat all input coordinates as waypoints.

try { 
    final result = api_instance.route(version, profile, coordinates, bearings, radiuses, generateHints, hints, approaches, exclude, alternatives, steps, annotations, geometries, overview, continueStraight, waypoints);
    print(result);
} catch (e) {
    print('Exception when calling OSRMApi->route: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Version of the protocol implemented by the service. v1 for all OSRM 5.x installations | 
 **profile** | **String**| Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles. | 
 **coordinates** | **String**|  | 
 **bearings** | **String**| Limits the search to segments with given bearing in degrees towards true north in clockwise direction. | [optional] 
 **radiuses** | **String**| Limits the search to given radius in meters. | [optional] 
 **generateHints** | **bool**| Adds a Hint to the response which can be used in subsequent requests, see hints parameter. | [optional] 
 **hints** | **String**| Hint from previous request to derive position in street network. | [optional] 
 **approaches** | **String**| Keep waypoints on curb side. | [optional] 
 **exclude** | **String**| Additive list of classes to avoid, order does not matter. | [optional] 
 **alternatives** | [**OneOfbooleaninteger**](.md)| Search for alternative routes. Passing a number alternatives=n searches for up to n alternative routes. | [optional] 
 **steps** | **bool**| Returned route steps for each route leg | [optional] [default to false]
 **annotations** | **bool**| Returns additional metadata for each coordinate along the route geometry. | [optional] [default to false]
 **geometries** | **String**| Returned route geometry format (influences overview and per step) | [optional] [default to 'polyline']
 **overview** | **String**| Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. | [optional] 
 **continueStraight** | **String**| Forces the route to keep going straight at waypoints constraining uturns there even if it would be faster. Default value depends on the profile. | [optional] 
 **waypoints** | **String**| Treats input coordinates indicated by given indices as waypoints in returned Match object. Default is to treat all input coordinates as waypoints. | [optional] 

### Return type

[**RouteResponse**](RouteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **table**
> TableResponse table(version, profile, coordinates, bearings, radiuses, generateHints, hints, approaches, exclude, sources, destinations)



### Example 
```dart
import 'package:osrm_dart_sdk/api.dart';

final api_instance = OSRMApi();
final version = version_example; // String | Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
final profile = profile_example; // String | Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
final coordinates = coordinates_example; // String | 
final bearings = bearings_example; // String | Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
final radiuses = radiuses_example; // String | Limits the search to given radius in meters.
final generateHints = true; // bool | Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
final hints = hints_example; // String | Hint from previous request to derive position in street network.
final approaches = approaches_example; // String | Keep waypoints on curb side.
final exclude = exclude_example; // String | Additive list of classes to avoid, order does not matter.
final sources = sources_example; // String | Use location with given index as source.
final destinations = destinations_example; // String | Use location with given index as destination.

try { 
    final result = api_instance.table(version, profile, coordinates, bearings, radiuses, generateHints, hints, approaches, exclude, sources, destinations);
    print(result);
} catch (e) {
    print('Exception when calling OSRMApi->table: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Version of the protocol implemented by the service. v1 for all OSRM 5.x installations | 
 **profile** | **String**| Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles. | 
 **coordinates** | **String**|  | 
 **bearings** | **String**| Limits the search to segments with given bearing in degrees towards true north in clockwise direction. | [optional] 
 **radiuses** | **String**| Limits the search to given radius in meters. | [optional] 
 **generateHints** | **bool**| Adds a Hint to the response which can be used in subsequent requests, see hints parameter. | [optional] 
 **hints** | **String**| Hint from previous request to derive position in street network. | [optional] 
 **approaches** | **String**| Keep waypoints on curb side. | [optional] 
 **exclude** | **String**| Additive list of classes to avoid, order does not matter. | [optional] 
 **sources** | **String**| Use location with given index as source. | [optional] [default to 'all']
 **destinations** | **String**| Use location with given index as destination. | [optional] [default to 'all']

### Return type

[**TableResponse**](TableResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trip**
> TripResponse trip(version, profile, coordinates, bearings, radiuses, generateHints, hints, approaches, exclude, roundtrip, source_, destination, steps, annotations, geometries, overview)



### Example 
```dart
import 'package:osrm_dart_sdk/api.dart';

final api_instance = OSRMApi();
final version = version_example; // String | Version of the protocol implemented by the service. v1 for all OSRM 5.x installations
final profile = profile_example; // String | Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles.
final coordinates = coordinates_example; // String | 
final bearings = bearings_example; // String | Limits the search to segments with given bearing in degrees towards true north in clockwise direction.
final radiuses = radiuses_example; // String | Limits the search to given radius in meters.
final generateHints = true; // bool | Adds a Hint to the response which can be used in subsequent requests, see hints parameter.
final hints = hints_example; // String | Hint from previous request to derive position in street network.
final approaches = approaches_example; // String | Keep waypoints on curb side.
final exclude = exclude_example; // String | Additive list of classes to avoid, order does not matter.
final roundtrip = true; // bool | Returned route is a roundtrip (route returns to first location)
final source_ = source__example; // String | Returned route starts at any or first coordinate
final destination = destination_example; // String | Returned route ends at any or last coordinate
final steps = true; // bool | Returned route instructions for each trip
final annotations = annotations_example; // String | Returns additional metadata for each coordinate along the route geometry.
final geometries = geometries_example; // String | Returned route geometry format (influences overview and per step)
final overview = overview_example; // String | Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all.

try { 
    final result = api_instance.trip(version, profile, coordinates, bearings, radiuses, generateHints, hints, approaches, exclude, roundtrip, source_, destination, steps, annotations, geometries, overview);
    print(result);
} catch (e) {
    print('Exception when calling OSRMApi->trip: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Version of the protocol implemented by the service. v1 for all OSRM 5.x installations | 
 **profile** | **String**| Mode of transportation, is determined statically by the Lua profile that is used to prepare the data using osrm-extract. Typically car, bike or foot if using one of the supplied profiles. | 
 **coordinates** | **String**|  | 
 **bearings** | **String**| Limits the search to segments with given bearing in degrees towards true north in clockwise direction. | [optional] 
 **radiuses** | **String**| Limits the search to given radius in meters. | [optional] 
 **generateHints** | **bool**| Adds a Hint to the response which can be used in subsequent requests, see hints parameter. | [optional] 
 **hints** | **String**| Hint from previous request to derive position in street network. | [optional] 
 **approaches** | **String**| Keep waypoints on curb side. | [optional] 
 **exclude** | **String**| Additive list of classes to avoid, order does not matter. | [optional] 
 **roundtrip** | **bool**| Returned route is a roundtrip (route returns to first location) | [optional] 
 **source_** | **String**| Returned route starts at any or first coordinate | [optional] 
 **destination** | **String**| Returned route ends at any or last coordinate | [optional] 
 **steps** | **bool**| Returned route instructions for each trip | [optional] 
 **annotations** | **String**| Returns additional metadata for each coordinate along the route geometry. | [optional] 
 **geometries** | **String**| Returned route geometry format (influences overview and per step) | [optional] 
 **overview** | **String**| Add overview geometry either full, simplified according to highest zoom level it could be display on, or not at all. | [optional] 

### Return type

[**TripResponse**](TripResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

