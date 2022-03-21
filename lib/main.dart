import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InstaScreens/HomeScreen.dart';
import 'TabBar/StorySaver.dart';
import 'InstaScreens/ListPractice.dart';
/*import 'StoryUI.dart';*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


/*First attempt of UI instagram*/
/*
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: Column(
        children: [
          Text(
            "Instagram",
            style: TextStyle(color: Colors.black, fontSize: 30.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/pic1.jpeg'),
                radius: 30.0,
              ),
              SizedBox(
                width: 7,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/pic2.jpg'),
                radius: 30.0,
              ),
              SizedBox(
                width: 7,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/pic3.jpg'),
                radius: 30.0,
              ),
              SizedBox(
                width: 7,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/pic4.jpg'),
                radius: 30.0,
              ),
              SizedBox(
                width: 7,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/pic5.jpg'),
                radius: 30.0,
              ),
              SizedBox(
                width: 7,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/pic1.jpg'),
                radius: 30.0,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 4,
              ),
              Text(
                'your Story',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'mtesh',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'amaykas',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'emyone',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'whatsup',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                'itx_sash',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/pic1.jpeg'),
                radius: 20.0,
              ),
              SizedBox(width: 7,),
              Text(
                'waseem_786',
                style:
                    TextStyle(color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(width:200,),
              Text('...',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
            ],
          ),SizedBox(height: 10.0,),
          Image.asset('images/makkah.jpg',
          ),
          SizedBox(height: 20.0,),
          Row(
            children: [
              Icon(Icons.favorite),
          SizedBox(width:10,),
          Icon(Icons.add_comment_rounded),
              SizedBox(width:10,),
            Icon(Icons.send),
            SizedBox(width: 290,),
              Icon(Icons.save),

            ],
          ),
          Row(children: [
            SizedBox(height: 6,),
            CircleAvatar(backgroundImage: AssetImage('images/pic1.jpeg',),
            radius: 15.0,),
            CircleAvatar(backgroundImage: AssetImage('images/pic2.jpg'),radius: 10.0,),
          SizedBox(width: 5,),
            Text('Liked by waseem.786 and 14233 others',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ],
          ),
          SizedBox(height: 8,),
          Row(children: [Text('waseem.786',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          SizedBox(width: 4,),
          Text('Drop 💗 for Post and say MashAllah'),],
          ),
        ],
      ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

      BottomNavigationBarItem(
      icon: Icon(Icons.home,color: Colors.black,),
      label: '',

    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.search,color: Colors.black,),
    label: '',

    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.add_box_sharp,color: Colors.black,),
    label: '',
    ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Colors.black,),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.black,),
            label: '',

          ),
      ],
      ),
    );
  }
}*/
