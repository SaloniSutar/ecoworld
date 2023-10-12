import 'package:ecoworld/pages/InfoPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/colors.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 15,
              vertical: MediaQuery.of(context).size.height / 28,
            ),
            child: SingleChildScrollView(
                child: SafeArea(
              left: true,
              top: true,
              right: true,
              bottom: true,
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Community",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                    ]),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 110,
                      vertical: MediaQuery.of(context).size.height / 50),
                  child: Container(
                    height: 200,
                    width: 430,
                    // decoration: const BoxDecoration(
                    //   color: Color.fromARGB(255, 211, 211, 211),
                    //   borderRadius: BorderRadius.all(Radius.circular(5)),
                    // ),
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InformationPage(),
                            ),
                          ),
                          child: Image.asset('assets/images/oldClothes.png',
                              fit: BoxFit.fill),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "How to use your old clothes?",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 130),
                                  child: Icon(
                                    CupertinoIcons.arrow_down_circle,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 12.0, bottom: 12),
                              child: Text("11/03/2023",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 110,
                      vertical: MediaQuery.of(context).size.height / 50),
                  child: Container(
                    height: 200,
                    width: 430,
                    // decoration: const BoxDecoration(
                    //   color: Color.fromARGB(255, 211, 211, 211),
                    //   borderRadius: BorderRadius.all(Radius.circular(5)),
                    // ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/joinMovement.png',
                          fit: BoxFit.fill,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Join the clean Bhubaneshwar Movement",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 70),
                                  child: Icon(
                                    CupertinoIcons.arrow_down_circle,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 12.0, bottom: 12),
                              child: Text("11/03/2023",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 110,
                      vertical: MediaQuery.of(context).size.height / 50),
                  child: Container(
                    height: 200,
                    width: 430,
                    // decoration: const BoxDecoration(
                    //   color: Color.fromARGB(255, 211, 211, 211),
                    //   borderRadius: BorderRadius.all(Radius.circular(5)),
                    // ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/newWays.png',
                          fit: BoxFit.fill,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "Some new methods of recycling",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 120),
                                  child: Icon(
                                    CupertinoIcons.arrow_down_circle,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 12.0, bottom: 12),
                              child: Text("11/03/2023",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 110,
                      vertical: MediaQuery.of(context).size.height / 50),
                  child: Container(
                    height: 200,
                    width: 430,
                    // decoration: const BoxDecoration(
                    //   color: Color.fromARGB(255, 211, 211, 211),
                    //   borderRadius: BorderRadius.all(Radius.circular(5)),
                    // ),
                    child: Stack(
                      children: [
                        Image.asset('assets/images/jonUS.png',
                            fit: BoxFit.fill),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Feel free to join the campaign",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 130),
                                      child: Icon(
                                        CupertinoIcons.arrow_down_circle,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ]),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 12.0, bottom: 12),
                              child: Text("11/03/2023",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 110,
                      vertical: MediaQuery.of(context).size.height / 50),
                  child: Container(
                    height: 200,
                    width: 430,
                    // decoration: const BoxDecoration(
                    //   color: Color.fromARGB(255, 211, 211, 211),
                    //   borderRadius: BorderRadius.all(Radius.circular(5)),
                    // ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/recycleCenter1.png',
                          fit: BoxFit.fill,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "New recycle center in the neighborhood",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 80),
                                    child: Icon(
                                      CupertinoIcons.arrow_down_circle,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 12.0, bottom: 12),
                              child: Text("11/03/2023",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ))));
  }
}
