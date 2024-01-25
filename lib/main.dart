
import 'package:flutter/material.dart';
import 'package:maktab_project/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}



/// Color Game

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final Map<String, bool> score = {};
//   final Map choices = {
//     '🍏': Colors.green,
//     '🍋': Colors.yellow,
//     '🍅': Colors.red,
//     '🍇': Colors.purple,
//     '🥥': Colors.brown,
//     '🥕': Colors.orange
//   };
//   int seed = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Score ${score.length}/6"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             score.clear();
//             seed++;
//           });
//         },
//         child: const Icon(Icons.refresh),
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: choices.keys.map((emoji) {
//               return Draggable<String>(
//                 data: emoji,
//                 feedback: Emoji(
//                   emoji: emoji,
//                 ),
//                 child: Emoji(
//                   emoji: score[emoji] == true ? "✅" : emoji,
//                 ),
//               );
//             }).toList(),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children:
//                 choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
//                   ..shuffle(Random(seed)),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDragTarget(emoji) {
//     return DragTarget<String>(
//       builder: (BuildContext context, List<String?> incoming, List rejected) {
//         if (score[emoji] == true) {
//           return Container(
//             color: Colors.white,
//             alignment: Alignment.center,
//             height: 80,
//             width: 150,
//             child: const Text("Correct!"),
//           );
//         } else {
//           return Container(
//             color: choices[emoji],
//             height: 80,
//             width: 150,
//           );
//         }
//       },
//       onWillAccept: (data) => data == emoji,
//       onAccept: (data) {
//         setState(() {
//           score[emoji] = true;
//         });
//       },
//       onLeave: (data) {},
//     );
//   }
// }
//
// class Emoji extends StatelessWidget {
//   const Emoji({super.key, this.emoji});
//
//   final String? emoji;
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Container(
//         alignment: Alignment.center,
//         height: 50,
//         padding: const EdgeInsets.all(10),
//         child: Text(
//           emoji!,
//           style: const TextStyle(color: Colors.black, fontSize: 50),
//         ),
//       ),
//     );
//   }
// }
