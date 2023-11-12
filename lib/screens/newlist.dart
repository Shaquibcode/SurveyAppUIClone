import 'package:flutter/material.dart';
import 'package:new_app_ui/screens/payment_detail_screen.dart';

class NewList extends StatefulWidget {
  const NewList({super.key});

  @override
  State<NewList> createState() => _NewListState();
}

class _NewListState extends State<NewList> {
  List myList2 = [
    "Auto",
    "Computer",
    "Education",
    "Electronics",
    "Ethinicity",
    "Food And Beverages",
    "Healthcare",
    "Hobbies",
    "HouseHold",
    "Media",
    "Mother",
    "Occupation",
    "Region",
    "Research",
    "Smoking and Tobbaco",
    "Travel",
    "Core demo",
    "Devices",
    "IP Address",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),),
        title: const Text("Your Profile"),
      ),
      body: Column(
        children: [
          Expanded(child: ListView.separated(
              itemBuilder: (BuildContext context, int index)
              {
                return Text(myList2[index], style: const TextStyle(fontSize: 22),);
              },
              separatorBuilder: (BuildContext context, int index)
              {
                return const Divider(
                  thickness: 1,
                );
              },
              itemCount: myList2.length),),
        ],
      ),
    );
  }
}
