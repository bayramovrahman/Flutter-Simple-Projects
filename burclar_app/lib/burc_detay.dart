import 'package:burclar_app/model/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  const BurcDetay({super.key, required this.secilenBurc});

  final Burc secilenBurc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 250.0,
          pinned: true,
          backgroundColor: Colors.blue,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              '${secilenBurc.burcAdi} ve özellikleri',
              style: const TextStyle(color: Colors.white),
            ),
            background: Image.asset('assets/images/${secilenBurc.burcBuyukResim}', fit: BoxFit.cover,)
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.all(14.0),
            child: SingleChildScrollView(
              child: Text(
                secilenBurc.burcDetayi,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
