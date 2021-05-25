import 'package:flutter/material.dart';
// import 'package:ui_layout2/pages/tabbar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.teal[200],
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
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
                      Text('Photos'),
                      Text('160'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Photos'),
                      Text('160'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Photos'),
                      Text('160'),
                    ],
                  ),
                ],
              ),
              // MyTabs(),
            ],
          ),
        ),
      ),
    );
  }
}
