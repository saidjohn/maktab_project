// import 'package:flutter/material.dart';
//
// import 'models/product_model.dart';
//
// class MainPage extends StatefulWidget {
//   const MainPage({super.key});
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text("Score 0/5"),
//       ),
//       body: Row(
//         children: [
//           Expanded(
//             flex: 7,
//             child: Container(
//               height: MediaQuery.of(context).size.height,
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(5.0),
//                     child: Container(
//                       height: 35,
//                       width: 200,
//                       decoration: BoxDecoration(
//                           color: Colors.green,
//                           borderRadius: BorderRadius.circular(15)),
//                       child: const Center(
//                           child: Text(
//                         "Healthy",
//                         style: TextStyle(color: Colors.white, fontSize: 20),
//                       )),
//                     ),
//                   ),
//                   Container(
//                     height: 150,
//                     decoration: const BoxDecoration(
//                         border: BorderDirectional(
//                       top: BorderSide(color: Colors.black),
//                       bottom: BorderSide(color: Colors.black),
//                     )),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(5.0),
//                     child: Container(
//                       height: 35,
//                       width: 200,
//                       decoration: BoxDecoration(
//                           color: Colors.red,
//                           borderRadius: BorderRadius.circular(15)),
//                       child: const Center(
//                           child: Text(
//                         "Harmful",
//                         style: TextStyle(color: Colors.white, fontSize: 20),
//                       )),
//                     ),
//                   ),
//                   Container(
//                     height: 150,
//                     decoration: const BoxDecoration(
//                         border: BorderDirectional(
//                       bottom: BorderSide(color: Colors.black),
//                     )),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(5.0),
//                     child: Container(
//                       height: 35,
//                       width: 200,
//                       decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(15)),
//                       child: const Center(
//                           child: Text(
//                         "Normal",
//                         style: TextStyle(color: Colors.white, fontSize: 20),
//                       )),
//                     ),
//                   ),
//                   Container(
//                     height: 150,
//                     decoration: const BoxDecoration(
//                         border: BorderDirectional(
//                             bottom: BorderSide(color: Colors.black))),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 4,
//             child: Container(
//               decoration: const BoxDecoration(
//                   border: Border(left: BorderSide(color: Colors.black))),
//               height: MediaQuery.of(context).size.height,
//               child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                     maxCrossAxisExtent: 200,
//                     childAspectRatio: 3 / 2,
//                     crossAxisSpacing: 16,
//                     mainAxisSpacing: 16),
//                 itemCount: myProducts.length,
//                 itemBuilder: (BuildContext ctx, index) {
//                   return Container(
//                       alignment: Alignment.center,
//                       decoration: const BoxDecoration(
//                           color: Colors.amber, shape: BoxShape.circle),
//                       child: Text(""));
//                   },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
