import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:universities/src/university/models/university.dart';

final homeProvider = ChangeNotifierProvider<HomeProvider>(
  (ref) {
    return HomeProvider();
  },
);

class HomeProvider extends ChangeNotifier {
  bool _listLayout = true;
  bool get listLayout => _listLayout;
  set listLayout(bool value) {
    _listLayout = value;
    notifyListeners();
  }

  University? _selectedUniversity;

  University? get selectedUniversity => _selectedUniversity;
  set selectedUniversity(University? value) {
    _selectedUniversity = value;
    notifyListeners();
  }
}
