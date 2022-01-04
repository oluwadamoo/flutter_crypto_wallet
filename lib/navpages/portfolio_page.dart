// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:crypto_wallet/crypto_chart.dart';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 70, left: 20, bottom: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Wallet ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto-Medium",
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text("\$  ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22)),
                          Text("45.500,34",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 35)),
                          Text("USD",
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Roboto-Medium",
                                  fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.call_made,
                            size: 14,
                            color: Colors.green,
                          ),
                          Text(" 2.30 %",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontFamily: "Roboto-Medium",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "7d change",
                            style: TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto-Medium",
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.only(top: 180),
                //   padding: const EdgeInsets.symmetric(horizontal: 40),
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: Container(
                //           height: 40,
                //           decoration: BoxDecoration(
                //               borderRadius: BorderRadius.all(Radius.circular(10)),
                //               color: Colors.white),
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //               Icon(Icons.send),
                //               SizedBox(
                //                 width: 5,
                //               ),
                //               Text(
                //                 "Transfer",
                //                 style: TextStyle(
                //                     fontWeight: FontWeight.bold, fontSize: 18),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       SizedBox(
                //         width: 20,
                //       ),
                //       Expanded(
                //         child: Container(
                //           height: 40,
                //           decoration: BoxDecoration(
                //             color: Colors.white,
                //             borderRadius: BorderRadius.all(Radius.circular(10)),
                //           ),
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //               Icon(Icons.arrow_circle_down_rounded),
                //               SizedBox(
                //                 width: 5,
                //               ),
                //               Text(
                //                 "Withdraw",
                //                 style: TextStyle(
                //                     fontWeight: FontWeight.bold, fontSize: 18),
                //               ),
                //             ],
                //           ),
                //         ),
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
            Container(
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CryptoChart(),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Assets",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 120,
                              child: Text(
                                "Asset",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            Text(
                              "Price",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              "Holdings",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Row(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "assets/img/ibitcoin.png",
                                      width: 30,
                                      fit: BoxFit.cover,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Bitcoin",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$ 36.214,00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: const [
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Icon(
                                      Icons.call_made,
                                      size: 14,
                                      color: Colors.green,
                                    ),
                                    Text(" 2.30 %",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: "Roboto-Medium",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$ 36.214,00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: const [
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Text(" 1BTC",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "Roboto-Medium",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3.5,
                              child: Row(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "assets/img/ethereum.png",
                                      width: 30,
                                      fit: BoxFit.cover,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Ethereum",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: MediaQuery.of(context).size.width / 6,
                            // ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$ 1.232,35",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: const [
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Icon(
                                      Icons.call_made,
                                      size: 14,
                                      color: Colors.green,
                                    ),
                                    Text(" 22.30 %",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: "Roboto-Medium",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ],
                                ),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$ 1.232,35",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: const [
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Text(" 1ETH",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "Roboto-Medium",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Row(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "assets/img/ibitcoin.png",
                                      width: 30,
                                      fit: BoxFit.cover,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Bitcoin Cash",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(child: Container()),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$ 489,66",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: const [
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Icon(
                                      Icons.call_made,
                                      size: 14,
                                      color: Colors.green,
                                    ),
                                    Text(" 6.10 %",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: "Roboto-Medium",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$ 489,66",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: const [
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Icon(
                                      Icons.call_made,
                                      size: 14,
                                      color: Colors.green,
                                    ),
                                    Text(" 1BCH",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "Roboto-Medium",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 150,
                              child: Container(
                                width: 150,
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        "assets/img/xrp.png",
                                        width: 30,
                                        fit: BoxFit.cover,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "XRP",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$ 0,3062",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: const [
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Icon(
                                      Icons.call_made,
                                      size: 14,
                                      color: Colors.green,
                                    ),
                                    Text(" 10.30 %",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: "Roboto-Medium",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$ 0,3062",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Row(
                                  children: const [
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Icon(
                                      Icons.call_made,
                                      size: 14,
                                      color: Colors.green,
                                    ),
                                    Text(" 10.30 %",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: "Roboto-Medium",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
