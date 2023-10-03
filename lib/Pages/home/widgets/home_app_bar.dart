import 'package:flutter/material.dart';
import 'package:jogajug/constants/variables.dart';

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
        Row(
          children: [
            IconButton(
              splashRadius: 20,
              onPressed: () {},
              icon:
              //Icon(Icons.menu,color: Colors.black,size: 50,)
              const ImageIcon(
                AssetImage('assets/images/menu.png'),
                color: Colors.black,
                size: 50,
              ),
            ),
            const Text(
              'jogajug',
              style: TextStyle(
                color: Color(0xFF98703C),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                icon:
                //Icon(Icons.search,color: Colors.black,size: 22,)
                const ImageIcon(
                  AssetImage('assets/images/search.png'),
                  size: 22,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: 35,
              height: 35,
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black12,
              ),
              child: IconButton(
                splashRadius: 18,
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon:
                //Icon(Icons.message,color: Colors.black,size: 23,)
                const ImageIcon(
                  AssetImage('assets/images/message.png'),
                  size: 23,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}