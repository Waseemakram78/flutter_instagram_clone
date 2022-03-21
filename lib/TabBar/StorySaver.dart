import 'package:flutter/material.dart';

class StoryApp extends StatefulWidget {
  const StoryApp({Key? key}) : super(key: key);

  @override
  _StoryAppState createState() => _StoryAppState();
}

class _StoryAppState extends State<StoryApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Row(

              children: [
                IconButton(
                  icon: Icon(Icons.search),
                onPressed: (){
                    //do something.
                },),
              ],
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.live_tv),
              ),
              Tab(
                icon: Icon(Icons.favorite),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Text("It's live tv."),
          ),
          Center(
            child: Text("It's the Favourite list."),
          ),

        ]),
      ),
    );
  }
}
