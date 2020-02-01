import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campaign Creator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Campaign Creator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final oldPriceController = TextEditingController();
  final newPriceController = TextEditingController();
  final durationController = TextEditingController();
  Future<File> fileimage;

  String dropdownValue = 'Permanent Campaign';
  bool selection = true;

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredContent = contentController.text;
    final enteredOldPrice = double.parse(oldPriceController.text);
    final enteredNewPrice = double.parse(newPriceController.text);
    var enteredDuration;

    if (dropdownValue == 'Permanent Campaign') {
      enteredDuration = 0.0;
      if (enteredTitle.isEmpty ||
          enteredContent.isEmpty ||
          enteredOldPrice <= 0 ||
          enteredNewPrice <= 0) {
        return;
      }
    }

    if (dropdownValue == 'Momentarily Campaign') {
      enteredDuration = double.parse(durationController.text);
      if (enteredTitle.isEmpty ||
          enteredContent.isEmpty ||
          enteredOldPrice <= 0 ||
          enteredNewPrice <= 0 ||
          enteredDuration <= 0) {
        return;
      }
    }

    print('Title: ${enteredTitle}');
    print('Content: ${enteredContent}');
    print('Old Price: ${enteredOldPrice}');
    print('New Price: ${enteredNewPrice}');
    print('Selection: ${dropdownValue}');
    print('Duration: ${enteredDuration} hours');
    print('image uploaded');
    //Navigator.of(context).pop();
    bool isPermanent;
    if (dropdownValue == 'Permanent Campaign') {
      isPermanent = true;
    } else {
      isPermanent = false;
    }

    Firestore.instance.collection('campaigns').document().setData({
      'title': enteredTitle,
      'content': enteredContent,
      'oldPrice': enteredOldPrice,
      'newPrice': enteredNewPrice,
      'isPermanent': isPermanent,
      'duration': enteredDuration
    });
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

/*   Widget pic(){
    return FutureBuilder<File>(
      future: fileimage,
      builder: (BuildContext context, AsyncSnapshot<File> s){
        if(s.connectionState == ConnectionState.done && s.data != null){
          return Image.file(
            s.data,
            height: 200.0,
            width: 200.0,
          );
        }
        else if(s.error != null){
          return Text('ERROR!');
        }
        else{
          return Text('No image selected!');
        }
      },
    );
  }

  pickimagefromgalery(ImageSource src){
    setState(() {
      fileimage = ImagePicker.pickImage(source: src);
    });
  }
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 0,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Campaign Name'),
                      controller: titleController,
                      onSubmitted: (_) => submitData(),
                    ),
                    TextField(
                      decoration:
                          InputDecoration(labelText: 'Campaign Content'),
                      controller: contentController,
                      onSubmitted: (_) => submitData(),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Old Price'),
                      controller: oldPriceController,
                      onSubmitted: (_) => submitData(),
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'New Price'),
                      controller: newPriceController,
                      onSubmitted: (_) => submitData(),
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment(0.0, 0.0),
                      /*decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.8, style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                      ), */
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 35,
                        elevation: 16,
                        style: TextStyle(color: Colors.black87),
                        underline: Container(
                          height: 2,
                          color: Colors.blue[200],
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                            if (dropdownValue == 'Permanent Campaign') {
                              selection = true;
                            }
                            if (dropdownValue == 'Momentarily Campaign') {
                              selection = false;
                            }
                          });
                        },
                        items: <String>[
                          'Permanent Campaign',
                          'Momentarily Campaign'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    selection
                        ? Text('')
                        : TextField(
                            decoration:
                                InputDecoration(labelText: 'Duration(hours)'),
                            controller: durationController,
                            keyboardType: TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                            onSubmitted: (_) => submitData(),
                          ),
/*                           pic(),
                          RaisedButton(
                            child: Text('select image'),
                            onPressed: () {
                              pickimagefromgalery(ImageSource.gallery);
                            },
                          ), */
                    FlatButton(
                      child: Text(
                        'CREATE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      textColor: Colors.blueAccent,
                      onPressed: submitData,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.format_list_bulleted,
            ),
            title: Text('My Campaigns'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.extension,
            ),
            title: Text('Generator'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.done_all,
            ),
            title: Text('Confirmation'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}
