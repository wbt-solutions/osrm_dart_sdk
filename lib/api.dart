//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

library osrm_dart_sdk.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/osrm_api.dart';

part 'model/annotation.dart';
part 'model/annotation_metadata.dart';
part 'model/api_response.dart';
part 'model/intersection.dart';
part 'model/lane.dart';
part 'model/nearest_response.dart';
part 'model/nearest_response_all_of.dart';
part 'model/nearest_waypoint.dart';
part 'model/nearest_waypoint_all_of.dart';
part 'model/route.dart';
part 'model/route_leg.dart';
part 'model/route_response.dart';
part 'model/route_response_all_of.dart';
part 'model/route_step.dart';
part 'model/step_maneuver.dart';
part 'model/table_response.dart';
part 'model/table_response_all_of.dart';
part 'model/trip_response.dart';
part 'model/trip_response_all_of.dart';
part 'model/trip_waypoint.dart';
part 'model/trip_waypoint_all_of.dart';
part 'model/waypoint.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
