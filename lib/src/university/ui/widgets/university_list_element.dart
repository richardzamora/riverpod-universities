import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:universities/src/core/routes/routes.dart';
import 'package:universities/src/core/widgets/rounded_button.dart';
import 'package:universities/src/university/models/university.dart';
import 'package:universities/src/university/providers/home_provider.dart';

class UniversityListElement extends HookConsumerWidget {
  const UniversityListElement({Key? key, required this.university})
      : super(key: key);
  final University university;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final home = ref.watch(homeProvider);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RoundedButton(
          onTap: () {
            home.selectedUniversity = university;
            Navigator.pushNamed(context, Pages.universityDetail.value);
          },
          content: university.name ?? "name",
          textColor: Colors.white),
    );
  }
}
