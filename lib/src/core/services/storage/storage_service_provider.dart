import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:universities/src/core/services/storage/hive_storage_service.dart';
import 'package:universities/src/core/services/storage/storage_service.dart';

/// Provider that locates an [StorageService] interface to implementation
final storageServiceProvider = Provider<StorageService>(
  (_) => HiveStorageService(),
);
