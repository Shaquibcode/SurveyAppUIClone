import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDialog extends StatefulWidget {
  String mainText;
  String myUrlText;
  CustomDialog({required this.mainText, required this.myUrlText });

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(20.0)), //this right here
      child: Container(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Request ${widget.mainText} Payment"),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Your ${widget.mainText} email address'),
              ),
             const SizedBox(
                height: 20,
              ),
              const Text("Please Check your address carefully.\nOnce a payment request has been done,\ncant be changed."),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Text("Dont Have ${widget.mainText} account?", style: const TextStyle(color: Colors.red),),
                onTap: (){
                  launchUrl(Uri.parse('https://${widget.myUrlText}.com'));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class DonateDialog extends StatefulWidget {
  const DonateDialog({super.key});

  @override
  State<DonateDialog> createState() => _DonateDialogState();
}

class _DonateDialogState extends State<DonateDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(20.0)), //this right here
      child: Container(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Donate Here!"),
              const SizedBox(
                height: 10,
              ),

              const Text("Please fill your address carefully.\nOnce a payment request has been done,\ncant be changed."),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: const Text("Donate here , your contribution matters!", style: TextStyle(color: Colors.red),),
                onTap: (){
                  launchUrl(Uri.parse('https://www.google.com'));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

