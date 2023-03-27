import 'package:cricfit/searchAccount.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Personalized.dart';
import 'colors.dart';




class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background_color,
            appBar: AppBar(
            title: const Text("CricFit"),
        ),
          body:
            Container(

              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(

                  children: [
                  Row(children: [
                  Image.asset(
                        "assets/icon.png",
                        width: 35,
                        height: 35,
                  ),
                  const Text(
                  " CricFit",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, color: orange,fontSize: 34.2),
                  )
                  ]),
                    Image.asset("assets/Welcome.png",
                    width:350,
                      height:320,
                    ),
                   const Text(
                      "Hi, Welcome To\n CricFit",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight:FontWeight.w900,fontSize: 25,),

                    ),
                    Container(
                      margin:  const EdgeInsets.all(15),
                      child: const Text(
                        " Here your fitness journey begins. Let's focus on\n your health and take your cricket game to new\n heights!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight:FontWeight.w900,fontSize: 13,),

                      ),
                    ),
                    Row(
                      children:[Container(
                        margin: const EdgeInsets.all(10),
                        width:20,
                        height:10,
                        color: white,
                      ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width:20,
                          height:10,
                          color: Colors.black12,
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width:20,
                          height:10,
                          color: Colors.black12,
                        )
                    ]),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: SizedBox(
                        width:250,

                        child: ElevatedButton(

                          onPressed: ()=>{
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Personalized()),
                          )
                        },
                            style:
                              const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(white),
                              ),
                          child:const Text("Next",
                            style:
                            TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.red),
                          ),
                        ),
                      ),
                    )
  ]),
                ],
              ),
      ),
    ),
    );
  }
}
