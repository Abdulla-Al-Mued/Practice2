
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/post.dart';
import '../../../models/story.dart';
import '../../../models/user.dart';
import '../../../provider/user_provider.dart';
import '../widgets/add_story_card.dart';
import '../widgets/post_card.dart';
import '../widgets/story_card.dart';

class NewsFeedScreen extends StatefulWidget {
  static double offset = 0;
  final ScrollController parentScrollController;
  const NewsFeedScreen({super.key, required this.parentScrollController});

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  Color colorNewPost = const Color(0xFFF8EDC6);
  final stories = [
    Story(
      user: User(
        name: 'Rahim',
        avater: 'assets/images/user/doraemon.jpg',
        type: 'page',
      ),
      image: ['assets/images/story/1.jpg'],
      time: ['12 AM'],
      shareWith: 'public',
    ),
    Story(
      user: User(
          name: 'Karim',
          avater: 'assets/images/user/sachcungoc.jpg'
      ),
      image: ['assets/images/story/2.jpg'],
      time: ['3 PM'],
      shareWith: 'friends',
    ),
    Story(
      user: User(
        name: 'Farhana',
        avater: 'assets/images/user/vaffc.jpg',
        type: 'page',
      ),
      image: ['assets/images/story/3.jpg'],
      time: ['5 AM'],
      shareWith: 'friends-of-friends',
    ),
    Story(
      user:
      User(name: 'Lucy',
      avater: 'assets/images/user/minhhuong.jpg',
      ),
      image: [
        'assets/images/story/4.jpg',
        'assets/images/story/5.jpg',
        'assets/images/story/6.jpg',
        'assets/images/story/7.jpg',
      ],
      video: ['assets/videos/2.mp4', 'assets/videos/1.mp4'],
      time: ['1 PM'],
      shareWith: 'friends',
    ),
    // Story(
    //   user: User(name: 'Khánh Vy',
    //       avater: 'assets/images/user/khanhvy.jpg'
    //   ),
    //   video: ['assets/videos/3.mp4'],
    //   time: ['1 phút'],
    //   shareWith: 'friends',
    // ),
  ];

