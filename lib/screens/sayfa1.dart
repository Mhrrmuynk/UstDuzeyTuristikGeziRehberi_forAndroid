import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '';

class Sayfa1 extends StatefulWidget {
  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  @override
  void initState() {
    super.initState();
    _istek();
    print("init çalıştı");
  }

  Uri url = Uri.parse('https://yozgat.ktb.gov.tr/TR-91646/yapmadan-donme.html');

  String _htmlVerileri = "";

  Future<void> _istek() async {
    print("isteğe girildi");
    await http.get(url).then((value) {
      _htmlVerileri = value.body.replaceAll("\n", "").replaceAll("\t", "").replaceAll("  ", "");
      RegExp arama = RegExp('<section class="in_sec_1">(.*?)<!-- ######  91646 anahlı dal içerik bitti  ##### --></article></section>');
      RegExpMatch? eslesen = arama.firstMatch(_htmlVerileri);
      _htmlVerileri = eslesen!.group(1)!;
      debugPrint(_htmlVerileri);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                _istek();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: _htmlVerileri.length > 0
            ? SingleChildScrollView(
                child: Text(
                  _htmlVerileri,
                ),
              )
            : ElevatedButton(
                onPressed: () {
                  setState() {
                    _istek();
                  }
                },
                child: Text("yükle")),
      ),
    );
  }
}
