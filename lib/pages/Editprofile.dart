import 'package:ecoworld/Nav.dart';
import 'package:ecoworld/constants/colors.dart';
import 'package:ecoworld/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditProfilePage extends StatefulWidget {
  EditProfilePage({
    super.key,
  });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  void Update() {}
  final _NumberEditingcontroller = TextEditingController();

  // String Name = '';

  // set UserName(String UserName) {
  //   UserName =${ _NameEditingcontroller.text};
  // }
  //get _temp => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  const Text(
                    'Edit Profile',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
                height: 80,
                width: 80,
                child: SvgPicture.asset('assets/images/ID-2 Color.svg')),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/ID-1.svg'),
                const SizedBox(
                  width: 8,
                ),
                SvgPicture.asset('assets/images/ID-2 Color.svg'),
                const SizedBox(
                  width: 8,
                ),
                SvgPicture.asset('assets/images/ID-3.svg'),
                const SizedBox(
                  width: 8,
                ),
                SvgPicture.asset('assets/images/ID-4.svg'),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(width: 2.0, color: Colors.black),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 40,
                        vertical: MediaQuery.of(context).size.height / 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Male',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Ecocolors.selectionGreen,
                    side: const BorderSide(width: 2.0, color: Colors.black),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 45,
                        vertical: MediaQuery.of(context).size.height / 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Female',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      //color: Ecocolors.selectionBlack,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Ecocolors.selectionBlack,
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    child: TextField(
                      //  controller: _NameEditingcontroller,
                      decoration: InputDecoration(
                        hintText: 'Enter your Name',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Ecocolors.selectionGrey1),
                      ),
                      // controller: displayNameController,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Phone Number',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      //color: Ecocolors.selectionBlack,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Ecocolors.selectionBlack,
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    child: TextField(
                      // controller: _Numbercontroller,
                      decoration: InputDecoration(
                        hintText: 'Enter Phone Number',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Ecocolors.selectionGrey1),
                      ),
                      //  controller: numberController,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Street/Colony',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      //color: Ecocolors.selectionBlack,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Ecocolors.selectionBlack,
                      )),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Address',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Ecocolors.selectionGrey1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'City',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      //color: Ecocolors.selectionBlack,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Ecocolors.selectionBlack,
                      )),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter City Name',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Ecocolors.selectionGrey1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 82.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                      child: Expanded(
                        child: Column(children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                // UserName = _NameEditingcontroller.text;

                                // Name = _Namecontroller.text;
                                // Number = _Numbercontroller.text;
                              });
                              Navigator.pop(context);
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => NavPage()));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              backgroundColor: Colors.black,

                              //side: const BorderSide(
                              //  width: 2.0, color: Colors.black),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width / 6,
                                  vertical:
                                      MediaQuery.of(context).size.height / 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Save',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
