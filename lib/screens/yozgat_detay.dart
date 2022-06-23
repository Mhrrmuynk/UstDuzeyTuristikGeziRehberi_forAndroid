import 'package:bitirme1/screens/sayfa1.dart';
import 'package:bitirme1/screens/sayfa2.dart';
import 'package:bitirme1/screens/sayfa3.dart';
import 'package:flutter/material.dart';

class Yozgat extends StatefulWidget {
  const Yozgat({Key? key}) : super(key: key);

  @override
  State<Yozgat> createState() => _YozgatState();
}

class _YozgatState extends State<Yozgat> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: IconButton(icon: Icon(Icons.refresh), onPressed: () {}),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Bir",
              ),
              Tab(
                text: "İki",
              ),
              Tab(
                text: "üç",
                icon: Icon(Icons.looks_3),
              ),
            ],
            indicatorColor: Colors.orange,
            labelColor: Colors.black87,
          ),
        ),
        body: TabBarView(
          children: [
            Sayfa1(),
            Sayfa2(),
            Sayfa3(),
          ],
        ),
      ),
    );
    ;
  }
}
