import 'package:denemefitness/RegisterPage5.dart';
import 'package:flutter/material.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:gender_picker/source/enums.dart';

class registerPage4 extends StatefulWidget {
  const registerPage4({Key? key}) : super(key: key);

  String get title => "Register Page";
  @override
  State<registerPage4> createState() => _registerPage4State();
}
class _registerPage4State extends State<registerPage4> {
  @override
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
            padding: const EdgeInsets.all(96.0),
            child: Text("What Is Your Sex",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          ),

         Center(child: _genderWidget(false, false)),

          Padding(
            padding: const EdgeInsets.all(100.0),
            child: SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>registerPage5()));
                },
                child: Text("Next",style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _genderWidget(bool _showOther, bool _alignment) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.all(32.0),
      child: GenderPickerWithImage(onChanged: (Gender? _gender){print(_gender);},
      selectedGender: Gender.Others,
        selectedGenderTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
        unSelectedGenderTextStyle: TextStyle(fontWeight: FontWeight.normal),
        showOtherGender: _showOther,
        verticalAlignedText: _alignment,
        equallyAligned: true,
        size: 64.0,
        animationDuration: Duration(seconds: 1),
        isCircular: true,
        opacityOfGradient: 0.3,
        padding: EdgeInsets.all(8.0),

      ),
  );
}
