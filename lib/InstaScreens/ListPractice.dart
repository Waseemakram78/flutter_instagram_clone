import 'package:flutter/material.dart';
import 'package:insta/InstaScreens/PostData/Post.dart';

class MyImages extends StatefulWidget {
  const MyImages({Key? key}) : super(key: key);

  @override
  _MyImagesState createState() => _MyImagesState();
}

class _MyImagesState extends State<MyImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Design of the application
      appBar: AppBar(
          title: Text("List Images"), backgroundColor: Color(0xFF045434)),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100.0,
              child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return SizedBox(
                        width: 10.0,
                      );
                    }
                    return Container(
                      margin: EdgeInsets.all(10.0),
                      width: 50.0,
                      height: 50.0,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        )
                      ]),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            image: AssetImage(stories[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      /*Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),

            // Image.network(src)
            child: Image.network(
                'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                'https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          )
        ]),
      ),*/
    );
  }
}
