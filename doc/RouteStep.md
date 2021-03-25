# osrm_dart_sdk.model.RouteStep

## Load the model package
```dart
import 'package:osrm_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**distance** | **double** | The distance traveled by the route, in float meters. | [optional] 
**duration** | **double** | The estimated travel time, in float number of seconds. | [optional] 
**geometry** | [**Object**](.md) |  | [optional] 
**weight** | **double** |  | [optional] 
**name** | **String** |  | [optional] 
**ref** | **String** |  | [optional] 
**pronunciation** | **String** |  | [optional] 
**destinations** | [**Object**](.md) |  | [optional] 
**exits** | [**Object**](.md) |  | [optional] 
**mode** | **String** |  | [optional] 
**maneuver** | [**StepManeuver**](StepManeuver.md) |  | [optional] 
**intersections** | [**List<Intersection>**](Intersection.md) |  | [optional] [default to const []]
**rotaryName** | **String** |  | [optional] 
**rotaryPronunciation** | **String** |  | [optional] 
**drivingSide** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


