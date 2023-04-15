import 'package:cricfit/Constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = "John Doe";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            children: [
              upperBody(),
              lowerBody(),
              const SizedBox(
                height: 10,
              ),
              bottomButtons()
            ],
          ),
        ),
      )),
    );
  }

  Widget upperBody() {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: const [
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
                "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "John Doe",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "Batsman",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w200, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget lowerBody() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 20,
      ),
      const Text(
        "Edit Profile",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w200, fontSize: 20),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 300,
        height: 50,
        child: TextFormField(
          controller: _nameController,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: textColor), //<-- SEE HERE
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: textColor), //<-- SEE HERE
              borderRadius: BorderRadius.circular(10.0),
            ),
            label: const Text(
              "Name",
              style: TextStyle(color: textColor),
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 300,
        height: 50,
        child: TextFormField(
          controller: _nameController,
          style: const TextStyle(color: Colors.black),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: textColor), //<-- SEE HERE
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: textColor), //<-- SEE HERE
              borderRadius: BorderRadius.circular(10.0),
            ),
            label: const Text(
              "Number",
              style: TextStyle(color: textColor),
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 300,
        height: 50,
        child: TextFormField(
          controller: _nameController,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: textColor), //<-- SEE HERE
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: textColor), //<-- SEE HERE
              borderRadius: BorderRadius.circular(10.0),
            ),
            label: const Text(
              "Age",
              style: TextStyle(color: textColor),
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 300,
        height: 50,
        child: TextFormField(
          controller: _nameController,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: textColor), //<-- SEE HERE
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(width: 1, color: textColor), //<-- SEE HERE
              borderRadius: BorderRadius.circular(10.0),
            ),
            label: const Text(
              "Gender",
              style: TextStyle(color: textColor),
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget bottomButtons() {
    return Column(
      children: [
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
              color: textColor, borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Save",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Logout",
              style: TextStyle(
                  color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
