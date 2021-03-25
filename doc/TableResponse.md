# osrm_dart_sdk.model.TableResponse

## Load the model package
```dart
import 'package:osrm_dart_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** |  | 
**message** | **String** |  | [optional] 
**dataVersion** | [**DateTime**](DateTime.md) |  | [optional] 
**durations** | [**List<List<double>>**](List.md) | array of arrays that stores the matrix in row-major order. durations[i][j] gives the travel time from the i-th waypoint to the j-th waypoint. Values are given in seconds. | [optional] [default to const []]
**distances** | [**List<List<double>>**](List.md) |  | [optional] [default to const []]
**sources** | [**List<Waypoint>**](Waypoint.md) |  | [optional] [default to const []]
**destinations** | [**List<Waypoint>**](Waypoint.md) |  | [optional] [default to const []]
**fallbackSpeedCells** | [**List<List<int>>**](List.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


