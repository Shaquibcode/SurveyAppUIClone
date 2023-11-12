import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_app_ui/screens/home.dart';
import 'package:new_app_ui/screens/payment_detail_screen.dart';
import 'package:new_app_ui/screens/study_screen.dart';
import 'package:new_app_ui/widgets/custom_dialog.dart';

class EarningScreen extends StatelessWidget {
  const EarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (BuildContext) => Home()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Balance"),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(context: context, builder: (BuildContext context){
                return Padding(
                  padding: EdgeInsets.zero,
                  child: SizedBox(
                    height: 600,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Padding(
                           padding: EdgeInsets.only(left: 12),
                           child: Text("Transaction History", style: TextStyle(fontSize: 28, color: Colors.grey),),
                         ),
                         const SizedBox(
                           height: 20,
                         ),
                         const Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Date", style: TextStyle(color: Colors.grey),),
                              SizedBox(
                                width: 45,
                              ),
                              Text("Transaction Type", style: TextStyle(color: Colors.grey),),
                              SizedBox(
                                width: 15,
                              ),
                              Text("value", style: TextStyle(color: Colors.grey,),),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 20,
                                itemBuilder: (context, index){
                                  return const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 13),
                                    child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Column(
                                         children: [
                                           Text("1/2023//4")
                                         ],
                                       ),
                                       Column(
                                         children: [
                                           Text("Survey ScreenOut")
                                         ],
                                       ),
                                       Column(
                                         children: [
                                           Text("1.2\$")
                                         ],
                                       ),
                                      ],
                                    ),
                                  );
                                }
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },);
            },
            icon: const Icon(Icons.refresh),
          ),
          PopupMenuButton(
            itemBuilder: (context)=> [
             const PopupMenuItem(
                value: '1',
                child: Text("Refresh")
              ),
            ],
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: SizedBox(
            height: 120,
            child: Column(
              children: [
                Text(
                  "\$2.55",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                Text(
                  "US Dollar",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            color: const Color(0xffd91919),
            height: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Request A Payment",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CustomDialog(
                                  mainText: "Paypal", myUrlText: "Paypal");
                            });
                      },
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.p,
                            size: 50,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "PayPal",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CustomDialog(
                                  mainText: "Skrill", myUrlText: "Skrill");
                            });
                      },
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.s,
                            size: 50,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Skrill",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    InkWell(
                      onTap: () {
                        //to change
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const DonateDialog();
                            });
                      },
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.d,
                            size: 50,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Donate",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return PaymentDetailScreen();
                        },
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        height: 120,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "\$3.16",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Abcdef@gmail.com",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black54),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Paypal",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "20/10/2023",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black38),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Complete",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Details",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Icon(Icons.arrow_right_alt),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: .1,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
