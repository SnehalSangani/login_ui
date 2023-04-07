import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/utils/sherd.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController txtpass=TextEditingController();
  TextEditingController txtemail=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/images/login.jpg", fit: BoxFit.cover,),),
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 8, right: 8),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 60),
                    TextField(controller: txtemail,style: TextStyle(fontWeight: FontWeight.bold),
                      decoration: InputDecoration(border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          hintText: "Email",
                          suffix: Icon(Icons.email)),),
                    SizedBox(height: 15,),
                    TextField(controller: txtpass,style: TextStyle(fontWeight: FontWeight.bold),
                      decoration: InputDecoration(border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          hintText: "Password",
                          suffix: Icon(Icons.lock)),),
                    SizedBox(height: 25,),
                    ElevatedButton(style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue)),
                      onPressed: () async {
                        String uemail = txtemail.text;
                        String upass = txtpass.text;
                        Share shr = Share();
                        Map m1 = await shr.read();
                        if(uemail==m1['e']&&upass==m1['p'])
                        {
                          shr.create(txtemail.text, txtpass.text,true);
                          Navigator.pushNamed(context, 'home');
                        }
                        else
                        {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid Id or Password"),backgroundColor: Colors.blue.shade600),);
                        }
                      },
                      child: Text("Login", style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have account ?", style: TextStyle(
                              fontWeight: FontWeight.bold),),
                          TextButton(onPressed: () {
                            Navigator.pushNamed(context, 'signup');
                          }, child: Text("Sign Up", style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),);
  }
}
