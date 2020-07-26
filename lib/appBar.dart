import 'package:flutter/material.dart';

void main() {
  runApp(BaseApp());
}

class BaseApp extends StatelessWidget {
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
                floating: true,
                pinned: true,
                snap: false,
                shape: RoundedRectangleBorder(),
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
                            onPressed: () {},
                            elevation: 10.0,
                            fillColor: Colors.white,
                            child: Icon(
                              Icons.pause,
                              //size: 35.0,
                            ),
                            shape: CircleBorder(),
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 10.0,
                            fillColor: Colors.white,
                            child: Icon(
                              Icons.account_balance,
                              //size: 35.0,
                            ),
                            shape: CircleBorder(),
                          ),
                          RawMaterialButton(
                            onPressed: () {},
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
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('images/20180101_131234.jpg'),
                    radius: 30.0,
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
//                SliverGrid(
//                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                    maxCrossAxisExtent: 200.0,
//                    mainAxisSpacing: 10.0,
//                    crossAxisSpacing: 10.0,
//                    childAspectRatio: 4.0,
//                  ),
//                  delegate: SliverChildBuilderDelegate(
//                    (BuildContext context, int index) {
//                      return Container(
//                        alignment: Alignment.center,
//                        color: Colors.teal[100 * (index % 9)],
//                        child: Text('Grid Item $index'),
//                      );
//                    },
//                    childCount: 20,
//                  ),
//                ),
              SliverFixedExtentList(
                itemExtent: 50.0,
                delegate: SliverChildListDelegate(
                  [
                    Card(
                      color: Colors.teal,
                    ),
                    Card(
                      color: Colors.blue,
                    ),
                    Card(
                      color: Colors.pink,
                    ),
                    Card(
                      color: Colors.amber,
                    ),
                    Card(
                      color: Colors.teal,
                    ),
                    Card(
                      color: Colors.blue,
                    ),
                    Card(
                      color: Colors.pink,
                    ),
                    Card(
                      color: Colors.amber,
                    ),
                    Card(
                      color: Colors.teal,
                    ),
                    Card(
                      color: Colors.blue,
                    ),
                    Card(
                      color: Colors.pink,
                    ),
                    Card(
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//  Widget[] WinnerList() {
//    return (Card(
//
//    ),);
//  }

}
