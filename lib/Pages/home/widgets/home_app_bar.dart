import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
          child: Row(
            children: [
              Image.asset("assets/images/jogajog logo.png",height: 50,width: 50,),
              const Text(
                'jogajug',
                style: TextStyle(
                  color: Color(0xFFDCB945),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                 onTap: (){},
                child: Container(
                  alignment: Alignment.centerRight,
                  width: 125,
                  height: 30,
                  padding: const EdgeInsets.all(4),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.black12,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  //  color: colorNewPost,
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Search',style: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w200,),),
                       ImageIcon(
                        AssetImage('assets/images/search.png'),
                        size: 22,
                        color: Colors.black54,
                      ),
                    ],
                  ),

                  // IconButton(
                  //   alignment: Alignment.centerRight,
                  //   splashRadius: 18,
                  //   padding: const EdgeInsets.all(0),
                  //   onPressed: () {},
                  //   icon:
                  //   //Icon(Icons.search,color: Colors.black,size: 22,)
                  //   const ImageIcon(
                  //     AssetImage('assets/images/search.png'),
                  //     size: 22,
                  //     color: Colors.black,
                  //   ),
                  // ),
                ),
              ),
            ),
            // Container(
            //   alignment: Alignment.center,
            //   margin: const EdgeInsets.symmetric(horizontal: 5),
            //   width: 35,
            //   height: 35,
            //   padding: const EdgeInsets.all(0),
            //   decoration: const BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: Colors.black12,
            //   ),
            //   child: IconButton(
            //     splashRadius: 18,
            //     padding: const EdgeInsets.all(0),
            //     onPressed: () {},
            //     icon:
            //     //Icon(Icons.message,color: Colors.black,size: 23,)
            //     const ImageIcon(
            //       AssetImage('assets/images/message.png'),
            //       size: 23,
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
          ],
        )
      ],
    );
  }
}