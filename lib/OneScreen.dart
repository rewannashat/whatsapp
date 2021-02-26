import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class OneScreen extends StatefulWidget {
  @override
  _OneScreenState createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {

  final myController = TextEditingController();
  final controller = TextEditingController();

  void whatsApp(String num , String message)async
  {
    String url = 'whatsapp://send?phone=$num&text=$message';
    await canLaunch(url)?launch(url):print('conferm the number');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 200,
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Enter Number :',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.phone),
                      fillColor: Colors.white,
                      prefixText: '+',
                    prefixStyle: TextStyle(
                      color: Colors.black,
                    )
                      ),
                  keyboardType: TextInputType.number,
                  controller: controller ,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Message',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      )),
                  keyboardType: TextInputType.text,
                  controller:  myController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: RaisedButton(
                  onPressed: () {
                    whatsApp(controller.text, myController.text );
                  },
                  child: Text(
                    'Send',
                    style: TextStyle(color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
