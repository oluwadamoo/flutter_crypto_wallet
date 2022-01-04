import 'package:flutter/material.dart';

class TradePage extends StatefulWidget {
  const TradePage({Key? key}) : super(key: key);

  @override
  _TradePageState createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        "Trade Page",
        style: TextStyle(color: Colors.lightGreen),
      ),
    ));
  }
}
