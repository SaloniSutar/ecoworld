import 'package:ecoworld/constants/colors.dart';
import 'package:ecoworld/pages/InfoPage.dart';
import 'package:ecoworld/pages/community.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
//import 'package:flutter/src/widgets/framework.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: SafeArea(
            left: true,
            top: true,
            right: true,
            bottom: true,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 15,
                vertical: MediaQuery.of(context).size.height / 28,
              ),
              child: Column(children: [
                Row(children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CommunityPage()));
                      });
                    },
                    iconSize: 30,
                  ),
                ]),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 430,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 241, 238, 238),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 25,
                    vertical: MediaQuery.of(context).size.height / 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "How can you use your old clothes ?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 91, 219, 96)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "11/03/2023",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          "1)Transform and upcycle into something new.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                            "Clothes that are damaged,stained or holey can be given to textile and fabric recycling(see below) or use parts of them to create new items such as face masks, padding for chairs,car seats, cleaning cloths and industrial blankets."),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          "2)Check out local textile & fabric recycling spots.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                            "Any clothing that isn't good enough to be passed on can still be given a new life cia clothing banks.You can find clothing and texting banks in supermarkets and local car parks .Visit Recycle Now to find one near you."),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          "1)Ask your counsil about textile collections.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                            "Many local councils offer clothes and textiles collections, so it's always worth checking this out on local counsil websites. These collections are free to use and easy and they will be put to good use."),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          "1)Give to an animal shelter.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                            "Bedding material is very needed in shelter settings, and shelter dogs go through this stuff pretty fast. Accidents, chewing, and general use make these items hard to keep in stock. Shelters tend to accept sheets, blankets, and towels regardless of whether they are new or used, so long as they are clean and aren’t completely falling apart, though not all do. Ask your local shelter if they accept these items."),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 5,
                      vertical: MediaQuery.of(context).size.height / 40),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 30,
                              vertical:
                                  MediaQuery.of(context).size.height / 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                CupertinoIcons.bookmark,
                                color: Colors.white,
                              ),
                              Text('Save',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            )),
      ),
    );
  }
}
