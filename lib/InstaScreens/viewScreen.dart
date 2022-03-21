import 'package:flutter/material.dart';
import 'package:insta/InstaScreens/PostData/Comment.dart';
class ViewPostScreen extends StatefulWidget {
  @override
  _ViewPostScreenState createState() => _ViewPostScreenState();
}

class _ViewPostScreenState extends State<ViewPostScreen> {



  // ignore: non_constant_identifier_names
  Widget Build_Comment(int index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
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
                image: AssetImage(comments[index].authorImageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(
          comments[index].authorName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          comments[index].text,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        trailing: IconButton(
          onPressed: () => print('Like comment'),
          icon: Icon(Icons.favorite_border),
          color: Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: SafeArea(
          child: Column(children: <Widget>[
            Padding(
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
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: Icon(Icons.arrow_back),
                                iconSize: 30.0,
                                color: Colors.black,
                              ),
                              Opacity(
                                opacity: 0.0,
                              ),
                              Expanded(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 8.0,
                                  child: ListTile(
                                    leading: Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
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
                                            image: AssetImage('images/1.jpeg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                      "Waseem Akram",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text('6 min'),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_horiz),
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onDoubleTap: () => print('Like post'),
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
                                  image: AssetImage('images/1.jpeg'),
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
                                        print('Like Post');
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
                                onPressed: () => print(''),
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
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: 600.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    )),
                child: Column(
                  children: [
                    Build_Comment(0),
                    Build_Comment(1),
                    Build_Comment(2),
                    Build_Comment(3),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0.0,-1 * MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0,
            ),
              topRight: Radius.circular(30.0),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black12,
              offset: Offset(0,-2),
              blurRadius: 6.0,
              ),
            ],
              color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: Colors.grey),
            ),
                contentPadding: EdgeInsets.all(20.0),
                border: InputBorder.none,
                hintText: 'Add a comment',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.all(2.0),
                    width: 48.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: CircleAvatar(
                      child: ClipOval(
                        child: Image(
                          height: 48.0,
                          width: 48.0,
                          image: AssetImage('images/1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                suffixIcon:Container(
                  margin: EdgeInsets.only(right: 4.0),
                  width: 70.0,
                  child: ElevatedButton(
                    onPressed: (){},

                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Colors.grey,
                    ),
                    child: Icon(Icons.send,size: 25.0,
                    color: Colors.white,),
                  )
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
