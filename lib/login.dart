import 'package:flutter/material.dart';
import 'signup.dart';
import 'forgetPassword.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(

        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 70.0, 0.0, 0.0),
                        child: Text(
                          'TOPROFFER',
                          style: TextStyle(
                            shadows: [Shadow(
                              blurRadius: 10,
                              color: Colors.black,
                              offset: Offset(5.0,5.0),
                              )
                            ],
                            fontSize: 70.0,fontWeight: FontWeight.bold)
                        ),
                        ),
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 140.0, 0.0, 0.0),
                        child: Text(
                          'Looking for',
                          style: TextStyle(
                            shadows: [Shadow(
                              blurRadius: 10,
                              color: Colors.blue,
                              offset: Offset(2.0,2.0),
                              )
                            ],
                            color: Colors.blue,fontSize: 60.0,fontWeight: FontWeight.bold)
                        ),
                        ),
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 200.0, 0.0, 0.0),
                        child: Text(
                          'Promotions & Campaigns',
                          style: TextStyle(
                            shadows: [Shadow(
                              blurRadius: 10,
                              color: Colors.blue,
                              offset: Offset(2.0,2.0),
                              )
                            ],
                            color: Colors.blue,fontSize: 60.0,fontWeight: FontWeight.bold)
                        ),
                        )
                    ],
                 ),
                ),
                       Container(
                    padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'EMAIL',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'PASSWORD',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green))),
                          obscureText: true,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          alignment: Alignment(1.0, 0.0),
                          padding: EdgeInsets.only(top: 15.0, left: 20.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed('/forgetPassword');
                            },
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0),
                        Container(
                          height: 40.0,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed('/forgetPassword');//login sayfasının adı gelicek
                            },
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue[600],
                            color: Colors.blue[600],
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                          
                          height: 40.0,
                          color: Colors.transparent,
                          
                          child: Container(
                            
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child:
                                      ImageIcon(AssetImage('.dart_tool/assets/facebook.png')),
                                ),
                                SizedBox(width: 10.0),
                                Center(
                                  child: Text('Log in with facebook',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                )
                                )
                              ],
                            ),
                          ),
                        ),
                      SizedBox(height: 5.0),
                      Container(
                          
                          height: 40.0,
                          color: Colors.transparent,
                          
                          child: Container(
                            
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child:
                                      ImageIcon(AssetImage('.dart_tool/assets/gmail.png')),
                                ),
                                SizedBox(width: 10.0),
                                Center(
                                  child: Text('Log in with gmail',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                )
                                )
                              ],
                            ),
                          ),
                        )

                      ],
                       )),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'New to Toproffer ?',
                    ),
                    SizedBox(width: 5.0),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
