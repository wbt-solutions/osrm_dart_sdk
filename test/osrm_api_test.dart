import 'package:osrm_dart_sdk/api.dart';
import 'package:test/test.dart';


/// tests for OSRMApi
void main() {
  var instance = OSRMApi();

  group('tests for OSRMApi', () {
    //Future<NearestResponse> nearest(String version, String profile, String coordinate, int number, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude }) async 
    test('test nearest', () async {
      // TODO
    });

    //Future<RouteResponse> route(String version, String profile, String coordinates, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude, dynamic alternatives, bool steps, bool annotations, String geometries, String overview, String continueStraight, String waypoints }) async 
    test('test route', () async {
      // TODO
    });

    //Future<TableResponse> table(String version, String profile, String coordinates, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude, String sources, String destinations }) async 
    test('test table', () async {
      // TODO
    });

    //Future<TripResponse> trip(String version, String profile, String coordinates, { String bearings, String radiuses, bool generateHints, String hints, String approaches, String exclude, bool roundtrip, String source_, String destination, bool steps, String annotations, String geometries, String overview }) async 
    test('test trip', () async {
      // TODO
    });

  });
}
