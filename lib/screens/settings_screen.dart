import 'package:flutter/material.dart';
import 'package:new_app_ui/screens/newlist.dart';

import 'home.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Home()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Email",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const Text(
                    "Abcd@gmail.com",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                        return NewList();
                      }));
                    },
                    child:  const Text(
                      "Your Profile",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black54,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {},
                child: const Text(
                  "Enter your Referral Code",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black54,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Sign Out",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Survey Settings",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Survey Frequency",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const Text(
                    "As Many Possible",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black54,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Maximum Length",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const Text(
                    "Any Length",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Location",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const Text(
                    "Enabled",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Help",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Help",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black54,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {},
                child: const Text("Delete Account",  style: TextStyle(fontSize: 18),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
