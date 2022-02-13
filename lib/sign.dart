import 'package:flutter/material.dart';

import 'homepage.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isHiddenPassword = true; // call to close icon in Password
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.grey, Colors.blue ])),
          child: ListView(
            children: [
              SizedBox(height: 200),
              Container(
                margin: const EdgeInsets.all(0),
                alignment: Alignment.center,
                height: 50,
                child: Text(
                  " Sign In ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              /*
          SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 40),
                height: 50,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,
                        image: DecorationImage(
                          alignment: Alignment.centerLeft,
                          
                          image: AssetImage("asset/refer.png")
                          )
                  ),
                  //child: Column(
                  //  children: [
                      
                   //   TextField(
                   //   decoration: InputDecoration(
                   //     hintText: "Enter your name ",
                   //     labelText: "Name ",
                   //     labelStyle: TextStyle(
                   //     fontStyle: FontStyle.italic,
                   //      color: Colors.brown,
                   //     )
                        
                     // ),

                    //)
                    //],
                  //)
                ), 
              ],
            ),
           //SizedBox(height: 20),
          ),
          SizedBox(height: 20),
                 Container(
                margin: const EdgeInsets.only(left: 40),
                height: 50,  
                child: Row(
                  
                  children: [
                    //TextField(
                    //  decoration: InputDecoration(
                    //    hintText: "Enter your name ",
                    //    labelText: "Name ",
                    //    labelStyle: TextStyle(
                    //      fontStyle: FontStyle.italic,
                    //      color: Colors.brown,
                    //    )
                    //  ),
                    //)
                    Container(
                      
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.white,
                          image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: AssetImage("asset/padlock.png")
                            
                            )
                      ),
                    )
                  ],
                ),
              ),
              */

              SizedBox(height: 40),
              Container(
                //margin: const EdgeInsets.only(left: 40),
                //height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Enter your name .......",
                      labelStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.brown)),
                ),
              ),
              SizedBox(height: 40),
              Container(
                //margin: const EdgeInsets.only(left: 40),
                //height: 50,
                child: TextField(
                  obscureText: isHiddenPassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.security),
                      hintText: "Enter your Password ",
                      suffixIcon: InkWell(
                        onTap: _togglePasswordView ,
                        child: Icon(
                          Icons.visibility
                          ),
                      ),
                      labelStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.brown)),
                ),
              ),
              SizedBox(height: 40),

              
                /*
                margin: const EdgeInsets.only(left: 30, right: 30),
                color: Colors.white,
                child: TextButton(
                  
                  onPressed: () {  },
                child: Text('Login'
                ),),
                */
              
              
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 30,right: 30),
                    //alignment: Alignment.center,
                    height: 40,
                    //width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        "Login ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

void _togglePasswordView (){ // to viwe password (one classs)
  setState((){
    isHiddenPassword = !isHiddenPassword;
  });
}
}