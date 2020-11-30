import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_app/chart.dart';

class UiOne extends StatefulWidget {
  @override
  _UiOneState createState() => _UiOneState();
}

class _UiOneState extends State<UiOne> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: new Icon(
          Icons.arrow_back_ios,
          color: Color(0XFF5d1451),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Icon(
            FontAwesomeIcons.bell,
            color: Color(0XFF5d1451),
          ),
          new SizedBox(
            width: 10,
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            width: width,
            height: (width / 1.2),
            child: new Stack(
              children: <Widget>[
                new Container(
                  width: width,
                  height: width / 3,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1.0, 5.0),
                          blurRadius: 0.2,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Text(
                        'Total Profit',
                        style: new TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      new Text("\$ 1,200.00",
                          style: new TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Align(
                      alignment: Alignment.center,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                            width: width - 50, child: LineChartSample1()),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: new Text(
              'Best selling items',
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                width: 100,
                height: 100,
                child: new Card(
                    elevation: 10,
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Text(
                            'Nike Air Max 217',
                            style: new TextStyle(fontSize: 8),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Image.network(
                            'https://cdn.thesolesupplier.co.uk/2019/02/Nike-Air-Max-270-White-Teal-C12451-100.png')
                      ],
                    )),
              ),
              new Container(
                width: 100,
                height: 100,
                child: new Card(
                    elevation: 10,
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Text(
                            'Nike jordan 11',
                            style: new TextStyle(fontSize: 8),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Image.network(
                            'https://www.fourjay.org/myphoto/f/63/639396_jordan-shoes-png.png')
                      ],
                    )),
              ),
              new Container(
                width: 100,
                height: 100,
                child: new Card(
                    elevation: 10,
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Text(
                            'TIMBERLAND',
                            style: new TextStyle(fontSize: 8),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_Q8BF2JKBcJSvjnnSXBDQ8SIFP2vFdOEwo0wi5eI5Xg2Jj9ox&s')
                      ],
                    )),
              ),
              new Container(
                width: 100,
                height: 100,
                child: new Card(
                    elevation: 10,
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: new Text(
                            'Adidas SoleCourt',
                            style: new TextStyle(fontSize: 8),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIt-uQQtWjMcMeoprmYwDYwCGWBMX3xZ2wRBd4SFaXKsavIkQ1&s',
                        )
                      ],
                    )),
              )
            ],
          ),
          new SizedBox(
            height: 20,
          ),
          new Container(
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new ListTile(
                    leading: Icon(
                      FontAwesomeIcons.chartBar,
                      color: Color(0XFF14868c),
                    ),
                    title: new Text("Today's Sale"),
                    trailing: new Chip(
                      backgroundColor: Color(0XFF2f416d),
                      label: new Text(
                        '\$ 70.00',
                        style: new TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: Icon(
                      FontAwesomeIcons.shoppingCart,
                      color: Color(0XFF14868c),
                    ),
                    title: new Text("Today's Purchase"),
                    trailing: new Chip(
                      backgroundColor: Color(0XFF2f416d),
                      label: new Text(
                        '\$ 200.00',
                        style: new TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: Icon(
                      FontAwesomeIcons.box,
                      color: Color(0XFF14868c),
                    ),
                    title: new Text("Today's Stock"),
                    trailing: new Chip(
                      backgroundColor: Color(0XFF2f416d),
                      label: new Text(
                        '50',
                        style: new TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: Icon(
                      FontAwesomeIcons.dollarSign,
                      color: Color(0XFF14868c),
                    ),
                    title: new Text("Today's profit"),
                    trailing: new Chip(
                      backgroundColor: Color(0XFF2f416d),
                      label: new Text(
                        '\$ 130.00',
                        style: new TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
