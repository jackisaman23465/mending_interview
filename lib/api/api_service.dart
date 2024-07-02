import 'package:dio/dio.dart';
import 'package:mending_interview/models/index.dart';

class ApiService {
  static const String _baseUrl = 'https://api.spacexdata.com/v3/launches';
  final Dio _dio;

  ApiService(this._dio);

  Future<List<LaunchModel>> fetchLaunches() async {
    try {
      final response = await _dio.get(_baseUrl);
      final launches = List<LaunchModel>.from(response.data.map((d){
        print(d);
        return LaunchModel.fromJson(d);
      }));
      return launches;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}