import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jogajug/constants/variables.dart';
import 'package:provider/provider.dart';

import '../../../provider/user_provider.dart';

class AddStoryCard extends StatelessWidget {
  const AddStoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return SizedBox(
      height: 136,
      child: Padding(
        padding: const EdgeInsets.only(top: 10,),
        child: Container(
          height: 108,width: 113,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: InkWell(
            onTap: (){},
            child: Stack(
              children: [
                ClipOval(
                  child: Image.asset(user.avater,
                    fit: BoxFit.cover, // Choose the appropriate fit option
                  ),
                ),
                Positioned(
                  width: 50,
                  child:  DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Variables.secondaryColor,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                      size: 36,
                ),
                  ),),
                Positioned(
                  top: 109,left: 20,
                  child: Container(
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    'Create Story',
                    style: TextStyle(color: Colors.black),
                  ),
                ),)
              ],
            ),
          )
        ),
      ),
    );
  }
}




//
// import 'package:flutter/material.dart';
// import 'package:jogajug/constants/variables.dart';
// import 'package:provider/provider.dart';
//
// import '../../../provider/user_provider.dart';
//
// class AddStoryCard extends StatelessWidget {
//   const AddStoryCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final user = Provider.of<UserProvider>(context).user;
//     return Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         //borderRadius: BorderRadius.circular(10),
//         border: Border.all(
//           color: Colors.black12,
//           width: 1,
//         ),
//       ),
//       width: 100,
//       height: 180,
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           borderRadius: BorderRadius.circular(10),
//           onTap: () {},
//           child: Stack(
//             children: [
//               Column(
//                 children: [
//                   ClipRRect(
//                     borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       topRight: Radius.circular(10),
//                     ),
//                     child: Image.asset(
//                       user.avater,
//                       fit: BoxFit.fitWidth,
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       alignment: Alignment.bottomCenter,
//                       padding: const EdgeInsets.only(
//                         bottom: 5,
//                       ),
//                       decoration: const BoxDecoration(
//                         color: Colors.white70,
//                       ),
//                       child: const Text(
//                         'Create Story',
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               Positioned(
//                 top: 80,
//                 left: 25,
//                 width: 50,
//                 child: DecoratedBox(
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Variables.secondaryColor,
//                       border: Border.all(
//                         color: Colors.white,
//                         width: 2,
//                       )),
//                   child: const Padding(
//                     padding: EdgeInsets.all(5),
//                     child: Icon(
//                       Icons.add_rounded,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
