import 'package:flutter/material.dart';
import 'package:test_app/anim_trans_page.dart';

class AnimationPractice extends StatefulWidget {
  @override
  _AnimationPracticeState createState() => _AnimationPracticeState();
}

class _AnimationPracticeState extends State<AnimationPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new Material(
              elevation: 5,
              color: Colors.blue,
              borderRadius: BorderRadius.circular(100),
              child: FlatButton(
                child: new Text('Login'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return AnimTransActionPage();
                  }));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
