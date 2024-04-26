import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:soru1/Soru.dart';

class TestSorulari {
  int aktif_soru = 0;
  List<Icon> iconList = [];
  //List<int> sayilar = [20, 30, 50];
// List<String> baskentler = ["Ankara", "Londra", "Pekin"];
  List<Soru> sorular = [
    Soru(
        soru_metni: "5*6 nedir",
        a: "20",
        b: "25",
        c: "30",
        d: "35",
        cevap: "C"),
    Soru(
        soru_metni: "İngilterenin Başkenti Neresidir.",
        a: "Bursa",
        b: "istanbul",
        c: "Londra",
        d: "sivas",
        cevap: "C"),
    Soru(
        soru_metni: "en son orucu hangi şehir açar",
        a: "istanbul",
        b: "manisa",
        c: "çanakkale",
        d: "edirne",
        cevap: "D")
  ];
  void sonraki_soruya_gec() {
    if (sorular.length - 1 > aktif_soru)
      aktif_soru++;
    else
      aktif_soru = 0;
  }

  String soru_metnini_yaz() {
    return sorular[aktif_soru].Soru_Metni;
  }

  String a_sikkini_yaz() {
    return sorular[aktif_soru].A_sikki;
  }

  String b_sikkini_yaz() {
    return sorular[aktif_soru].B_sikki;
  }

  String c_sikkini_yaz() {
    return sorular[aktif_soru].C_sikki;
  }

  String d_sikkini_yaz() {
    return sorular[aktif_soru].D_sikki;
  }

  void cevabi_kontrol_et(String kullanici_cevap) {
    if (sorular[aktif_soru].Cevap == kullanici_cevap) {
      iconList.add(Icon(Icons.check));
    } else {
      iconList.add(Icon(Icons.close));
    }
    sonraki_soruya_gec();
  }
}
