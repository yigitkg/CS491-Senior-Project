import 'package:flutter/material.dart';



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
 
  int group = 1;//to select only one gender
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
          backgroundColor: Color(0xFF0D47A1), 
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
 
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'LOGO',
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
                      
                    ],
                 ),
                ),

                    Container(
                          
                          height: 40.0,
                          color: Colors.transparent,
                          
                          child: Container(
                            
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.grey[50],
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
                                        color: Colors.blue[900],
                                          fontWeight: FontWeight.bold),
                                )
                                )
                              ],
                            ),
                          ),
                        ),
                      SizedBox(height: 0.0),

                      Container(
 
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'or',
                          style: TextStyle(
                            shadows: [Shadow(
                              blurRadius: 10,
                              color: Colors.black,
                              offset: Offset(5.0,5.0),
                              )
                            ],
                            fontSize: 30.0,fontWeight: FontWeight.bold)
                        ),
                        ),
                      
                    ],
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
                                color: Colors.grey[50],
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
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.bold),
                                )
                                )
                              ],
                            ),
                          ),
                ),
                       
                       
                       Container(
                    padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Username',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                        SizedBox(height: 0.0),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Full Name',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                          obscureText: true,
                        ),
                        SizedBox(height: 5.0),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                        SizedBox(height: 0.0),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                       
                      Container(
                            margin: const EdgeInsets.fromLTRB(2, 15, 50, 00),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                     Text(
                                      'Gender',
                                      style: TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                      ),
                              
                              Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text('Male',style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                      )),
                                
                                Radio(
                                  value: 1, 
                                  groupValue: group, 
                                  onChanged: (T){
                                    print(T);

                                    setState(() {
                                      group = T;
                                    });
                                  }),
                                Text('Female',style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                      )),
                                 Radio(
                                  value: 2, 
                                  groupValue: group, 
                                  onChanged: (T){
                                    print(T);
                                    setState(() {
                                      group = T;
                                    });
                                  })
                                ],
                              ),
                            ],
                          ),
                        ),


                        Container(
                          height: 40.0,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed('/login');//login sayfasının adı gelicek
                            },
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue[900],
                            color: Colors.grey[50],
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          ),
                        ),
                      ],
                       )),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already have an account ?',
                    ),
                    SizedBox(width: 5.0),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.grey[50],
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
bool isValidEmail(String input) {
    final RegExp regex = new RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return regex.hasMatch(input);
  }