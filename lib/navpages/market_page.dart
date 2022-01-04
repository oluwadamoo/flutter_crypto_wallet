import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  _MarketPageState createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        "Market Page",
        style: TextStyle(color: Colors.lightGreen),
      ),
    ));
  }
}
