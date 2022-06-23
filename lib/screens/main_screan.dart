import 'package:bitirme1/screens/details_screen.dart';
import 'package:bitirme1/screens/yozgat_detay.dart';
import 'package:bitirme1/widgets/bottom_nav_bar.dart';
import 'package:bitirme1/widgets/category_card.dart';
import 'package:bitirme1/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Mornign \nShishir",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Yozgat()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: SizedBox(
                                height: 120,
                                width: 120,
                                child: ListView(
                                  children: [
                                    Ink.image(
                                      image: AssetImage(
                                          "assets/images/turkiye.png"),
                                      fit: BoxFit.contain,
                                      height: 150,
                                    ),
                                    Text(
                                      "Sehirler",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 32),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Yozgat()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: SizedBox(
                                child: ListView(
                                  children: [
                                    Ink.image(
                                      image:
                                          AssetImage("assets/images/indir.png"),
                                      fit: BoxFit.contain,
                                      height: 150,
                                    ),
                                    Text(
                                      "Yozgat",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 32, color: Colors.red),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: SizedBox(
                              height: 120,
                              width: 120,
                              child: ListView(
                                children: [
                                  Ink.image(
                                    image:
                                        AssetImage("assets/images/turkiye.png"),
                                    fit: BoxFit.fill,
                                    height: 150,
                                  ),
                                  Text("Sehirler")
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: SizedBox(
                              height: 120,
                              width: 120,
                              child: ListView(
                                children: [
                                  Ink.image(
                                    image: AssetImage("assets/images/todo.png"),
                                    fit: BoxFit.fill,
                                    height: 150,
                                  ),
                                  Text("Gidilecek Yerler")
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
