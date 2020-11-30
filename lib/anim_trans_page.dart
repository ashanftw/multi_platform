import 'package:flutter/material.dart';
import 'package:test_app/details_page.dart';

class AnimTransActionPage extends StatefulWidget {
  @override
  _AnimTransActionPageState createState() => _AnimTransActionPageState();
}

class _AnimTransActionPageState extends State<AnimTransActionPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body: new ListView(
          children: <Widget>[
            new Container(
              width: width,
              height: height / 2,
              child: new Column(
                children: <Widget>[
                  new TextField(),
                  new TextField(),
                  new TextField()
                ],
              ),
            ),
            Container(
                width: width,
                height: height / 2,
                child: new Column(
                  children: <Widget>[
                    Center(
                      // width: width,
                      // height: width,
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(top: controller.value * 10),
                          child: FloatingActionButton(
                            heroTag: 'asdas',
                            child: Icon(Icons.more_horiz),
                            backgroundColor: Color(0XFFF77FBE),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return DetailPage();
                              }));
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}
