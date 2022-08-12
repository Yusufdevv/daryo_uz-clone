import 'package:daryo_uz_clone/widgets/drawer_widgets/appdrawer_header.dart';
import 'package:daryo_uz_clone/widgets/drawer_widgets/appdrawer_list.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Colors.white,
      child: Column(
        children:const [
          AppDrawerHeader(),
          AppDrawerList(),
        ],
      ),
    );
  }
}