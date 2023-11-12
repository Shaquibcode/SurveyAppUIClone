import 'package:flutter/material.dart';
import 'package:new_app_ui/screens/message_screen.dart';

class StudyScreen extends StatefulWidget {
  const StudyScreen({super.key});

  @override
  State<StudyScreen> createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("My Studies"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
              return MessageScreen();
            }));
          }, icon: const Icon(Icons.notifications_none)),
          PopupMenuButton(
            itemBuilder: (context)=> [
              const PopupMenuItem(
                  value: '1',
                  child: Text("Refresh")
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            child: const Text(
              "There are no studies available at the moment, we will send the notification when one is sent to you.",
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
      // const Align(
      //   alignment: Alignment.topCenter,
      //   child: Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: CircularProgressIndicator(
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
    );
  }
}
