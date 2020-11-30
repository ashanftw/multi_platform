import 'package:flutter/material.dart';
import 'package:test_app/animation_pracrise.dart';
import 'package:test_app/chart.dart';
import 'package:test_app/listenpractice.dart';
import 'package:test_app/multiple_image.dart';
import 'package:test_app/shortcut_menu.dart';
import 'package:test_app/ui_one.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: new Hero(
                tag: 'logo',
                child: new Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
            ),
            new RaisedButton(
              child: new Text('ui_one'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => UiOne(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 400),
                  ),
                );
              },
            ),
            new RaisedButton(
              child: new Text('Listeners'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => ListenPractise(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 400),
                  ),
                );
              },
            ),
            new RaisedButton(
              child: new Text('Anim Practise'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => AnimationPractice(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 400),
                  ),
                );
              },
            ),
            new RaisedButton(
              child: new Text('Multiple Img'),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (c, a1, a2) => MultipleImg(),
                    transitionsBuilder: (c, anim, a2, child) =>
                        FadeTransition(opacity: anim, child: child),
                    transitionDuration: Duration(milliseconds: 400),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'shortcut_menu_button',
        child: Icon(Icons.more_vert),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return ShortcutMenu();
              });
        },
      ),
    );
  }
}
