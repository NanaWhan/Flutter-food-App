import 'package:flutter/material.dart';
import 'package:test_app/ui/cc.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginState ();
    
  }
}

class LoginState extends State<Login> {
  final TextEditingController _usercontroller = new TextEditingController();
  final TextEditingController _passwordcontroller = new TextEditingController();
  String _welcomstring = "";

  void erase() {
    setState(() {
      _usercontroller.clear();
      _passwordcontroller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Login"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),

        backgroundColor: Colors.blueGrey,
        body: Container(
            alignment: Alignment.topCenter,
            // ignore: unnecessary_new
            child: new ListView(
              children: <Widget>[
                //image/profile
                new Image.asset(
                  'images/face.png',
                  width: 90.0,
                  height: 90.0,

                ),
                //form
                Container(
                  height: 180.0,
                  width: 380.0,
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      new TextField(
                        controller: _usercontroller,
                        decoration: new InputDecoration(
                            hintText: 'Email/Username',
                            icon: new Icon(Icons.person)


                        ),
                      ),
                      new TextField(
                        controller: _passwordcontroller,
                        decoration: new InputDecoration(
                          hintText: 'Password',
                          icon: new Icon(Icons.lock),
                        ),
                        obscureText: true,
                      ),
                      new Padding(padding: new EdgeInsets.all(10.5)),
                      new Center(
                        child: new Row(
                          children: <Widget>[
                            new Container(
                              margin: const EdgeInsets.only(left: 38.0),
                              child: new RaisedButton(
                                onPressed:() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()), );
                                },
                                color: Colors.redAccent,
                                child: new Text("Sign In/Login",
                                    style: new TextStyle(
                                        color: Colors.white, fontSize: 16.9)),
                              ),
                            ),
                            new Container(
                              margin: const EdgeInsets.only(left: 120.0),
                              child: new RaisedButton(
                                onPressed: erase,
                                color: Colors.redAccent,
                                child: new Text("Clear",
                                    style: new TextStyle(
                                        color: Colors.white, fontSize: 16.9)),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),

                  ],

                ),

            )

        );



  }

  void showWelcome() {
    setState(() {
      if (_usercontroller.text.isNotEmpty
          && _passwordcontroller.text.isNotEmpty) {
        _welcomstring = _usercontroller.text;
      } else
        _welcomstring = "Nothing!";
    });
  }

}
