import 'package:denemefitness/RegisterPage4.dart';
import 'package:flutter/material.dart';

class registerPage3 extends StatefulWidget {
  const registerPage3({Key? key}) : super(key: key);

  String get title => "Register Page";

  @override
  State<registerPage3> createState() => _registerPage3State();
}

class _registerPage3State extends State<registerPage3> {
  @override

  var tfYourName = TextEditingController();
  String alinanIsim = ' ';



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Center(child: new Text(widget.title, textAlign: TextAlign.center)
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Align(
                  alignment: Alignment.centerLeft,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Your Name?",style: TextStyle(fontSize: 20),),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                    controller: tfYourName,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      hintText: "Your Name",
                    )
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(100.0),
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>registerPage4()));
                    },
                    child: Text("Continue",style: TextStyle(color: Colors.white),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
