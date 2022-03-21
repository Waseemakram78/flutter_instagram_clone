import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta/InstaScreens/PostData/Post.dart';
import 'viewScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //This is widget for create Post
  Widget _homePost(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 560.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration:
                      BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0, 2),
                        )
                      ]),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 100.0,
                            width: 100.0,
                            image: AssetImage(posts[index].authorImageUrl.toString()),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      posts[index].authorName.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(posts[index].timeAgo.toString()),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz),
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onDoubleTap: () => print('Like post'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ViewPostScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, 5),
                              blurRadius: 6),
                        ],
                        image: DecorationImage(
                          image: AssetImage(posts[index].imageUrl.toString()),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => print('Like Post'),
                                icon: Icon(Icons.favorite_border),
                                iconSize: 30.0,
                              ),
                              Text(
                                '2,515',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => ViewPostScreen()));
                                },
                                icon: Icon(Icons.chat),
                                iconSize: 30.0,
                              ),
                              Text(
                                '350',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () => print('Save file'),
                        icon: Icon(Icons.bookmark_border),
                        iconSize: 30.0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFFEDF0F6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Instagram',
                  style: TextStyle(
                      fontFamily: 'FontsFree-Net-Billabong.ttf',
                      fontSize: 32.0,
                  fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('IGTV');
                      },
                      icon: Icon(
                        Icons.live_tv,
                      ),
                      iconSize: 30.0,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    IconButton(
                      onPressed: () {
                        print('Direct Message');
                      },
                      icon: Icon(
                        Icons.send,
                      ),
                      iconSize: 30.0,
                    )
                  ],
                )
              ],
            ),
          ),
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
                }
                ),
          ),

          //Home Page design
          _homePost(0),
          _homePost(1),
          _homePost(2),
          _homePost(3),

        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0 ,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: ElevatedButton(
                  onPressed: ()=>print('Add images'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(color: Colors.black,width: 3.0),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: Icon(Icons.add,color: Colors.black,size: 30.0,),
                ),
                label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 30.0,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30.0,
                color: Colors.black,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
