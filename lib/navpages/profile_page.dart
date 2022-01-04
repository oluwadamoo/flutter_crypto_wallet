// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "mai****@***.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "ID: 12345678",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/img/verified.png",
                      width: 30,
                      height: 30,
                      color: Colors.lightGreen,
                    ),
                    Text(
                      "Verified",
                      style: TextStyle(
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "APP",
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Launch Screen",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Expanded(child: Container()),
                Row(children: [
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 17,
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              children: [
                Text(
                  "Appearance",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Expanded(child: Container()),
                Row(children: [
                  Text(
                    "Dark",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 17,
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "ACCOUNT",
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Payment Currency",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Expanded(child: Container()),
                Row(children: [
                  Text(
                    "USD",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 17,
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              children: [
                Text(
                  "Language",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Expanded(child: Container()),
                Row(children: [
                  Text(
                    "English",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 17,
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "SECURITY",
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Password Settings",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Expanded(child: Container()),
                Row(children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 17,
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              children: [
                Text(
                  "Change Password",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Expanded(child: Container()),
                Row(children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 17,
                  )
                ]),
              ],
            ),
            SizedBox(height: 28),
            Row(
              children: [
                Text(
                  "2-Factor Authentication",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Expanded(child: Container()),
                Row(children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 17,
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ])),
    );
  }
}
