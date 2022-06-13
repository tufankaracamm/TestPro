import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import 'RegisterPage7.dart';

class registerPage6 extends StatefulWidget {
  const registerPage6({Key? key}) : super(key: key);

  String get title => "logo";

  @override
  State<registerPage6> createState() => _registerPage6State();
}

class _registerPage6State extends State<registerPage6> {
  @override

  int _currentValue = 3;

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: new Center(child: new Text(widget.title, textAlign: TextAlign.center)
        ),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("How Much Is Your Length?",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold), ),
          ),
          Center(
            child: NumberPicker(
              value: _currentValue,
              minValue: 0,
              maxValue: 300,
              onChanged: (value) => setState(() => _currentValue = value),
            ),
          ),



          Align(
            alignment: Alignment.bottomCenter,

            child: Container(
              margin: const EdgeInsets.all(50),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>registerPage7()));
                  },
                  child: Text("Next",style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
