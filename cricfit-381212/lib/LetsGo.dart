import 'package:cricfit/searchAccount.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';




class LetsGo extends StatefulWidget {
  @override
  _LetsGoState createState() => _LetsGoState();
}

class _LetsGoState extends State<LetsGo> {


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
                    Image.asset("assets/LetsGo.png",
                      width:350,
                      height:350,
                    ),
                    const Text(
                      "Lets Go!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight:FontWeight.w900,fontSize: 30,),

                    ),
                    Container(
                      margin:  const EdgeInsets.all(15),
                      child: const Text(
                        "Get ready to step up your game with\n Cric Fit - Your ultimate fitness partner for cricket!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight:FontWeight.w900,fontSize: 13,),

                      ),
                    ),
                    Row(
                        children:[Container(
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
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            width:20,
                            height:10,
                            color:white,
                          )
                        ]),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: SizedBox(
                        width:250,

                        child: ElevatedButton(

                          onPressed: ()=>{
                            print("Hello")
                          },
                          style:
                          const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(white),
                          ),
                          child:const Text("Get Started",
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
