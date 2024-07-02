import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

import '../api/api_service.dart';
import '../models/launchModel.dart';

final dioProvider = Provider<Dio>((ref) => Dio());

final apiServiceProvider = Provider<ApiService>((ref) {
  final dio = ref.read(dioProvider);
  return ApiService(dio);
});

final launchListProvider = FutureProvider.autoDispose<List<LaunchModel>>((ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.fetchLaunches();
});

final itemCountProvider = StateProvider<int>((ref) => 10);