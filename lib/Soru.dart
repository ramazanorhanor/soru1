class Soru {
  // değişkenler  ve özellikler
  String Soru_Metni = "";
  String A_sikki = "";
  String B_sikki = "";
  String C_sikki = "";
  String D_sikki = "";
  String Cevap = "";
// yapıcı method ilk deger ataması için kullanılır
  // Soru(
  //     String soru_metni, String a, String b, String c, String d, String cevap) {
  //   Soru_Metni = soru_metni;
  //   A_sikki = a;
  //   B_sikki = b;
  //   C_sikki = c;
  //   D_sikki = d;
  //   Cevap = cevap;
  // }
// constructor yapıcı method tanımlayıcı fonksiyon
  Soru(
      {required String soru_metni,
      required String a,
      required String b,
      required String c,
      required String d,
      required String cevap}) {
    Soru_Metni = soru_metni;
    A_sikki = a;
    B_sikki = b;
    C_sikki = c;
    D_sikki = d;
    Cevap = cevap;
  }
  // method fonksiyon işlevler
}
