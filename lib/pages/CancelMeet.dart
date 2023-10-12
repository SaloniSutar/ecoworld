import 'package:ecoworld/Nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CancelMeet extends StatefulWidget {
  const CancelMeet({super.key});

  @override
  State<CancelMeet> createState() => _CancelMeetState();
}

class _CancelMeetState extends State<CancelMeet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 15,
          vertical: MediaQuery.of(context).size.height / 18,
        ),
        child: SafeArea(
          left: true,
          top: true,
          right: true,
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(CupertinoIcons.bin_xmark_fill,
                    color: Colors.green, size: 50.0),
                const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                      "Your meeting with our scrap dealer has been cancelled .",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 25)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 32.0),
                  child: Text(
                    "Keep Browsing.",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 104,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Expanded(
                        child: Column(children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NavPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width / 10,
                                  vertical:
                                      MediaQuery.of(context).size.height / 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    CupertinoIcons.arrow_left,
                                    color: Colors.white,
                                  ),
                                  Text('Back',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20)),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
