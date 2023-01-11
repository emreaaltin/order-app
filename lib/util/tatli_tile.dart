import 'package:flutter/material.dart';

class Tatli extends StatelessWidget {
  final String name;
  final String img;
  final String fiyat;

  Tatli({required this.name, required this.img, required this.fiyat});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(11),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  height: 120,
                  width: 220,
                  image: NetworkImage(img),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text("Aasfaafasf", style: TextStyle(color: Colors.grey[700])),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 8, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    fiyat,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(
                    child: Icon(
                      Icons.shopping_bag,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
