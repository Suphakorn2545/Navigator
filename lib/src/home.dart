import 'package:flutter/material.dart';
import 'package:flutter_login/src/login.dart';
import 'package:flutter_login/src/signup.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 20),
                child: Text(
                    "WELCOME",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,left: 20,bottom: 20),
                child: Text(
                  "BACK !",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Image.asset("assets/images/logo.png"),
              Padding(
                padding: const EdgeInsets.only(bottom: 5,top: 20),
                child: SizedBox(
                  width: 500,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text("LOGIN",style: TextStyle(fontSize: 20),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context){
                            return LoginPage(title: 'page');
                          })
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 500,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text("SIGN UP",style: TextStyle(fontSize: 20),),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context){
                            return RegisterPage(title: 'page1');
                        })
                      );
                    },
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}
