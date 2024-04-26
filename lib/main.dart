import 'package:flutter/material.dart'; // android
//import 'package:flutter/cupertino.dart'; // ios  dil=dart framework =flutter
import 'package:flutter/widgets.dart';
import 'package:soru1/coktansecmeli.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  //StatefulWidget // StatelessWidget
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TestSorulari benimTestim = new TestSorulari(); // ram e alır
  // int  sayi  sayi=20;
  // TestSorulari  class  şablon ruh
  //  benimTestim  nesne object  //  vucut

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // cupertinoapp // ios
      title: "abc ",
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("AppBar title"),
          ),
        ),
        body: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("Mobil Uygulama  Sınav"),
            // const SizedBox(height: 20),
            Text(
              //"TBMM hangi yılda açıldı ?",
              benimTestim.soru_metnini_yaz(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // bişeyler değişecekce setState kullan.
                setState(() {
                  benimTestim.cevabi_kontrol_et("A");
                });
              },
              // child: const Text('1920'),
              child: Text(benimTestim.a_sikkini_yaz()),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // bişeyler değişecekce setState kullan.
                setState(() {
                  benimTestim.cevabi_kontrol_et("B");
                });
              },
              //child: const Text('1922'),
              child: Text(benimTestim.b_sikkini_yaz()),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // bişeyler değişecekce setState kullan.
                setState(() {
                  benimTestim.cevabi_kontrol_et("C");
                });
              },
              //child: const Text('1923'),
              child: Text(benimTestim.c_sikkini_yaz()),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // bişeyler değişecekce setState kullan.
                setState(() {
                  benimTestim.cevabi_kontrol_et("D");
                });
              },
              //child: Text('1921'),
              child: Text(benimTestim.d_sikkini_yaz()),
            ),
            Text(
              "Sonuc   ",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: benimTestim.iconList,
            ),
          ],
        ),
      ),
    );
  }
}
