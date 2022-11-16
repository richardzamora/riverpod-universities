import 'package:flutter/material.dart';
import 'package:universities/src/university/ui/pages/home_page.dart';
import 'package:universities/src/university/ui/pages/university_detail_page.dart';

final routes = <String, WidgetBuilder>{
  HomePage.pageRoute: (BuildContext context) => const HomePage(),
  UniversityDetailPage.pageRoute: (BuildContext context) =>
      const UniversityDetailPage(),
};

enum Pages {
  home(HomePage.pageRoute),
  universityDetail(UniversityDetailPage.pageRoute),
  ;

  const Pages(this.value);
  final String value;
}
