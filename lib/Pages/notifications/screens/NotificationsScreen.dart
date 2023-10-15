import 'package:flutter/material.dart';

import '../../../models/notification.dart';
import '../widgets/single_notification.dart';

class NotificationsScreen extends StatefulWidget {
  static double offset = 0;
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  List<Noti> notifications = [
    Noti(
      content: 'Shin Chan has sent you a friend\nrequest',
      bold: ['Shin Chan'],
      image: 'assets/images/user/khanhvy.jpg',
      time: '15th October, 2023 5:00 PM',
      type: 'friend',
    ),

    Noti(
      content: 'Leo Messi mentioned you in a comment',
      bold: ['Leo Messi'],
      image: 'assets/images/user/messi.jpg',
      time: '10th October, 2023 10:10 AM',
      type: 'comment',
    ),
    Noti(
      content: 'Leo Messi mentioned you in a comment',
      bold: ['Leo Messi'],
      image: 'assets/images/user/messi.jpg',
      time: '10th October, 2023 10:10 AM',
      type: 'comment',
    ),
    Noti(
      content: 'Leo Messi mentioned you in a comment',
      bold: ['Leo Messi'],
      image: 'assets/images/user/messi.jpg',
      time: '10th October, 2023 10:10 AM',
      type: 'comment',
    ),
    Noti(
      content: 'Shin Chan has sent you a friend\nrequest',
      bold: ['Shin Chan'],
      image: 'assets/images/user/khanhvy.jpg',
      time: '15th October, 2023 5:00 PM',
      type: 'friend',
    ),

  ];

  ScrollController scrollController =
  ScrollController(initialScrollOffset: NotificationsScreen.offset);
  ScrollController headerScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    headerScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(() {
      headerScrollController.jumpTo(headerScrollController.offset +
          scrollController.offset -
          NotificationsScreen.offset);
      NotificationsScreen.offset = scrollController.offset;
    });
    return Scaffold(
      body: NestedScrollView(
        controller: headerScrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            toolbarHeight: 50,
            titleSpacing: 0,
            pinned: true,
            floating: true,
            primary: false,
            centerTitle: true,
            automaticallyImplyLeading: false,
            snap: true,
            forceElevated: innerBoxIsScrolled,
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(0), child: SizedBox()),
            title: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                        splashRadius: 20,
                        onPressed: () {},
                        icon: const ImageIcon(
                          AssetImage('assets/images/menu.png'),
                          color: Colors.black,
                          size: 50,
                        ),
                      ),
                      const Text(
                        'Notifications',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 35,
                    height: 35,
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12,
                    ),
                    child: IconButton(
                      splashRadius: 18,
                      padding: const EdgeInsets.all(0),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: notifications
                .map((e) => SingleNotification(notification: e))
                .toList(),
          ),
        ),
      ),
    );
  }
}
