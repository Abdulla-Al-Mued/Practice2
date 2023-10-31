

import 'package:flutter/material.dart';
import 'package:jogajug/Pages/friends/screens/friends_screen.dart';
import 'package:jogajug/Pages/home/screens/HomePage.dart';
import 'package:jogajug/Pages/news_feed/widgets/story_details.dart';
import 'package:jogajug/models/story.dart';

import 'Pages/news_feed/screens/image_fullscreen.dart';
import 'models/post.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case HomePage.routeName:
      return MaterialPageRoute(builder: (context)=> const HomePage(),
      );


    case StoryDetails.routeName:
      final Story story =routeSettings.arguments as Story;
      return PageRouteBuilder(opaque: false,pageBuilder: (_,__,___)=>StoryDetails(story: story),
      );

    case FriendsScreen.routeName:
      return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation)=>
      const FriendsScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child){
           const begin= Offset(1.0, 0.0);
           const end= Offset.zero;
           const curve=Curves.ease;

           var tween=Tween(begin: begin,end: end).chain(CurveTween(curve: curve));
           return SlideTransition(
               position: animation.drive(tween),
           child: child,
           );

        }
      );
    case ImageFullScreen.routeName:
      final Post post = routeSettings.arguments as Post;
      return PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) =>
            ImageFullScreen(
              post: post,
            ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );

    default:
      return MaterialPageRoute(builder: (context)=>const Scaffold(
        body: Center(
          child: Text('404: Not Found'),
        ),
      ),
      settings: routeSettings,
      );
  }
}