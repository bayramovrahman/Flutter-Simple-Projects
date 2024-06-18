import 'package:burclar_app/burc_detay.dart';
import 'package:burclar_app/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  const BurcItem({super.key, required this.listenenBurc});

  final Burc listenenBurc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        elevation: 6.0,
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: listenenBurc),
              ),
            );
          },
          leading: Image.asset(
            "assets/images/${listenenBurc.burcKucukResim}",
          ),
          title: Text(listenenBurc.burcAdi),
          subtitle: Text(listenenBurc.burcTarihi),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue[800],
          ),
        ),
      ),
    );
  }
}
