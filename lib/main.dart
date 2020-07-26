import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

void main() {
  runApp(BaseApp());
}

class BaseApp extends StatefulWidget {
  @override
  _BaseAppState createState() => _BaseAppState();
}

class _BaseAppState extends State<BaseApp> {
  var num_current_Page = 1;
  SliverStickyHeader current_page = rankingPage();

  void showPage(int num) {
    setState(() {
      num_current_Page = num;
      switch (num) {
        case 1:
          current_page = rankingPage();
          break;
        case 2:
          current_page = dataReportPage();
          break;
        case 3:
          // TODO : Shop Page
          print('Not yet done');
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //App bar with floating: true, pinned: true, snap: false:
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: false,
                pinned: false,
                snap: false,
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                backgroundColor: Colors.yellow,
                title: Text(
                  'My Rate',
                  style: TextStyle(
                      fontSize: 25.0, letterSpacing: 2.0, color: Colors.black),
                ),
                titleSpacing: 50.0,
                expandedHeight: 250.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      Center(
                        child: Card(
                            color: Colors.black,
                            elevation: 20.0,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      0.0, 10.0, 50.0, 10.0),
                                  child: Text(
                                    'You Have',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  '300 Points',
                                  style: TextStyle(
                                    letterSpacing: 2.0,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      100.0, 10.0, 10.0, 10.0),
                                  child: Text(
                                    'Level 11',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RawMaterialButton(
                            onPressed: () {
                              showPage(1);
                            },
                            elevation: 10.0,
                            fillColor: Colors.white,
                            child: Icon(
                              CupertinoIcons.eye_solid,
                              //size: 35.0,
                            ),
                            shape: CircleBorder(),
                          ),
                          RawMaterialButton(
                            onPressed: () {
                              showPage(2);
                            },
                            elevation: 10.0,
                            fillColor: Colors.white,
                            child: Icon(
                              Icons.account_balance,
                              //size: 35.0,
                            ),
                            shape: CircleBorder(),
                          ),
                          RawMaterialButton(
                            onPressed: () {
                              showPage(3);
                            },
                            elevation: 10.0,
                            fillColor: Colors.white,
                            child: Icon(
                              Icons.place,
                              //size: 35.0,
                            ),
                            shape: CircleBorder(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage('images/20180101_131234.jpg'),
                      radius: 30.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notifications_active,
                    ),
                    tooltip: 'New Notification!',
                    color: Colors.red,
                    iconSize: 40.0,
                    onPressed: () {
                      print('Notification button is pressed');
                    },
                  ),
                ],
              ),
              current_page,
            ],
          ),
        ),
      ),
    );
  }

  static SliverStickyHeader rankingPage() {
    return (SliverStickyHeader(
      header: Container(
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: Colors.white,
        ),
        //padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.center,
        child: Center(
          child: Text(
            'Ranking',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      sliver: SliverList(
        //itemExtent: 100.0,
        delegate: SliverChildListDelegate(
          [
            Card(
              color: Colors.grey,
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/20180101_131234.jpg'),
                  //radius: 10.0,
                ),
                title: Text('Abdelhak OUCHAR'),
                subtitle: Text('president'),
                trailing: Text('300pts'),
              ),
            ),
            Card(
              color: Colors.grey,
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  //backgroundImage: AssetImage('images/20180101_131234.jpg'),
                  //radius: 10.0,
                ),
                title: Text('Abdelhak OUCHAR'),
                subtitle: Text('president'),
                trailing: Text('300pts'),
              ),
            ),
            Card(
              color: Colors.grey,
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/20180101_131234.jpg'),
                  //radius: 10.0,
                ),
                title: Text('Abdelhak OUCHAR'),
                subtitle: Text('president'),
                trailing: Text('300pts'),
              ),
            ),
            Card(
              color: Colors.grey,
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/20180101_131234.jpg'),
                  //radius: 10.0,
                ),
                title: Text('MEZDOUR LINA'),
                subtitle: Text('Ghostly Member'),
                trailing: Text('300pts'),
              ),
            ),
            Card(
              color: Colors.grey,
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  //backgroundImage: AssetImage('images/20180101_131234.jpg'),
                  //radius: 10.0,
                ),
                title: Text('Abdelhak OUCHAR'),
                subtitle: Text('president'),
                trailing: Text('300pts'),
              ),
            ),
            Card(
              color: Colors.grey,
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/20180101_131234.jpg'),
                  //radius: 10.0,
                ),
                title: Text('Abdelhak OUCHAR'),
                subtitle: Text('president'),
                trailing: Text('300pts'),
              ),
            ),
            Card(
              color: Colors.grey,
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/20180101_131234.jpg'),
                  //radius: 10.0,
                ),
                title: Text('MEZDOUR LINA'),
                subtitle: Text('Ghostly Member'),
                trailing: Text('300pts'),
              ),
            ),
            Card(
              color: Colors.grey,
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/20180101_131234.jpg'),
                  //radius: 10.0,
                ),
                title: Text('MEZDOUR LINA'),
                subtitle: Text('Ghostly Member'),
                trailing: Text('300pts'),
              ),
            ),
            Card(
              color: Colors.grey,
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/20180101_131234.jpg'),
                  //radius: 10.0,
                ),
                title: Text('MEZDOUR LINA'),
                subtitle: Text('Ghostly Member'),
                trailing: Text('300pts'),
              ),
            ),
//                      Card(
//                        color: Colors.blue,
          ],
        ),
      ),
    ));
  }

  SliverStickyHeader dataReportPage() {
    return (SliverStickyHeader(
      header: Container(
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: Colors.white,
        ),
        //padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.center,
        child: Center(
          child: Text(
            'Data Report',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        color: Colors.yellow[200],
                      ),
                      child: Column(
                        children: <Widget>[
                          Text('All Activities'),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image(
                              image: AssetImage('images/iconStat.png'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '52',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Activities'),
                            ],
                          )
                        ],
                      ),
                    ),
//                    SizedBox(
//                      height: 20.0,
//                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      color: Colors.pink[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('All Activities'),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image(
                              image: AssetImage('images/iconStat.png'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '52',
                                style: TextStyle(
                                  fontSize: 40.0,
                                ),
                              ),
                              Text('Activities'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
//              SizedBox(
//                width: 20.0,
//              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        color: Colors.blue[200],
                      ),
                      child: Column(
                        children: <Widget>[
                          Text('Levels'),
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            //width: 200,
                            //height: 200,
                            child: Center(
                              child: Text('75 %'),
                            ),
                            //constraints: BoxConstraints.,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 5,
                                color: Colors.white,
                              ),
                              shape: BoxShape.circle,
                              //color: Colors.yellow,
                            ),
                          ),
                        ],
                      ),
                    ),
//                    SizedBox(
//                      height: 20.0,
//                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      color: Colors.teal[200],
                      child: Column(
                        children: <Widget>[
                          Text('All Activities'),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image(
                              image: AssetImage('images/iconStat.png'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '52',
                                style: TextStyle(
                                  fontSize: 40.0,
                                ),
                              ),
                              Text('Activities'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    ));
  }
}
