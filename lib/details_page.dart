import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'asdas',
      child: Scaffold(
        backgroundColor: Color(0XFFF77FBE),
        body: new ListView(
          children: <Widget>[
            new SizedBox(
              height: 80,
            ),
            new Text(
              'Hello Ashan\nWelcome to the real world,',
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            SizedBox(
              width: 250.0,
              child: FadeAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  text: ["do IT!", "do it RIGHT!!", "do it RIGHT NOW!!!"],
                  textStyle:
                      TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                  alignment: AlignmentDirectional.topStart),
            ),
          ],
        ),
      ),
    );
  }
}
