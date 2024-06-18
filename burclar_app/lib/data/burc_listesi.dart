import 'package:burclar_app/burc_item.dart';
import 'package:burclar_app/model/burc.dart';
import 'package:burclar_app/data/string.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;

  BurcListesi({super.key}) {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Burçlar Listesi", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return BurcItem(listenenBurc: tumBurclar[index],);
        },
        itemCount: tumBurclar.length,
      )
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (var i = 0; i < 12; i++) {
      String burcAdi = Strings.BURC_ADLARI[i];
      String burcTarihi = Strings.BURC_TARIHLERI[i];
      String burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];
      String burcKucukResim =
          '${Strings.BURC_ADLARI[i].toLowerCase()}${i + 1}.png';
      String burcBuyukResim =
          '${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i + 1}.png';
      Burc eklenecekBurc =
          Burc(burcAdi, burcTarihi, burcDetayi, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
