# osrm_dart_sdk.model.RouteLeg

## Load the model package
```dart
import 'package:osrm_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**distance** | **double** | The distance traveled by the route, in float meters. | [optional] 
**duration** | **double** | The estimated travel time, in float number of seconds. | [optional] 
**weight** | **double** |  | [optional] 
**summary** | **String** |  | [optional] 
**steps** | [**List<RouteStep>**](RouteStep.md) |  | [optional] [default to const []]
**annotation** | [**Annotation**](Annotation.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


