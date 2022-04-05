import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  List<Tab> myTab = [
    Tab(
      text: "My Music",
      icon: Icon(Icons.audiotrack),
    ),
    Tab(
      text: "My Playlist",
      icon: Icon(Icons.add_comment),
    ),
    Tab(
      text: "Trending",
      icon: Icon(Icons.auto_stories),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('AppBar MP3'),
            centerTitle: true,
            bottom: TabBar(
              //labelColor: Colors.grey,
              tabs: myTab,
              indicatorColor: Colors.orangeAccent,
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: new Text("Hello World"),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: ListTile(
                  title: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "data3",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
