import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:universities/src/university/providers/home_provider.dart';
import 'package:universities/src/university/providers/universities_provider.dart';
import 'package:universities/src/university/ui/widgets/university_list_element.dart';

class HomePage extends HookConsumerWidget {
  static const pageRoute = "/home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final universitiesAsync = ref.watch(universitiesProvider);
    final home = ref.watch(homeProvider);
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: home.listLayout ? Colors.orange : Colors.orangeAccent),
            child: Material(
                color: Colors.transparent,
                child: InkWell(
                    onTap: () {
                      home.listLayout = true;
                    },
                    child: SizedBox(
                        width: width / 2,
                        height: 40,
                        child: const Icon(Icons.list)))),
          ),
          Container(
            decoration: BoxDecoration(
                color: home.listLayout ? Colors.orangeAccent : Colors.orange),
            child: Material(
                color: Colors.transparent,
                child: InkWell(
                    onTap: () {
                      home.listLayout = false;
                    },
                    child: SizedBox(
                        width: width / 2,
                        height: 40,
                        child: const Icon(Icons.grid_view)))),
          ),
        ],
      ),
      body: Center(
          child: universitiesAsync.when(
        data: (data) => home.listLayout
            ? ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) =>
                    UniversityListElement(university: data[index]),
              )
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    childAspectRatio: 5 / 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemCount: data.length,
                itemBuilder: (context, index) =>
                    UniversityListElement(university: data[index]),
              ),
        error: (error, stackTrace) => const Text("Ups ha ocurrido un error"),
        loading: () => const CircularProgressIndicator(),
      )),
    );
  }
}
