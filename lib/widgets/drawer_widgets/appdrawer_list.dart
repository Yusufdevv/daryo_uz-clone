import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class AppDrawerList extends StatefulWidget {
  const AppDrawerList({Key? key}) : super(key: key);

  @override
  State<AppDrawerList> createState() => _AppDrawerListState();
}

class _AppDrawerListState extends State<AppDrawerList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
          child: Column(
              children: [
          CategoryItem("qollanma ekrani".tr(), containerColor: Colors.yellow.shade200,),
          CategoryItem("songgi".tr()),
          CategoryItem("mahalliy".tr()),
          CategoryItem("dunyo".tr()),
          CategoryItem("texnologiyalar".tr()),
          const Divider(thickness: 1, ),
          CategoryItem("tanlangan".tr(), color: Colors.green),
          const Divider(thickness: 1),
          CategoryItem("madaniyat".tr()),
          CategoryItem("avto".tr()),
          CategoryItem("sport".tr()),
          CategoryItem("foto".tr()),
          CategoryItem("kolumnistlar".tr()),
          CategoryItem("lifestyle".tr()),
          CategoryItem("afisha".tr(), containerColor: Colors.grey[200]!,),
          CategoryItem("valyuta kursi".tr(), containerColor: Colors.grey[200]!,),
          CategoryItem("ob-havo".tr(), containerColor: Colors.grey[200]!,),
          CategoryItem("foydalanish".tr(), containerColor: Colors.grey[200]!,),
          CategoryItem("daryo haqida".tr(), containerColor: Colors.grey[200]!,),
          CategoryItem("sozlashlar".tr(), containerColor: Colors.grey[200]!,),
              ],
            ),
        ));
  }
}

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  final String? title;
  Color color;
  Color containerColor;
  CategoryItem(
    this.title, {
    Key? key,
    this.color = Colors.black,
    this.containerColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 18),
        height: 40,
        color: containerColor,
        alignment: Alignment.centerLeft,
        child: Text(
          title!,
          style: TextStyle(
              color: color, fontWeight: FontWeight.w500, fontSize: 16),
        ));
  }
}