  final posts = [
    Post(
      user: User(
        name: 'Farhana',
        avater: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUn7rZ46nrlhfBS3Ew_fZlbOMmajm1sYQl1uFpzFI&s',
        type: 'page',
      ),
      time: '16 PM',
      shareWith: 'public',
      content:
          'Casting sessions to select candidates are held at two locations: Club 11:11 ( Ho Chi Minh City ) on April 3 and 4, 2023 and Don Lounge - 3rd floor ( Hanoi ) on April 6 and 7. April 2023. [7] [8] According to casting regulations, candidates participating in the casting round must use civilized lyrics (that is, do not use vulgar words, do not use you - me or other words). from 18+...), and must know the lyrics. [11]In the preliminary round, the contestants performed on the beat music previously given by the organizers; The jury scores and announces the results to the contestants. The best contestants will be selected by the jury to enter the recording round. [12] [13] Also according to the organizers, there are three judges for this season 3 casting, including Suboi , JustaTee [a] [15] [16] and Karik (revealed in the first casting in Hanoi ). [17] [18]The first casting session in Ho Chi Minh City attracted more than 1,500 registered candidates from the locality and surrounding areas. According to the organizers, the number of contestants in this season is larger than in season 2. Even on the second day, the number of people coming to the casting reached thousands. Due to the large number of contestants and the relatively small casting area, many people had to sit on the street to wait, and the organizers also had to ask the authorities to take to the streets to stabilize the crowd. [12] [13] [19] In Hanoi, the atmosphere on the first day of casting was as hot as Ho Chi Minh City. As of 11:00 on April 6 (the first casting day in Hanoi), more than 1,000 candidates in the Northern region have registered to participate. Many young candidates arrived early to wait for their registration numbers.',
      image: ['assets/images/post/1.jpg'],
      like: 8500,
      angry: 0,
      comment: 902,
      haha: 43,
      love: 2200,
      lovelove: 59,
      sad: 36,
      share: 98,
      wow: 7,
    ),
    Post(
      user: User(
        name: 'Rahim',
        avater: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUn7rZ46nrlhfBS3Ew_fZlbOMmajm1sYQl1uFpzFI&s',
        type: 'page',
      ),
      time: '16 PM',
      shareWith: 'public',
      content:
          'Casting sessions to select candidates are held at two locations: Club 11:11 ( Ho Chi Minh City ) on April 3 and 4, 2023 and Don Lounge - 3rd floor ( Hanoi ) on April 6 and 7. April 2023. [7] [8] According to casting regulations, candidates participating in the casting round must use civilized lyrics (that is, do not use vulgar words, do not use you - me or other words). from 18+...), and must know the lyrics. [11]In the preliminary round, the contestants performed on the beat music previously given by the organizers; The jury scores and announces the results to the contestants. The best contestants will be selected by the jury to enter the recording round. [12] [13] Also according to the organizers, there are three judges for this season 3 casting, including Suboi , JustaTee [a] [15] [16] and Karik (revealed in the first casting in Hanoi ). [17] [18]The first casting session in Ho Chi Minh City attracted more than 1,500 registered candidates from the locality and surrounding areas. According to the organizers, the number of contestants in this season is larger than in season 2. Even on the second day, the number of people coming to the casting reached thousands. Due to the large number of contestants and the relatively small casting area, many people had to sit on the street to wait, and the organizers also had to ask the authorities to take to the streets to stabilize the crowd. [12] [13] [19] In Hanoi, the atmosphere on the first day of casting was as hot as Ho Chi Minh City. As of 11:00 on April 6 (the first casting day in Hanoi), more than 1,000 candidates in the Northern region have registered to participate. Many young candidates arrived early to wait for their registration numbers.',
      image: ['assets/images/post/1.jpg'],
      like: 8500,
      angry: 0,
      comment: 902,
      haha: 43,
      love: 2200,
      lovelove: 59,
      sad: 36,
      share: 98,
      wow: 7,
    ),
    Post(
      user: User(
        name: 'Karim',
        avater: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUn7rZ46nrlhfBS3Ew_fZlbOMmajm1sYQl1uFpzFI&s',
        type: 'page',
      ),
      time: '16 PM',
      shareWith: 'public',
      content:
          'Casting sessions to select candidates are held at two locations: Club 11:11 ( Ho Chi Minh City ) on April 3 and 4, 2023 and Don Lounge - 3rd floor ( Hanoi ) on April 6 and 7. April 2023. [7] [8] According to casting regulations, candidates participating in the casting round must use civilized lyrics (that is, do not use vulgar words, do not use you - me or other words). from 18+...), and must know the lyrics. [11]In the preliminary round, the contestants performed on the beat music previously given by the organizers; The jury scores and announces the results to the contestants. The best contestants will be selected by the jury to enter the recording round. [12] [13] Also according to the organizers, there are three judges for this season 3 casting, including Suboi , JustaTee [a] [15] [16] and Karik (revealed in the first casting in Hanoi ). [17] [18]The first casting session in Ho Chi Minh City attracted more than 1,500 registered candidates from the locality and surrounding areas. According to the organizers, the number of contestants in this season is larger than in season 2. Even on the second day, the number of people coming to the casting reached thousands. Due to the large number of contestants and the relatively small casting area, many people had to sit on the street to wait, and the organizers also had to ask the authorities to take to the streets to stabilize the crowd. [12] [13] [19] In Hanoi, the atmosphere on the first day of casting was as hot as Ho Chi Minh City. As of 11:00 on April 6 (the first casting day in Hanoi), more than 1,000 candidates in the Northern region have registered to participate. Many young candidates arrived early to wait for their registration numbers.',
      image: ['assets/images/post/1.jpg'],
      like: 8500,
      angry: 0,
      comment: 902,
      haha: 43,
      love: 2200,
      lovelove: 59,
      sad: 36,
      share: 98,
      wow: 7,
    ),

  ];

  ScrollController scrollController =
  ScrollController(initialScrollOffset: NewsFeedScreen.offset);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<UserProvider>(context).user;
    scrollController.addListener(() {
      if (widget.parentScrollController.hasClients) {
        widget.parentScrollController.jumpTo(
            widget.parentScrollController.offset +
                scrollController.offset -
                NewsFeedScreen.offset);
        NewsFeedScreen.offset = scrollController.offset;
      }
    });
    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(user.avater),
                      radius: 20,
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      splashColor: Colors.blueGrey,
                      onTap: () {
                        setState(() {
                          colorNewPost = const Color(0xFFF8EDC6);
                        });
                      },
                      onTapUp: (tapUpDetails) {
                        setState(() {
                          colorNewPost = Colors.black12;
                        });
                      },
                      child: SizedBox(
                        height: 50,
                        child: InkWell(
                          splashColor: Colors.grey.shade50,
                          onTap: (){},
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.black12,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              color: colorNewPost,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              child: Text("What's on your mind?",style: TextStyle(fontSize: 17),),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.image,
                      color: Colors.green,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black12,
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Container(
              color: const Color(0xFFF8EDC6),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: AddStoryCard(),
                  ),
                  ...stories
                      .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: StoryCard(story: e),
                  ))
                      .toList()
                ]),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black12,
            ),
            Column(
              children: posts
                  .map((e) => Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  PostCard(post: e),
                  Container(
                    width: double.infinity,
                    height: 5,
                    color: Colors.black26,
                  ),
                ],
              ))
                  .toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 50,

        child: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.white,
          child: IconButton(
            splashRadius: 18,
            padding: const EdgeInsets.all(0),
            onPressed: () {},
            icon:
            //Icon(Icons.message,color: Colors.black,size: 23,)
            const ImageIcon(
              AssetImage('assets/images/message.png'),
              size: 30,
              color: Color(0xFF98703C),
            ),
          ),
        ),
      ),
    );
  }
}
