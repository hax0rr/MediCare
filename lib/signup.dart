import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.lightGreenAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/login_bk.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.only(top: 40.0)
              ),
             
              new Image(
                
                image: new AssetImage("assets/medical_flat.jpg"),
                width: 100.0, height: 100.0,

              ),
              
              new Form(
                child: Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(
                          
                          color: Colors.teal, fontSize: 30.0,
                          
                        )
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 40.0, left: 40.0, right: 40.0, top: 20.0),    
                      child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      
                      children: <Widget>[
                      
                        new TextFormField(
                          decoration: new InputDecoration(
                            hintText: "First Name",
                            contentPadding: const EdgeInsets.only(left:40.0, top: 10.0, right: 40.0, bottom: 10.0),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(32.0),
                            )
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        ),

                        new TextFormField(
                          decoration: new InputDecoration(
                            hintText: "Last Name",
                            contentPadding: const EdgeInsets.only(left:40.0, top: 10.0, right: 40.0, bottom: 10.0),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(32.0),
                            )
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        ),


                        new TextFormField(
                          decoration: new InputDecoration(
                            hintText: "Email",
                            contentPadding: const EdgeInsets.only(left:40.0, top: 10.0, right: 40.0, bottom: 10.0),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(32.0),
                            )
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                       
                        new Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        ),

                         new TextFormField(
                          decoration: new InputDecoration(
                            hintText: "Password",
                            contentPadding: const EdgeInsets.only(left:40.0, top: 10.0, right: 40.0, bottom: 10.0),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(32.0),
                            )
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                       
                        new Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                        ),

                        new RaisedButton(
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                          
                          padding: const EdgeInsets.only(left:40.0,right: 40.0, top: 12.0, bottom: 12.0),
                          textColor: Colors.white,
                          color: Colors.teal,
                          
                          child: new Text(
                            "Sign Up"
                          ),
                          onPressed: (){}
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(bottom: 50.0),
                        ),
                       
                      ],
                  ),
                    ),
                ),
              ),
            ]
          ),
        ],
      ),
    );
  }
}
