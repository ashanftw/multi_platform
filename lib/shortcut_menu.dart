import 'dart:ui';

import 'package:flutter/material.dart';

class ShortcutMenu extends StatefulWidget {
  @override
  _ShortcutMenuState createState() => _ShortcutMenuState();
}

class _ShortcutMenuState extends State<ShortcutMenu> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return new BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
      child: Container(
        width: width,
        height: height,
        color: Colors.white.withOpacity(0.6),
        child: new Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: new Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              new ListView(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text('Transactions'),
                      new FloatingActionButton(
                        mini: true,
                        child: Icon(Icons.radio),
                        onPressed: () {},
                      )
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text('Transactions'),
                      new FloatingActionButton(
                        mini: true,
                        child: Icon(Icons.radio),
                        onPressed: () {},
                      )
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text('Transactions'),
                      new FloatingActionButton(
                        mini: true,
                        child: Icon(Icons.radio),
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(
                  mini: true,
                  heroTag: 'shortcut_menu_button',
                  child: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
