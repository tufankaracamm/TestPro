import 'package:denemefitness/RegisterPage1.dart';
import 'package:denemefitness/RegisterPage3.dart';
import 'package:flutter/material.dart';
import 'ToggleButtonDart.dart';


class registerPage2 extends StatefulWidget {
  const registerPage2({Key? key}) : super(key: key);

  @override
  State<registerPage2> createState() => _registerPage2State();
}
class _registerPage2State extends State<registerPage2> {
  @override

  var tfEmail2 = TextEditingController();
  String alinanMail2 = '';

  var tfPassword2 = TextEditingController();
  String alinanPassword2= '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Center(child: new Text("Sign İn",style: TextStyle(color: Colors.white))
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: ToggleButton(
                    width: 300.0,
                    height: 60.0,
                    toggleBackgroundColor: Colors.blueAccent,
                    toggleBorderColor: (Colors.grey[350])!,
                    toggleColor: (Colors.white),
                    activeTextColor: Colors.black,
                    inactiveTextColor: Colors.white,
                    leftDescription: 'Sign Up',
                    rightDescription: 'Sign İn',
                    onLeftToggleActive: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>registerPage1()));
                    },
                    onRightToggleActive: () {
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: tfEmail2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: 'Email'
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  controller: tfPassword2,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      labelText: 'Password'
                  ),
                ),
              ),
              TextButton(
                child: Text("Forgot Password?"),
                onPressed: (){

                  },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>registerPage3()));
                  },
                  child: Text("Continue",style: TextStyle(color: Colors.white),),
              )
            ],

          ),
        ),
      ),
    );
  }
}
