import 'package:bitirme1/models/slider.dart';
import 'package:http/http.dart' as http;

abstract class Islemler {
  List<YozgatSlider>? slider;
  Future<bool> istek();
  String? values;
}

class IslemDetay implements Islemler {
  @override
  String? values;
  List<YozgatSlider>? slider = [];
  @override
  Future<bool> istek() async {
    await http.get("https://yozgat.ktb.gov.tr/" as Uri).then((value) {
      values = value.body.replaceAll("\n", "").replaceAll("\t", "").replaceAll("  ", "");
      RegExp slider = RegExp("slider başlangıç ve bitiş html kodları ");
      Match sliderMatch = slider.firstMatch(values!) as Match;
      String? sliderhtml = sliderMatch.group(1);
      RegExp sliderbul = RegExp('bu kısma sliderrin bir tanesini direk olarak alıyouruz li olarak ');
      Iterable<Match> eslesenSlider = sliderbul.allMatches(sliderhtml!);

      for (Match eslesenSlider in eslesenSlider) {
        String resim = '';
        String baslik = '';
        String link = '';
      }
      print(sliderhtml);
    });
    return true;
  }
}
