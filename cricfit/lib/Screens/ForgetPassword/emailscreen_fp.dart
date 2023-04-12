import 'package:cricfit/Constants/colors.dart';
import 'package:cricfit/Screens/ForgetPassword/verificationscreen_fp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_otp/email_otp.dart';

class EmailScreenFP extends StatefulWidget {
  const EmailScreenFP({super.key});

  @override
  State<EmailScreenFP> createState() => _EmailScreenFPState();
}

class _EmailScreenFPState extends State<EmailScreenFP> {
  EmailOTP myauth = EmailOTP();
  TextEditingController emailController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: textColor,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Type your E-mail",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Help us to find your Account",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/3.png",
                    width: 300,
                    height: 300,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "E-mail ",
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: blackgreyColor,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () async {
                    if (emailController.text.isNotEmpty) {
                      setState(() {
                        isLoading = true;
                      });

                      myauth.setConfig(
                          appEmail: "hackersvilla776@gmail.com",
                          appName: "Email OTP",
                          userEmail: emailController.text,
                          otpLength: 4,
                          otpType: OTPType.digitsOnly);

                      if (await myauth.sendOTP() == true) {
                        setState(() {
                          isLoading = false;
                        });

                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text("OTP has been sent",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerificationScreenFP(
                              email: emailController.text,
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("OTP sent failed",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ));
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Please enter your email",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ));
                    }
                  },
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: textColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: isLoading
                          ? const CircularProgressIndicator(
                              color: textColor,
                            )
                          : const Text(
                              "SEND OTP",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
