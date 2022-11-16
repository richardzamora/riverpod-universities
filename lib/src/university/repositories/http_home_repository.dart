import 'package:universities/src/core/services/http/http_service.dart';
import 'package:universities/src/university/models/university.dart';
import 'package:universities/src/university/repositories/home_repository.dart';

class HttpHomeRepository extends HomeRepository {
  final HttpService httpService;
  HttpHomeRepository(this.httpService);

  @override
  String get path => "/universities.json";

  @override
  Future<List<University>> getAllUniversities() async {
    try {
      final responseData = await httpService.getAll(
        path,
      );
      return List<University>.from(
          responseData.map((x) => University.fromJson(x)));
    } on Exception catch (e) {
      print(e);
    }
    return [];
  }
}
