import 'package:daryo_uz_clone/screens/appdrawer.dart';
import 'package:daryo_uz_clone/screens/latest_page.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Daryo'),
          actions: [
            IconButton(
                onPressed: () {
                  context.setLocale(const Locale('uz', 'UZ'));
                },
                icon: const Icon(Icons.one_k, color: Colors.transparent)),
            IconButton(
                onPressed: () {
                  context.setLocale(const Locale('ru', 'RU'));
                },
                icon: const Icon(Icons.two_k, color: Colors.transparent)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(child: Text("latest".tr())),
            Tab(child: Text("main".tr())),
            Tab(child: Text("most".tr())),
          ]),
        ),
        body: const TabBarView(children: [
          LatestPage(),
          Center(child: Text('Tez orada')),
          Center(child: Text('Tez orada')),
        ]),
        drawer: const AppDrawer(),
      ),
    );
  }
}
