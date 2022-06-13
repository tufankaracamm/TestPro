import 'package:denemefitness/RegisterPage6.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class registerPage5 extends StatefulWidget {
  const registerPage5({Key? key}) : super(key: key);

  String get title => "logo";

  @override
  State<registerPage5> createState() => _registerPage5State();
}

class _registerPage5State extends State<registerPage5> {
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
            child: Text("How Old Are You?",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold), ),
          ),
          Center(
            child: NumberPicker(
              value: _currentValue,
              minValue: 0,
              maxValue: 100,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>registerPage6()));
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



