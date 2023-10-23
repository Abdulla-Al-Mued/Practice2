import 'package:flutter/material.dart';
import 'package:jogajug/Pages/dating/screens/DatingScreen.dart';
import 'package:jogajug/Pages/market_place/screens/MarketPlaceScreen.dart';
import 'package:jogajug/Pages/menu/screens/MenuScreen.dart';
import 'package:jogajug/Pages/news_feed/screens/NewsFeedScreen.dart';
import 'package:jogajug/Pages/notifications/screens/NotificationsScreen.dart';
import 'package:jogajug/Pages/watch/screens/WatchScreen.dart';
import 'package:jogajug/constants/variables.dart';

import '../../friends/screens/friends_screen.dart';
import '../widgets/home_app_bar.dart';

class HomePage extends StatefulWidget {
  static const String routeName='/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with SingleTickerProviderStateMixin {
  int index=0;
  double toolBarHeight=60;
  ScrollController scrollController=ScrollController();
  late final list=<Widget>[
    NewsFeedScreen(parentScrollController: scrollController,),
    WatchScreen(
      key: Key('watch-screen'),
    ),
    MarketPlaceScreen(),
    FriendsScreen(),
    //DatingScreen(),
    NotificationsScreen(
      key: Key('notifications-screen'),
    ),
    MenuScreen(),

  ];
  @override
  void initState() {
    // TODO: implement initState
    // myControler = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return [
            SliverAppBar(
              toolbarHeight: toolBarHeight,
              titleSpacing: 0,
              title: AnimatedContainer(
                onEnd: (){
                  setState(() {
                    if(index>0){
                      toolBarHeight=0;
                    }
                  });
                },
                curve: Curves.linearToEaseOut,
                height: (index>0) ? 0 : 60,
                duration: Duration(milliseconds: index==0 ? 500 : 300),
                child: HomeAppBar(),
              ),
              floating: true,
              snap: index==0,
              pinned: true,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(46),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(child: InkWell(
                            onTap: (){
                              setState(() {
                                index=0;
                                toolBarHeight=60;
                                scrollController.jumpTo(0);
                              });
                            },
                            child: Stack(
                              children: [
                                Center(
                                  child: Tab(
                                    child: index != 0 ? Image.asset('assets/images/nav/home.j.png',width: 38,height: 38,
                                     // color: Variables.primaryColor,
                                    ):
                                        Image.asset('assets/images/nav/home.j.png',width: 38,height: 38,
                                         // color: Variables.primaryColor,
                                        ),
                                  ),
                                ),
                                if(index==0)
                                  Positioned(
                                    bottom: 0,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 5),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width/6-10,
                                          height: 3,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Variables.primaryColor
                                          ),
                                        ),
                                      )
                                  )
                              ],
                            ),
                          ),),
                          Expanded(
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    index=1;
                                    scrollController.jumpTo(0);
                                  });
                                },
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Tab(
                                        child: index != 1
                                            ? Image.asset(
                                          'assets/images/nav/video.j.png',
                                          width: 38,
                                          height: 38,
                                           // color: Variables.primaryColor
                                        )
                                            : Image.asset(
                                          'assets/images/nav/video.j.png',
                                          width: 38,
                                          height: 38,
                                           // color: Variables.primaryColor
                                        ),
                                      ),
                                    ),
                                    if(index==1)
                                      Positioned(
                                          bottom: 0,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 5),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width/6-10,
                                              height: 3,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(100),
                                                  color: Variables.primaryColor
                                              ),
                                            ),
                                          )
                                      )
                                  ],
                                ),
                              )),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 2;
                                  scrollController.jumpTo(0);
                                });
                              },
                              child: Stack(
                                children: [
                                  Center(
                                    child: Tab(
                                      child: index != 2
                                          ? Image.asset(
                                        'assets/images/nav/market.j.png',
                                        width: 34,
                                        height: 34,
                                          //color: Variables.primaryColor

                                      )
                                          : Image.asset(
                                        'assets/images/nav/market.j.png',
                                        width: 34,
                                        height: 34,
                                         // color: Variables.primaryColor

                                      ),
                                    ),
                                  ),
                                  if (index == 2)
                                    Positioned(
                                      bottom: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width /
                                              6 -
                                              10,
                                          height: 3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(100),
                                              color: Variables.primaryColor
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 3;
                                  scrollController.jumpTo(0);
                                });
                              },
                              child: Stack(
                                children: [
                                  Center(
                                    child: Tab(
                                      child: index != 3
                                          ? Image.asset(
                                        'assets/images/nav/friends.j.png',
                                        width: 38,
                                        height: 38,
                                        //  color: Variables.primaryColor

                                      )
                                          : Image.asset(
                                        'assets/images/nav/friends.j.png',
                                        width: 38,
                                        height: 38,
                                         // color: Variables.primaryColor

                                      ),
                                    ),
                                  ),
                                  if (index == 3)
                                    Positioned(
                                      bottom: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width /
                                              6 -
                                              10,
                                          height: 3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(100),
                                              color: Variables.primaryColor
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 4;
                                  scrollController.jumpTo(0);
                                });
                              },
                              child: Stack(
                                children: [
                                  Center(
                                    child: Tab(
                                      child: index != 4
                                          ? Image.asset(
                                        'assets/images/nav/notification.j.png',
                                        width: 38,
                                        height: 38,
                                         // color: Variables.primaryColor

                                      )
                                          : Image.asset(
                                        'assets/images/nav/notification.j.png',
                                        width: 38,
                                        height: 38,
                                         // color: Variables.primaryColor

                                      ),
                                    ),
                                  ),
                                  if (index == 4)
                                    Positioned(
                                      bottom: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width /
                                              6 -
                                              10,
                                          height: 3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(100),
                                              color: Variables.primaryColor
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  index = 5;
                                  scrollController.jumpTo(0);
                                });
                              },
                              child: Stack(
                                children: [
                                  Center(
                                    child: Tab(
                                      child: index != 5
                                          ? Image.asset(
                                        'assets/images/nav/menu.j.png',
                                        width: 30,
                                        height: 30,
                                          //color: Variables.primaryColor

                                      )
                                          : Image.asset(
                                        'assets/images/nav/menu.j.png',
                                        width: 30,
                                        height: 30,
                                         // color: Variables.primaryColor

                                      ),
                                    ),
                                  ),
                                  if (index == 5)
                                    Positioned(
                                      bottom: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width /
                                              6 -
                                              10,
                                          height: 3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(100),
                                              color: Variables.primaryColor
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black12,
                      height: 0,
                    )
                  ],
                ),
              ),
            )
          ];
        }, body: list[index],
      ),
    );

  }
}
