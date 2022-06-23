import 'package:bitirme1/constants.dart';
import 'package:bitirme1/screens/main_screan.dart';
import 'package:bitirme1/view/fonksion.dart';
import 'package:bitirme1/view/main_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(
      MainWidget(
        islem: IslemDetay(),
        child: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _veriVar = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    MainWidget.of(context)!.islem!.istek().then((value) {
      _veriVar = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}
