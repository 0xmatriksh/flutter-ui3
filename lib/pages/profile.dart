import 'package:flutter/material.dart';
import 'package:ui_layout2/pages/tabbar.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.teal[200],
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/bitcoin.png'),
                        radius: 45,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0.0),
                        title: Text('Kishmat Bhattarai'),
                        subtitle: Text('Student and Developer'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Photos',
                                  style: TextStyle(color: Colors.blue[900])),
                              Text('160',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Followers',
                                  style: TextStyle(color: Colors.blue[900])),
                              Text('1543',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Photos',
                                  style: TextStyle(color: Colors.blue[900])),
                              Text('250',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                      // SizedBox(height: 30),
                    ],
                  ),
                ),
                MyTabs()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
