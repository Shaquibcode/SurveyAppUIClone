import 'dart:math';

import 'package:flutter/material.dart';

var myList = [
  "money1.jpeg",
  "money2.jpeg",
  "money3.jpeg",
  "money4.jpeg",
];
int index = 0;

class PaymentDetailScreen extends StatefulWidget {
  const PaymentDetailScreen({super.key});

  @override
  State<PaymentDetailScreen> createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
          child: Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "\$2.55",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index += 1;
                      });
                    },
                    child: Image(
                        image: AssetImage(
                            "assets/images/${myList[index % myList.length]}"),
                        height: 200,
                        width: 200),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: Text(
                      "Your effort paid Off. The payment\nis now in your Paypal Account",
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      ),
                      child: const Text(
                        "SHARE",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                 const Column(
                    children: [
                       Row(
                        children: [
                          Text("Details", style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Payment Date", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                          Text("20/10/2023"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Payment Address", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                          Text("Abcdef@gmail.com"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Transaction ID", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                          Text("Ddjkdfldjfk133"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
