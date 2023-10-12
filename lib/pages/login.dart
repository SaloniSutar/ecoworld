import "package:ecoworld/Nav.dart";
import "package:ecoworld/constants/colors.dart";
import "package:ecoworld/pages/community.dart";
import "package:ecoworld/pages/profile.dart";
import "package:ecoworld/signup.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "../utilities/error_dialog_box.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? name = "";
  bool _isObscure = true;
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 15,
            vertical: MediaQuery.of(context).size.height / 18,
          ),
          child: SingleChildScrollView(
            child: SafeArea(
              left: true,
              top: true,
              right: true,
              bottom: true,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/imageWelc.png",
                        fit: BoxFit.cover),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 1, horizontal: 34),
                      child: Text("Log In",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 24.0),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextFormField(
                            controller: _email,
                            decoration: const InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            controller: _password,
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                labelText: "Password",
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    })),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'Forgot Password ?',
                              style: TextStyle(color: Colors.red, fontSize: 15),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(),
                            child: ElevatedButton(
                                onPressed: () async {
                                  final email = _email.text;
                                  final password = _password.text;
                                  try {
                                    final userCredential = await FirebaseAuth
                                        .instance
                                        .signInWithEmailAndPassword(
                                            email: email, password: password);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => NavPage(),
                                      ),
                                    );
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'user-not-found') {
                                      await showErrorDialogue(
                                        context,
                                        'User not found',
                                      );
                                    } else if (e.code == 'wrong-password') {
                                      await showErrorDialogue(
                                        context,
                                        'Wrong credentials',
                                      );
                                    } else {
                                      await showErrorDialogue(
                                        context,
                                        'Error: ${e.code}',
                                      );
                                    }
                                  } catch (e) {
                                    await showErrorDialogue(
                                      context,
                                      e.toString(),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Ecocolors.selectionBlack),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width /
                                              25,
                                      vertical:
                                          MediaQuery.of(context).size.height /
                                              53),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        NavPage()));
                                          },
                                          child: Text(
                                            'Log-in',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Icon(Icons.arrow_forward)
                                      ]),
                                )),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an user account?"),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUp()));
                                  });
                                },
                                child: Text(
                                  'SignUp',
                                  style: TextStyle(color: Colors.blue),
                                ))
                            // TextButton(

                            //   "SignUp",
                            //   style: TextStyle(color: Colors.blue),
                            // ),
                          ],
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
