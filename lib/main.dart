import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main()=> runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
          primarySwatch:Colors.deepPurple,
      ),
          home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Drawer App"),

        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
      drawer:new Drawer(
        child:new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Unika Mittal"),
                accountEmail: new Text("unikamittal18@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor:Colors.white,
              child:new Text("p"),
            ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white ,
                  child: new  Text(" "),
                )
              ],
    ),
            new ListTile(
              title :new Text("page one"),
              trailing: new Icon(Icons.arrow_upward),
            ),
            new ListTile(
              title :new Text("page two"),
              trailing: new Icon(Icons.arrow_downward),
            ),
            new Divider(),
            new ListTile(
              title :new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap:()=>Navigator.of(context).pop()),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child:new Text("Home Page"),
        ),
      ),
    );
  }
}
