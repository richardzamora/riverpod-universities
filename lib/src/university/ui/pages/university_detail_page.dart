import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:universities/src/university/providers/home_provider.dart';

class UniversityDetailPage extends HookConsumerWidget {
  static const pageRoute = "/universityDetail";
  const UniversityDetailPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final home = ref.watch(homeProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(8),
              child: Text(home.selectedUniversity?.name ?? "name")),
          Container(
              padding: EdgeInsets.all(8),
              child: Text(home.selectedUniversity?.country ?? "country")),
          Container(
              padding: EdgeInsets.all(8),
              child: Text(
                  home.selectedUniversity?.stateProvince ?? "stateProvince")),
          ...List.generate(
            home.selectedUniversity?.webPages?.length ?? 0,
            (index) => Container(
                padding: EdgeInsets.all(8),
                child: Text(
                    home.selectedUniversity?.webPages?[index] ?? "webPage")),
          ),
        ],
      ),
    );
  }
}
