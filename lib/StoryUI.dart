import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'dart:math';

class StoryApp extends StatefulWidget {
  const StoryApp({Key? key}) : super(key: key);

  @override
  _StoryAppState createState() => _StoryAppState();
}
var cardAspectRatio=12.0/16.0;
var widgetAspectRatio= cardAspectRatio* 1.2;

class _StoryAppState extends State<StoryApp> {
  var currentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30.0,
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 30.0,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFff6e6e),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 22.0, vertical: 6.0),
                              child: Text(
                                "Animated",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        "25+ Stories",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment(0.0,0.0),
                      child: Positioned.fill(
                      child:  Container(width: 200.0,height: 200.0,)
                      ),
                    ),
                  ],
                ),
                /* Stack(
                  children: [
                    Positioned.fill(
                      right: 30.0,
                        child: PageView.builder(
                          itemCount: images.length,
                            controller: controller,
                            reverse: true,

                            itemBuilder: (context, index) {
                              return Container();
                            }
                        )
                    )
                  ],
                )*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// ignore: must_be_immutable
class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding=20.0;
  var verticalInset=20.0;
   CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: AspectRatio(aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(
          builder: (context, contraints){/*
            var width=contraints.maxWidth;
            var height=contraints.maxHeight;
            var safeWidth=width-2* padding;
            var safeheight= height-2* padding;
            var heightofPrimaryCard= safeheight;
            var widthofPrimaryCard= heightofPrimaryCard* cardAspectRatio;
            var primaryCardLeft= safeWidth- widthofPrimaryCard;
            var horizontalInset=primaryCardLeft/2;*/
            List<Widget> cardList = [];

            for(int i=0;i<images.length;i++)
              {
                var delta=i- currentPage;
                var isOnRight=delta>0;
                var start=padding * max(isOnRight? 15:1, 0.0);
                var cardItem= Positioned.directional(
                top: padding+ verticalInset* max(-delta,0.0),
                  start: start,
                  textDirection: TextDirection.rtl,
                  child: Container(
                    child: AspectRatio(
                      aspectRatio: cardAspectRatio,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(images[i],fit:BoxFit.cover)
                        ],
                      ),
                    ),
                  ),
                );
                cardList.add(cardItem);
              }
            return Stack(
              children: cardList,
            );
      },
      ),),
    );
  }
}
