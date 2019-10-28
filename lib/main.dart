import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(Homework());
class Homework extends StatefulWidget {
  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
        appBar: AppBar(
          title: Text("Basic Mobile Apps"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.group, color: Colors.white,),
              onPressed: (){},
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.favorite),
                
              ),
              Tab(
                icon: Icon(Icons.share),
              ),
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Image.network("https://www.pixelstalk.net/wp-content/uploads/2016/08/Cute-Girl-Images-For-Desktop.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Image.network("https://images.pexels.com/photos/1700878/pexels-photo-1700878.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Image.network("https://i.pinimg.com/474x/5e/e0/39/5ee0393a57800d95f7643f433e91ea1f.jpg"),
            Image.network("https://www.channeleffect.com/ImageHosting/viewImage?CompanyId=22476&FilePath=Images/16013",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.pixelstalk.net/wp-content/uploads/2016/08/Cute-Girl-Images-For-Desktop.jpg"),
                    radius: 70.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home), 
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.person), 
              ),
              ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.call), 
              ),
            ],
          ),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          overlayColor: Colors.pink[800],
          overlayOpacity: 0.3,
          children: [
            SpeedDialChild(
              label: "Message",
              labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
              labelBackgroundColor: Colors.orange,
              child: Icon(Icons.message, color:Colors.white),
              backgroundColor: Colors.orange,
            ),
            SpeedDialChild(
              label: "Sharing",
              labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
              labelBackgroundColor: Colors.red,
              child: Icon(Icons.share, color:Colors.white),
              backgroundColor: Colors.red,
            ),
            SpeedDialChild(
              label: "Delete everything in mind",
              labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
              labelBackgroundColor: Colors.green,
              child: Icon(Icons.delete_forever, color:Colors.white),
              backgroundColor: Colors.green,
            ),
            SpeedDialChild(
              label: "Love you",
              labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
              labelBackgroundColor: Colors.blue,
              child: Icon(Icons.favorite, color:Colors.white),
              backgroundColor: Colors.blue,
            ),
            SpeedDialChild(
              label: "Friends",
              labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
              labelBackgroundColor: Colors.redAccent,
              child: Icon(Icons.person, color:Colors.white),
              backgroundColor: Colors.redAccent,
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(icon: Icon(Icons.home, color: Colors.green), 
                  onPressed: (){},
                ),
                IconButton(icon: Icon(Icons.thumb_up, color: Colors.red),
                  onPressed: (){},
                ),
                IconButton(icon: Icon(Icons.thumb_down, color:Colors.red),
                  onPressed: (){},
                ),
                IconButton(icon: Icon(Icons.share, color: Colors.blue,),
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ),
      ),
          
        ),
      );
  }
}
