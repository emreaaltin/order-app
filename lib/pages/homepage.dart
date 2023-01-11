import 'package:flutter/material.dart';
import 'package:tatli/util/tatli_types.dart';
import 'package:tatli/util/tatli_tile.dart';

final List tatlitype = [
  ["Baklava", true],
  ["Sütlaç", false],
  ["Triliçe", false],
];

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void TatliTypeSelected(int index) {
    setState(() {
      for (var i = 0; i < tatlitype.length; i++) {
        tatlitype[i][1] = false;
      }
      tatlitype[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child: Icon(Icons.person),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "Sizin için en iyi tatlıyı bulun",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Tatlını Bul...",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            child: ListView.builder(
              itemCount: tatlitype.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return TatliType(
                    tatli: tatlitype[index][0],
                    selected: tatlitype[index][1],
                    onTap: () {
                      TatliTypeSelected(index);
                    });
              },
            ),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Tatli(
                  name: "Baklava",
                  img:
                      "https://upload.wikimedia.org/wikipedia/commons/c/c7/Baklava%281%29.png",
                  fiyat: "100 ₺"),
              Tatli(
                  name: "Sütlaç",
                  img:
                      "https://cdn.yemek.com/mnresize/1250/833/uploads/2017/08/kolay-sutlac-one-cikanyeni.jpg",
                  fiyat: "40 ₺"),
              Tatli(
                  name: "Triliçe",
                  img:
                      "https://cdn.yemek.com/mnresize/1250/833/uploads/2021/03/trilece-tarifi.jpg",
                  fiyat: "20 ₺"),
            ],
          ))
        ],
      ),
    );
  }
}
