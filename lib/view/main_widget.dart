import 'package:bitirme1/view/fonksion.dart';
import 'package:flutter/cupertino.dart';

class MainWidget extends InheritedWidget {
  final Islemler? islem;
  MainWidget({Key? key, required Widget child, this.islem}) : super(key: key, child: child);

  static MainWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MainWidget>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
