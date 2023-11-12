import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';
import 'package:flutter/services.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({super.key});

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {

  void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
  }

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
        title: const Text("Invite Friends"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "1",
                      style: TextStyle(fontSize: 30, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "FRIENDS",
                      style: TextStyle(fontSize: 20, color: Colors.black38),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "\$0.03",
                      style: TextStyle(fontSize: 30, color: Colors.black54),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "REWARDS",
                      style: TextStyle(fontSize: 20, color: Colors.black38),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Earn More By Inviting Friends",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: const Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Share Your Code",
                              style: TextStyle(fontSize: 18)),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Invite your friends by sharing your code",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 10, 5),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: const Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Get 10% of Their Earning",
                              style: TextStyle(fontSize: 18)),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Get 10% of the money your friend \nmakes by completing surveys.\nThere is no Upper Limit.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Your Unique Referral Code"),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 180,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                      ),
                      onPressed: () {
                        // Call the copyToClipboard function with the text you want to copy
                        copyToClipboard('Text to copy to clipboard');
                        // Provide feedback that the text has been copied (you can use a SnackBar, for example)
                        final snackBar = SnackBar(
                          content: Text('Text copied to clipboard'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: const Text('Ksrxy'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "INVITE FRIENDS",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:   EdgeInsets.symmetric(vertical: 5),
                    child: TextButton(
                      style:   const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                      onPressed: (){
                        launchUrl(Uri.parse('https://flutter.dev'));
                      },
                      child:  const Text("Conditions Apply"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// _launchURL() async {
//   final Uri url = Uri.parse('https://flutter.dev');
//   if (!await launchUrl(url)) {
//     throw Exception('Could not launch $url');
//   }}
