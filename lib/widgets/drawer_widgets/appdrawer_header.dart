import 'package:daryo_uz_clone/widgets/drawer_widgets/currency_row.dart';
import 'package:flutter/material.dart';

class AppDrawerHeader extends StatefulWidget {
  const AppDrawerHeader({Key? key}) : super(key: key);

  @override
  State<AppDrawerHeader> createState() => _AppDrawerHeaderState();
}

class _AppDrawerHeaderState extends State<AppDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      margin: const EdgeInsets.all(0),
      decoration: const BoxDecoration(color: Colors.blue),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Daryo',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(
                width: 17,
              ),
              selectLang(),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Toshkent',
                  style:  TextStyle(color: Colors.white, fontSize: 16)),
              Row(
                children:const [
                  Icon(Icons.cloud_queue_sharp, color: Colors.white),
                   SizedBox(width: 4),
                  Text('+12.0°',
                      style:  TextStyle(color: Colors.white, fontSize: 16))
                ],
              ),
            ],
          ),
          const Divider(thickness: 1, color: Colors.white),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CurrencyRow(
                icon: Icons.monetization_on_outlined,
                rate: '10800',
              ),
              CurrencyRow(
                icon: Icons.euro_symbol_rounded,
                rate: '11000',
              ),
              CurrencyRow(
                icon: Icons.currency_ruble_outlined,
                rate: '186',
              ),
            ],
          )
        ],
      ),
    );
  }

  List<bool> isSelected = [false, true];

  Widget selectLang() {
    return Expanded(
      child: Container(
        height: 30,
        width: 180,
        decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.circular(30)),
        child: ToggleButtons(
          selectedBorderColor: Colors.transparent,
          borderColor: Colors.transparent,
          isSelected: isSelected,
          onPressed: (index) {
            setState(() {
              if (index == 0) {
                isSelected[0] = true;
                isSelected[1] = false;
              } else {
                isSelected[1] = true;
                isSelected[0] = false;
              }
            });
          },
          children: [
            Container(
              decoration: BoxDecoration(
                  color: isSelected[0] ? Colors.white : Colors.blue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              height: 30,
              width: 90,
              alignment: Alignment.center,
              child: Text("Lotincha", style: TextStyle(
                color: isSelected[0] ? Colors.blue : Colors.white),),
            ),
            Container(
              decoration: BoxDecoration(
                  color: isSelected[1] ? Colors.white : Colors.blue,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              height: 30,
              width: 90,
              alignment: Alignment.center,
              child: Text("Kirilcha", style: TextStyle(
                color: isSelected[1] ? Colors.blue : Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
