import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:universities/src/core/services/http/dio_http_service.dart';
import 'package:universities/src/core/services/http/http_service.dart';
import 'package:universities/src/core/services/storage/storage_service_provider.dart';

final httpServiceProvider = Provider<HttpService>((ref) {
  final storageService = ref.watch(storageServiceProvider);

  return DioHttpService(storageService);
});
