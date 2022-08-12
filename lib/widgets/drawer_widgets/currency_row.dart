import 'package:flutter/material.dart';

class CurrencyRow extends StatelessWidget {
  final IconData icon;
  final String rate;
  const CurrencyRow({
    required this.icon,
    required this.rate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icon, color: Colors.white),
      Text(rate, style:const TextStyle(color: Colors.white),)
    ],);
  }
}