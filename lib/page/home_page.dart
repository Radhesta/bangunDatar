import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xFF33BEBE),
      ),
      body: Column(
        children: [
          Row(
            children:[
            Expanded(child: CustomMenu(imageAsset: "asset/persegi.jpeg", title: "persegi")),
            Expanded(child: CustomMenu(imageAsset: "asset/persegi_panjang.jpeg", title: "persegi panjang")),
          ],
          ),
          Row(
            children: [
              CustomMenu(imageAsset: "asset/segitiga.jpeg", title: "segitiga"),
              CustomMenu(
                  imageAsset: "asset/lingkaran.jpeg", title: "lingkaran"),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu

  ({
  super.key,
  required this.imageAsset,
  required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        color: Colors.lightBlue,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset),
            Text(title),
          ],
        ));
  }
}
