import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/utils/sherd.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/images/login.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage( "assets/images/mobile.jpg",),
                ),
                SizedBox(height: 30,),
                Column(
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade700),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 180),
                      child: Text("Back",style: TextStyle(color: Colors.blue.shade700,fontWeight: FontWeight.bold,fontSize: 20),),
                    )
                  ],
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                        onPressed: () {
                          Share shr = Share();
                        },
                        child: Text(
                          "Login as Maria",
                          style: TextStyle(color: Colors.white),
                        ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text("Delet account",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
