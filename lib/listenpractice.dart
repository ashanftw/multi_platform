import 'package:flutter/material.dart';
import 'models/listen_practise_model.dart';
import 'package:provider/provider.dart';

class ListenPractise extends StatelessWidget {
  final ListenModel listenModel = new ListenModel();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListenModel>(
      child: SubClass(),
      builder: (contxt) {
        return listenModel;
      },
    );
  }
}

class SubClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('hello'),
      ),
      body: ListView(
        children: <Widget>[
          new Align(
            alignment: Alignment.center,
            child: new Hero(
              tag: 'logo',
              child: new Container(
                width: 250,
                height: 250,
                color: Colors.red,
              ),
            ),
          ),
          new Text(Provider.of<ListenModel>(context).value),
          new TextField(
            onChanged: (val) {
              Provider.of<ListenModel>(context).changeValue(val);
            },
          )
        ],
      ),
    );
  }
}
