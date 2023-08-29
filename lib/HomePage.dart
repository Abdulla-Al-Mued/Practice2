import 'package:flutter/material.dart';

import 'Pages/Friends.dart';
import 'Pages/Gaming.dart';
import 'Pages/Groups.dart';
import 'Pages/Home.dart';
import 'Pages/Menu.dart';
import 'Pages/Notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with SingleTickerProviderStateMixin {
  var index=0;
  late  TabController myControler;
  @override
  void initState() {
    // TODO: implement initState
    myControler = TabController(length: 6, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: AppBar(
            bottom: TabBar(
              controller: myControler,
              //labelColor: Colors.blue,
              onTap: (i){
                setState(() {
                  index=i;
                });
              },
              tabs: [
                Tab(icon: index==0 ? Icon(Icons.home_outlined,color: Colors.blue,):Icon(Icons.home_outlined,color: Colors.blue,)),
                Tab(icon: index==1 ? Icon(Icons.people_outline,color: Colors.blue,):Icon(Icons.people_outline,color: Colors.blue,)),
                Tab(icon: index==2 ? Icon(Icons.groups_outlined,color: Colors.blue,):Icon(Icons.groups_outlined,color: Colors.blue,)),
                Tab(icon: index==3 ? Icon(Icons.sports_esports_outlined,color: Colors.blue,):Icon(Icons.sports_esports_outlined,color: Colors.blue,)),
                Tab(icon: index==4 ? Icon(Icons.notifications_active_outlined,color: Colors.blue,):Icon(Icons.notifications_active_outlined,color: Colors.blue,)),
                Tab(icon: index==5 ? Icon(Icons.menu_outlined,color: Colors.blue,):Icon(Icons.menu_outlined,color: Colors.blue,)),
              ],
            ),
            title: Text("Jogajug",
            style: TextStyle(
                color: Color(0xFFFD9F22),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: IconButton(
                  onPressed: (){

                  },
                  icon: Icon( Icons.search,),
                  color: Colors.black,
                  iconSize: 28,
                  padding: EdgeInsets.all(1),
                ),
              ),
              SizedBox(width: 10,),
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: IconButton(
                  onPressed: (){

                  },
                  icon: Icon( Icons.chat,),
                  color: Colors.black,
                  iconSize: 28,
                  padding: EdgeInsets.all(1),
                ),
              ),
              SizedBox(width: 10,),
            ],
          ),
        ),
      ),
      body: Container(
        child: TabBarView(
          controller: myControler,
          children: [
            Home(),
            Friends(),
            Groups(),
            Gaming(),
            Notifications(),
            Menu(),
          ],
        ),
      ),
    );
  }
}
