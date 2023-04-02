import 'package:cricfit/colors.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background_color,
        body:Container(
          margin: const EdgeInsets.all(20),
          child:
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/icon.png",
                    width:25,
                    height:25),
                    const Text(
                        "CricFit",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, color: orange),
                    )
                    ],
                ),
                const SizedBox(height:10),
                Column(
                    children: [
                      Image.asset("assets/Account.png",
                          width:150,
                          height:150),
                      const SizedBox(height:10),
                      const Text("Your Name",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, color: orange,fontSize:25),
                      )],),
                const SizedBox(height:15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("Edit Your Information",
                      style:
                      TextStyle(fontWeight: FontWeight.bold,fontSize:18),
                    ),
                  ],
                ),
                const SizedBox(height:15),
                Column(mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Container(
                    width:300,
                    height: 50,
                    padding:const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 3),
            borderRadius: const BorderRadius.all(Radius.circular(15))
          ),
                     child: const Text("UserName",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, color: orange,fontSize:12)),
                  ),

                  Container(
                    width:300,
                    height: 50,
                    padding:const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 3),
                        borderRadius: const BorderRadius.all(Radius.circular(15))
                    ),
                    child: const Text("Mobile Number",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, color: orange,fontSize:12)),
                  ),

                  Container(
                    width:300,
                    height: 50,
                    padding:const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 3),
                        borderRadius: const BorderRadius.all(Radius.circular(15))
                    ),
                    child: const Text("Age",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, color: orange,fontSize:12)),
                  ),

                  Container(
                    width:300,
                    height: 50,
                    padding:const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 3),
                        borderRadius: const BorderRadius.all(Radius.circular(15))
                    ),
                    child: const Text("Gender",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, color: orange,fontSize:12)),
                  ),

                  Container(

                    padding:const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 3),
                        borderRadius: const BorderRadius.all(Radius.circular(15))
                    ),
                    child: const Text("Log Out",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, color: orange,fontSize:22),textAlign: TextAlign.center,),
                  ),
                ],),

                Container(
                  margin:const EdgeInsets.fromLTRB(5,13,0,5),

                  child: Expanded(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[Column(
                        children: [
                          Image.asset("assets/Home.png",
                          width:25,
                          height: 25,),
                          const SizedBox(height: 2,),
                          const Text("Home",
                          style: TextStyle(fontSize: 12,color: Color(0xff8A8A8A),fontWeight: FontWeight.bold))
                        ],
                      ),
                        Column(
                          children: [
                            Image.asset("assets/Excercise.png",
                              width:25,
                              height: 25,),
                            const SizedBox(height: 2,),
                            const Text("Excercise",
                                style: TextStyle(fontSize: 12,color: Color(0xff8A8A8A),fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/Notification.png",
                              width:25,
                              height: 25,),
                            const SizedBox(height: 2,),
                            const Text("Notifications",
                                style: TextStyle(fontSize: 12,color: Color(0xff8A8A8A),fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset("assets/Account_Selected.png",
                              width:25,
                              height: 25,),
                            const SizedBox(height: 2,),
                            const Text("Profile",
                                style: TextStyle(fontSize: 12,color: Color(0xff8A8A8A),fontWeight: FontWeight.bold))
                          ],
                        ),
                    ],),
                  ),
                )
              ]),
        ),



      ),
    );
  }
}
