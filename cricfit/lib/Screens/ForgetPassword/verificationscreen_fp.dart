import "package:cricfit/Screens/ForgetPassword/thankyouscreen_fp.dart";
import "package:flutter/material.dart";
import "package:flutter_otp_text_field/flutter_otp_text_field.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:email_otp/email_otp.dart';

import "../../Constants/colors.dart";

class VerificationScreenFP extends StatefulWidget {
  final email;
  const VerificationScreenFP({super.key, required this.email});

  @override
  State<VerificationScreenFP> createState() => _VerificationScreenFPState();
}

class _VerificationScreenFPState extends State<VerificationScreenFP> {
  EmailOTP myauth = EmailOTP();
  final code = '';
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
                  "Type a Verification Code that we have sent",
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
                  "Enter your Verification Code below.",
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
                    "assets/images/4.png",
                    width: 300,
                    height: 300,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                OtpTextField(
                  numberOfFields: 4,
                  enabledBorderColor: textColor,
                  disabledBorderColor: textColor,
                  focusedBorderColor: textColor,
                  cursorColor: textColor,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,

                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) async {
                    if (await myauth.verifyOTP(
                            otp: verificationCode.toString()) ==
                        true) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.green,
                        content: Text(
                          "OTP is verified",
                          style: TextStyle(color: Colors.white),
                        ),
                      ));
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ThankyouScreenFP()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Invalid OTP",
                            style: TextStyle(color: Colors.white)),
                      ));
                    }
                  }, // end onSubmit
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: textColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      "VERIFY NOW",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () async {
                    setState(() {
                      isLoading = true;
                    });

                    myauth.setConfig(
                        appEmail: "hackersvilla776@gmail.com",
                        appName: "Email OTP",
                        userEmail: widget.email,
                        otpLength: 4,
                        otpType: OTPType.digitsOnly);

                    if (await myauth.sendOTP() == true) {
                      setState(() {
                        isLoading = false;
                      });

                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.green,
                        content: Text("OTP has been sent",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("OTP sent failed",
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
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: isLoading
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              "RESEND CODE",
                              style: TextStyle(
                                color: textColor,
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
