import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:universities/src/university/models/university.dart';
import 'package:universities/src/university/repositories/home_repository.dart';

final universitiesProvider = FutureProvider<List<University>>(
  (ref) {
    final homeRepository = ref.watch(homeRepositoryProvider);
    return homeRepository.getAllUniversities();
  },
);
