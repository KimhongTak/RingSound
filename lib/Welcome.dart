import 'package:flutter/material.dart';
import 'package:newapp/sign.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      floatingActionButton: FloatingActionButton(onPressed:  (){
        Navigator.push(context, new MaterialPageRoute(
          builder: (context) => SignIn()
        ));
      },),
      */
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.grey , Colors.blue , Colors.grey])
          ),
          margin: const EdgeInsets.all(0),
          child: ListView(
            children: [
              SizedBox(height: 400),
              Container(
                margin: const EdgeInsets.only(left: 40),
                alignment: Alignment.centerLeft,
                height: 50,
                child: Text(
                  "Welcome ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(height: 20),
              
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20 , right: 20),
                  height: 50,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              color: Colors.white,
                             // boxShadow: [
                             //   BoxShadow(
                             //       color: Colors.red,
                              //      blurRadius: 10.0,
                               //     offset: Offset(0.0, 10.0))
                              
                              image: DecorationImage(
                                alignment: Alignment.centerLeft,
                                image: AssetImage("asset/Icon1.png")
                                )   
                             // ]
                              ),
                          child: const Center(
                            
                            child: Text(
                              "Pleasea Sign In ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                              
                            ),
                          
                          ),
                        ),
           
                      ],
                    ),
                  ),
                  
                ),
              ),
              
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                  //color: Colors.black,
                  height: 50,
                  //width: 40,
                  child: Text(
                    " It's easy to sign in now ",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
