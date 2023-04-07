import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/utils/sherd.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController txtpass = TextEditingController();
  TextEditingController txtemail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/images/login.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 8, right: 8),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Create",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60,color: Colors.blue.shade700),),
                    Text("account",style: TextStyle(fontSize: 20,color: Colors.blue.shade700),),
                    SizedBox(height: 30,),
                    TextField(
                      controller: txtemail,style: TextStyle(fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          hintText: "Email",
                          suffix: Icon(Icons.email)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: txtpass,style: TextStyle(fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          hintText: "Password",
                          suffix: Icon(Icons.lock)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue)),
                      onPressed: () {
                        var email = txtemail.text;
                        var passw = txtpass.text;
                        Share shr = Share();
                        shr.create(email, passw, false);
                        Navigator.pop(context);
                      },
                      child: Text("Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                      child: SizedBox(
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have account ?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                  );
                                },
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
