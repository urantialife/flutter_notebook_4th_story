import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalBuyerAssistance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => PBAMainPage(),
      },
    );
  }
}

class PBAMainPage extends StatefulWidget {
  @override
  _PBAMainPageState createState() => _PBAMainPageState();
}

class _PBAMainPageState extends State<PBAMainPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 16),
                height: deviceHeight / 4.5,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Good day, Dreamwalker!",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(16)),
                                child: Center(
                                  child: Text(
                                    "458 pts",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 8, bottom: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search item",
                              hintStyle: TextStyle(color: Colors.grey[400])),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  height: deviceHeight / 3.5,
                  color: Colors.red,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Popular"),
                              Text(
                                "View All",
                                style: TextStyle(fontSize: 13, color: Colors.greenAccent),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 160,
                              margin: EdgeInsets.only(right: 16),
                              decoration: BoxDecoration(
                                color: Colors.blue
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  height: deviceHeight / 2,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }

  Widget _buildBottomAppBar() {
    return BottomAppBar(
      elevation: 5,
      child: Container(
        height: 64,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: pageIndex == 0 ? Colors.teal : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.refresh,
                color: pageIndex == 1 ? Colors.teal : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: pageIndex == 2 ? Colors.teal : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person_outline,
                color: pageIndex == 3 ? Colors.teal : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
