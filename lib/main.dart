import 'package:denemefitness/RegisterPage1.dart';
import 'package:denemefitness/RegisterPage2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Landing Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {


  @override
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

              Image.asset("resimler/logo.png"),
              Text("Açıklama"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SignInButtonBuilder(
                  text: 'Sign in with Email',
                  icon: Icons.email,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> registerPage1()));
                  },
                  backgroundColor: Colors.blueGrey[700]!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SignInButton(
                  Buttons.Google,
                  text: "Sign up with Google",
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> registerPage1()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SignInButton(
                  Buttons.Facebook,
                  text: "Sign up with Facebook",
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> registerPage1()));
                  },
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                      child: Text("Kaydolmadan Giriş Yapınız"),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> registerPage2()));
                      },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );

  }
}
