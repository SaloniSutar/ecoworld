import 'dart:convert';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecoworld/constants/colors.dart';
import 'package:ecoworld/model/signup_model.dart';
import 'package:ecoworld/pages/login.dart';
import 'package:ecoworld/utilities/error_dialog_box.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _signupState();
}

class _signupState extends State<SignUp> {
  bool _passwordVisible = false;

    

  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _address;
  late final TextEditingController _city;
  late final TextEditingController _name;
  late final TextEditingController _phNum;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    _address = TextEditingController();
    _city = TextEditingController();
    _name = TextEditingController();
    _phNum = TextEditingController();
    _passwordVisible = true;
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _address.dispose();
    _city.dispose();
    _name.dispose();
    _phNum.dispose();
    super.dispose();
  }


  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future createUser(UserSignup user) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();

    user.id = docUser.id;
    final json = user.toJson();
    await docUser.set(json);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 15,
          vertical: MediaQuery.of(context).size.height / 18,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/ecoworld.png'),
              const SizedBox(
                height: 17,
              ),
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                        //color: Ecocolors.selectionBlack,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Ecocolors.selectionBlack,
                        )),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                      child: TextField(

                        controller: _name,

                       
                        decoration: InputDecoration(
                          hintText: 'Name',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Ecocolors.selectionGrey1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                        //color: Ecocolors.selectionBlack,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Ecocolors.selectionBlack,
                        )),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                      child: TextField(
                        controller: _phNum,
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Ecocolors.selectionGrey1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                        //color: Ecocolors.selectionBlack,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Ecocolors.selectionBlack,
                        )),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                      child: TextField(
                        controller: _email,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Ecocolors.selectionGrey1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                        //color: Ecocolors.selectionBlack,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Ecocolors.selectionBlack,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 4),
                      child: TextField(
                        controller: _password,
                        obscureText: _passwordVisible,
                        autocorrect: false,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                              icon: Icon(_passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          border: InputBorder.none,

                          hintStyle:
                              const TextStyle(color: Ecocolors.selectionGrey1),

                          //  hintStyle: TextStyle(color: Ecocolors.selectionGrey1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                        //color: Ecocolors.selectionBlack,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Ecocolors.selectionBlack,
                        )),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                      child: TextField(
                        controller: _address,
                        decoration: InputDecoration(
                          hintText: 'Address',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Ecocolors.selectionGrey1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                        //color: Ecocolors.selectionBlack,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Ecocolors.selectionBlack,
                        )),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                      child: TextField(
                        controller: _city,
                        decoration: InputDecoration(
                          hintText: 'City',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Ecocolors.selectionGrey1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 45,
                    ),
                    child: Column(
                      children: [
                        ElevatedButton(
                          
                          onPressed: () async {
                            await Firebase.initializeApp(
                              options: DefaultFirebaseOptions.currentPlatform,
                            );
                            final email = _email.text;
                            final password = _password.text;
                            try {
                              final userCredential = await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: email, password: password);
                              print(userCredential);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                await showErrorDialogue(
                                    context, 'Weak password');
                              } else if (e.code == 'email-already-in-use') {
                                await showErrorDialogue(
                                    context, 'Email already in use');
                              } else if (e.code == 'invalid-email') {
                                await showErrorDialogue(
                                    context, 'Invalid email');
                              } else {
                                await showErrorDialogue(
                                    context, 'Error: ${e.code}');
                              }
                            } catch (e) {
                              await showErrorDialogue(
                                context,
                                e.toString(),
                              );
                            }
                            final user = UserSignup(
                              address: _address.text,
                              city: _city.text,
                              name: _name.text,
                              phNum: int.parse(_phNum.text),
                            );
                            createUser(user);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Ecocolors.selectionBlack),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 25,
                                vertical:
                                    MediaQuery.of(context).size.height / 53),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Create Account'),
                                Icon(Icons.arrow_forward)
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?"),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  });
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.blue),
                                ))
                          
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
