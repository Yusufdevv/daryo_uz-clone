import 'package:daryo_uz_clone/screens/appdrawer.dart';
import 'package:daryo_uz_clone/screens/latest_page.dart';
import 'package:flutter/material.dart';

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
            IconButton(onPressed: () {}, icon:const Icon(Icons.search))
          ],
          bottom: const TabBar(isScrollable: true, tabs: [
            Tab(child: Text("SO'NGGI YANGILIKLAR")),
            Tab(child: Text("ASOSIY YANGILIKLAR")),
            Tab(child: Text("ENG KO'P O'QILGANLAR")),
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
