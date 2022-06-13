import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_kloti/app/directions_model.dart';
import 'package:flutter_kloti/app/env.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DirectionsRepository {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/api/directions/json?';
  final Dio? _dio;

  DirectionsRepository({Dio? dio}) : _dio = dio ?? Dio();

  Future<Directions> getDirections({
    @required LatLng? origin,
    @required LatLng? destination,
  }) async {
    final response = await _dio?.get(_baseUrl, queryParameters: {
      'origin': '${origin?.latitude},${origin?.longitude}',
      'destination': '${destination?.latitude},${destination?.longitude}',
      'key': googleAPIKey,
    });

    return Directions.fromMap(response?.data);
  }
}