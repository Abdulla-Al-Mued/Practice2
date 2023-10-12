

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogajug/Pages/friends/screens/friends_screen.dart';
import 'package:jogajug/Pages/home/screens/HomePage.dart';
import 'package:jogajug/Pages/news_feed/widgets/story_details.dart';
import 'package:jogajug/models/story.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case HomePage.routeName:
      return MaterialPageRoute(builder: (context)=> HomePage(),
      );


    case StoryDetails.routeName:
      final Story story =routeSettings.arguments as Story;
      return PageRouteBuilder(opaque: false,pageBuilder: (_,__,___)=>StoryDetails(story: story),
      );


    case FriendsScreen.routeName:
      return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation)=>
      FriendsScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child){
           const begin= Offset(1.0, 0.0);
           const end= Offset.zero;
           const curve=Curves.ease;

           var tween=Tween(begin: begin,end: end).chain(CurveTween(curve: curve));
           return SlideTransition(
               position: animation.drive(tween),
           child: child,);

        }
      );


    default:
      return MaterialPageRoute(builder: (context)=>Scaffold(
        body: Center(
          child: Text('404: Not Found'),
        ),
      ),
      settings: routeSettings,
      );
  }
}