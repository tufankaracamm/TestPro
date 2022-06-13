
import 'package:denemefitness/RegisterPage2.dart';
import 'package:denemefitness/service/auth.dart';
import 'package:flutter/material.dart';
import 'RegisterPage3.dart';
import 'ToggleButtonDart.dart';


class registerPage1 extends StatefulWidget {
  const registerPage1({Key? key}) : super(key: key);

  @override
  State<registerPage1> createState() => _registerPage1State();
}

class _registerPage1State extends State<registerPage1> {

  var tfEmail = TextEditingController();
  String alinanMaili= ' ';

  var tfPassword = TextEditingController();
  String alinanSifre= ' ';

  var tfPassword2 = TextEditingController();
  String alinanSifre2= ' ';

  bool _isObsecureText= true;
  bool _isObsecureText2= true;

  @override



  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: new Center(child: new Text("Register",style: TextStyle(color: Colors.white))
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
                    },
                    onRightToggleActive: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>registerPage2()));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: tfEmail,

                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: "Email",

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: tfPassword,
                    obscureText: _isObsecureText,
                    decoration: InputDecoration(

                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      labelText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(
                            _isObsecureText ? Icons.visibility_off :Icons.visibility),
                        onPressed: (){
                          setState((){
                            _isObsecureText = !_isObsecureText;
                          });
                        },
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: tfPassword2,
                  obscureText: _isObsecureText2,
                  decoration: InputDecoration(

                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: "Re-write Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObsecureText2 ? Icons.visibility_off :Icons.visibility),
                      onPressed: (){
                        setState((){
                          _isObsecureText2 = !_isObsecureText2;
                        });
                      },
                      ),
                    )
                  ),
                ),

              Padding(
                padding: const EdgeInsets.all(40.0),
                child: SizedBox(
                  height:100,

                  child: Text("Curabitur lobortis id lorem id bilendum. Ut id consectetur magna "
                      "Terms of Use augue enim pulvinar Privacy Notice lacinia at",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),

              SizedBox(
                height: 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    child: Text("Continue",style: TextStyle(color: Colors.white),),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>registerPage3()));
                    }
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }


}
