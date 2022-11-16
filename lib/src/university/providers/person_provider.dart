import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:universities/src/university/models/university.dart';

final personProvider = Provider<HomeProvider>((_) => HomeProvider());

class HomeProvider {
  List<University> universities = [];
  DateTime? day;
  DateTime? hour;

  List<DateTime> get listHours => [
        DateTime(2022, 1, 1, 7),
        DateTime(2022, 1, 1, 8),
        DateTime(2022, 1, 1, 9),
        DateTime(2022, 1, 1, 10),
        DateTime(2022, 1, 1, 11),
        DateTime(2022, 1, 1, 12),
        DateTime(2022, 1, 1, 13),
        DateTime(2022, 1, 1, 14),
        DateTime(2022, 1, 1, 15),
        DateTime(2022, 1, 1, 16),
        DateTime(2022, 1, 1, 17),
      ];
}
