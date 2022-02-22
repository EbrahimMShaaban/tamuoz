import 'package:flutter/material.dart';

import '../../constant/style.dart';

class Dayitem extends StatelessWidget {
  const Dayitem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "العقيدة الطحاويه",
                      style: TextStyle(
                          fontSize: 18,
                          color: gold,
                          fontWeight: FontWeight.w800),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  ],
                ),
                Text(
                  "ورد اليوم: 8 أسطر",
                  style: TextStyle(
                      fontSize: 18, color: gold, fontWeight: FontWeight.w800),
                ),
                Row(
                  children: const [
                    Expanded(
                      child: LinearProgressIndicator(
                          color: Color(0xffdec395), value: 20),
                    ),
                    Text("12.00%"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class WardWidget extends StatelessWidget {
//   const WardWidget({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: SizedBox(
//         width: MediaQuery.of(context).size.width - 100,
//         child: Card(
//           elevation: 5,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           child: Padding(
//             padding: const EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("العقيدة الطحاويه", style: sTitleTextStyle.copyWith(color: mainColor)),
//                     IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
//                   ],
//                 ),
//                 Text(
//                   "ورد اليوم: 8 أسطر",
//                   style: sTitleTextStyle.copyWith(fontSize: 16, color: mainColor),
//                 ),
//                 Row(
//                   children: const [
//                     Expanded(
//                       child: LinearProgressIndicator(color: Color(0xffdec395), value: 20),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(right: 10),
//                       child: Text("12.00%"),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
