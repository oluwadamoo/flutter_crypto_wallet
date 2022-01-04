// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:crypto_wallet/navpages/home_page.dart';
import 'package:crypto_wallet/navpages/market_page.dart';
import 'package:crypto_wallet/navpages/portfolio_page.dart';
import 'package:crypto_wallet/navpages/profile_page.dart';
import 'package:crypto_wallet/navpages/trade_page.dart';
import 'package:flutter/material.dart';

bool _tradeIsTapped = false;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    PortfolioPage(),
    TradePage(),
    MarketPage(),
    ProfilePage()
  ];

  int currentIndex = 0;
  void onTap(int index) {
    if (index == 2) {
      _tradeIsTapped = true;

      debugPrint(index.toString());
      setState(() {});
      return;
    }
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: pages[currentIndex],
        bottomNavigationBar: _tradeIsTapped == true
            ? Container(
                height: 200,
                padding: EdgeInsets.only(bottom: 0),
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //     topRight: Radius.circular(30),
                    //     topLeft: Radius.circular(30)),
                    ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: BottomNavigationBar(
                    elevation: 3,
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: Colors.white.withOpacity(0.1),
                    selectedItemColor: Colors.white.withOpacity(0.0),
                    unselectedItemColor: Colors.white.withOpacity(0.0),
                    selectedFontSize: 0,
                    unselectedFontSize: 0,
                    onTap: onTap,
                    currentIndex: currentIndex,
                    showSelectedLabels: true,
                    showUnselectedLabels: true,
                    items: [
                      BottomNavigationBarItem(
                          label: "Home", icon: Icon(Icons.home, size: 0)),
                      BottomNavigationBarItem(
                          label: "",
                          icon: Column(
                            children: [
                              Container(
                                width: 300,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.send,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Transfer",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 200,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.arrow_circle_down_rounded,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Withdraw",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  height: 60,
                                  width: 60,
                                  margin: EdgeInsets.only(top: 10),
                                  padding: EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          _tradeIsTapped = false;
                                          setState(() {});
                                        },
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Trade",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  )),
                            ],
                          )),
                      BottomNavigationBarItem(
                          label: "Portfolio",
                          icon: Icon(Icons.business_center_sharp)),
                    ],
                  ),
                ))
            : Container(
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: BottomNavigationBar(
                    elevation: 3,
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: Colors.white.withOpacity(0.1),
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.white.withOpacity(0.4),
                    onTap: onTap,
                    currentIndex: currentIndex,
                    showSelectedLabels: true,
                    showUnselectedLabels: true,
                    items: [
                      BottomNavigationBarItem(
                          label: "Home", icon: Icon(Icons.home)),
                      BottomNavigationBarItem(
                          label: "Portfolio",
                          icon: Icon(Icons.business_center_sharp)),
                      BottomNavigationBarItem(
                          label: "",
                          icon: Container(
                              height: 60,
                              width: 60,
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.swap_vert,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Trade",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ))),
                      BottomNavigationBarItem(
                        label: "Market",
                        icon: Icon(Icons.timeline),
                      ),
                      BottomNavigationBarItem(
                        label: "Profile",
                        icon: Icon(Icons.person_outline),
                      )
                    ],
                  ),
                ))

        // bottomNavigationBar:

        //  BottomNavigationBar(
        //   type: BottomNavigationBarType.fixed,
        //   backgroundColor: Colors.grey,
        //   onTap: onTap,
        //   currentIndex: currentIndex,
        //   selectedItemColor: Colors.white,
        //   unselectedItemColor: Colors.white30,
        //   items: [
        //     BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        //     BottomNavigationBarItem(
        //         label: "Portfolio", icon: Icon(Icons.business_center_sharp)),
        //     BottomNavigationBarItem(label: "Trade", icon: Icon(Icons.swap_vert)),
        //     BottomNavigationBarItem(
        //       label: "Market",
        //       icon: Icon(Icons.timeline),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "Profile",
        //       icon: Icon(Icons.person_outline),
        //     )
        //   ],
        // ),
        );
  }
}
