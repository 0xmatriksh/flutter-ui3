import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: EdgeInsets.all(0),
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal[200],
              toolbarHeight: 50,
              // backgroundColor: Colors.red,
              title: TabBar(
                indicator: UnderlineTabIndicator(
                    insets: EdgeInsets.symmetric(horizontal: 2)),
                tabs: [
                  Tab(
                    text: "About",
                  ),
                  Tab(
                    text: "World",
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [myAbout(), Text('World')],
            ),
          )),
    );
  }

  Widget myAbout() {
    return Container(
      color: Colors.grey[300],
      child: Column(children: [
        Container(
          // padding: ,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Column(
            children: [
              buildDetails(
                  Icon(Icons.mobile_friendly), 'Mobile', '+91 6584839202'),
              buildDetails(Icon(Icons.phone_enabled), 'Work', '+91 9946592402'),
              buildDetails(Icon(Icons.email), 'Email', 'kishmat@gmail.com'),
            ],
          ),
        ),
        Card(
          child: ListTile(title: Text('Status'), subtitle: Text('Available')),
        )
      ]),
    );
  }

  Widget buildDetails(Icon iconGiven, String titleGiven, String subtitleGiven) {
    return ListTile(
      leading: iconGiven,
      title: Text(
        '$titleGiven',
        style: TextStyle(color: Colors.green[700]),
      ),
      subtitle: Text('$subtitleGiven'),
    );
  }
}
