import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/dataModel.dart';

class ApiService {
  static const String _baseUrl = 'https://api.spacexdata.com/v3/launches';
  final Dio _dio;

  ApiService(this._dio);

  Future<List<DataModel>> fetchLaunches() async {
    try {
      final response = await _dio.get(_baseUrl);
      final launches = List<DataModel>.from(response.data.map((d){
        print(d);
        return DataModel.fromJson(d);
      }));
      return launches;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}