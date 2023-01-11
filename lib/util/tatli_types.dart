import 'package:flutter/material.dart';

class TatliType extends StatelessWidget {
  final String tatli;
  final bool selected;
  final VoidCallback onTap;
  TatliType({required this.tatli, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 10),
        child: Text(
          tatli,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: selected ? Colors.green : Colors.white),
        ),
      ),
    );
  }
}
