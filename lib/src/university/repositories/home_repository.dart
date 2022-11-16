import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:universities/src/core/services/http/http_service_provider.dart';
import 'package:universities/src/university/models/university.dart';
import 'package:universities/src/university/repositories/http_home_repository.dart';

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  final httpService = ref.watch(httpServiceProvider);
  return HttpHomeRepository(httpService);
});

abstract class HomeRepository {
  String get path;

  Future<List<University>> getAllUniversities();
}
