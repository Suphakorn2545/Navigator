import 'package:flutter/material.dart';
import 'package:flutter_login/page/reportloginpage.dart';
import 'package:flutter_login/src/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30,bottom: 10),
              child: Text("LOGIN",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,bottom: 50),
              child: Text(
                "Login to continue.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
                child: Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  width: 350,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(29)),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,color: Colors.black,),
                      hintText: "Email",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  width: 350,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(29)),
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock,color: Colors.black),
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90,top: 20),
              child: SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => ReportLoginPage(
                            email: email.text,
                            password: password.text)));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text("Login",style: TextStyle(fontSize: 20),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an Account ? ",
                    style: TextStyle(color: Colors.black),),
                  GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return RegisterPage(title: 'page2');
                        })
                      );
                    },
                    child: Text("Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
