import 'package:flutter/material.dart';

class AppDrawerList extends StatelessWidget {
  const AppDrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
          child: Column(
              children: [
          CategoryItem("Qo'llanma ekranini ko'rsatish", containerColor: Colors.yellow.shade200,),
          CategoryItem("So'nggi yangiliklar"),
          CategoryItem("Mahalliy"),
          CategoryItem("Dunyo"),
          CategoryItem("Texnologiyalar"),
          const Divider(thickness: 1, ),
          CategoryItem("Tanlangan xabarlar", color: Colors.green),
          const Divider(thickness: 1),
          CategoryItem("Madaniyat"),
          CategoryItem("Avto"),
          CategoryItem("Sport"),
          CategoryItem("Foto"),
          CategoryItem("LifeStyle"),
          CategoryItem("Kolumnistlar"),
          CategoryItem("Afisha", containerColor: Colors.grey[200]!,),
          CategoryItem("Valyutalar kursi", containerColor: Colors.grey[200]!,),
          CategoryItem("Ob-havo", containerColor: Colors.grey[200]!,),
          CategoryItem("Foydalanish shartlari", containerColor: Colors.grey[200]!,),
          CategoryItem('"Daryo" haqida', containerColor: Colors.grey[200]!,),
          CategoryItem('Sozlashlar', containerColor: Colors.grey[200]!,),
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
