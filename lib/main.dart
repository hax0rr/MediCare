import 'package:flutter/material.dart';
import 'package:medicare/dashboard.dart';
import 'package:medicare/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(new MyApp());
FirebaseUser currUser;
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: FutureBuilder(
        future: FirebaseAuth.instance.currentUser(),
        builder: (BuildContext context,AsyncSnapshot snapshot){
          if(snapshot.hasData){
            if(snapshot.data==null)
              return new LoginPage();
            else
              return new DashboardPage();
          }
          return new CircularProgressIndicator();
          
        }), 
       
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {

  // final DocumentReference documentReference = Firestore.instance.document("users/details");

 final _emailEditController=new TextEditingController();
 final _passwordEditController=new TextEditingController(); 


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blueGrey,
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
              
              new Image(
                image: new AssetImage("assets/medical_flat.jpg"),
                width: 120.0, height: 120.0,

              ),
              
              new Form(
                child: Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(
                          color: Colors.teal, fontSize: 20.0
                        )
                      ),
                    ),
                    child: Container(
                        padding: const EdgeInsets.only(bottom: 40.0, left: 40.0, right: 40.0, top: 40.0),
                        
                        child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,

                      children: <Widget>[
                        new TextFormField(
                          controller: _emailEditController,
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
                          controller: _passwordEditController,
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
                          padding: const EdgeInsets.only(top: 20.0),
                        ),
                        
                        new RaisedButton(
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(32.0)),
                          padding: const EdgeInsets.only(left:40.0,right: 40.0, top: 12.0, bottom: 12.0),
                          color: Colors.teal,
                          textColor: Colors.white,
                          
                          
                          child: new Text(
                            "Login"
                          ),
                          // onPressed: _add,
                          onPressed: (){
                            FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailEditController.text.trim(),password:_passwordEditController.text.trim()).then((onValue){
                              if(onValue!=null){
                                Navigator.push(context,
                                 MaterialPageRoute(builder: (context) => DashboardPage()));  
                              }
                            });
                            
                          },
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                        ),
                        new OutlineButton(
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(32.0)),
                          color: Colors.transparent,
                          padding: const EdgeInsets.only(left:40.0,right: 40.0, top: 12.0, bottom: 12.0),
                          textColor: Colors.teal,
                          highlightColor:Colors.white,
                          borderSide: BorderSide(color: Colors.teal, width: 2.0),
                          child: new Text(
                            "Sign Up"
                          ),
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignupPage()));
                          }
                        )
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