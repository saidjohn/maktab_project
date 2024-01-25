import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/game_model.dart';
import 'models/product_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> categories = [
    "healthy",
    "harmful",
    "normal",
  ];
  List<String> icons = [
    "assets/harmful/cocacola.jpg",
    "assets/harmful/donuts.jpg",
    "assets/harmful/hamburger.jpg",
    "assets/harmful/kolbaski.jpeg",
    "assets/harmful/pizza.jpg",
    "assets/healthy/apple.jpg",
    "assets/healthy/carrot.jpeg",
    "assets/healthy/herbs.jpg",
    "assets/healthy/milk.jpg",
    "assets/healthy/ogurtsi.jpg",
    "assets/normal/jamm.jpg",
    "assets/normal/konfet.jpg",
    "assets/normal/pechchhi.jpeg",
    "assets/normal/pie.jpg",
    "assets/normal/pishloq.jpg",
  ];

  late final Game game = Game(
    count: 15,
    id: "asdasdad",
    products: List.generate(
      15,
      (index) => Product(
        category: categories[index.isOdd ? 0 : 1],
        id: "id:$index",
        imageUrl: icons[index],
        // name: icons[index],
      ),
    ),
    score: {},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Score ${game.score.length}/5"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            game.score.clear();
            _shuffleImages();
          });
        },
        child: const Icon(Icons.refresh),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 7,
            child: ListView.separated(
              itemBuilder: (context, index) => SizedBox(
                height: 100,
                child: ListView.separated(
                  itemCount: game.products.length ~/ categories.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: DragTarget(
                        builder: (BuildContext context,
                            List<Object?> candidateData,
                            List<dynamic> rejectedData) {
                          if (game.score[index] == true) {
                            return Container(
                              color: Colors.white,
                              alignment: Alignment.center,
                              height: 80,
                              width: 150,
                              child: const Text("Correct!"),
                            );
                          } else {
                            return Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: game.score.containsKey(
                                            game.products[index].id)
                                        ? Colors.red
                                        : Colors.amberAccent,
                                    borderRadius: BorderRadius.circular(15)),
                                height: 80,
                                width: 150,
                                child: const Icon(
                                  CupertinoIcons.plus,
                                  size: 35,
                                  color: Colors.grey,
                                ),
                              ),
                            );
                          }
                        },
                        onWillAccept: (data) => data == game.products[index].id,
                        onAccept: (data) {
                          setState(() {
                            game.score[game.products[index].id] =
                                game.products[index];
                          });
                        },
                        onLeave: (data) {},
                      ),
                    );
                  },
                ),
              ),
              separatorBuilder: (context, index) => const Divider(
                color: Colors.black,
              ),
              itemCount: categories.length,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(left: BorderSide(color: Colors.black))),
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                itemCount: game.products.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Draggable(
                      data: game.products[index].imageUrl,
                      feedback: Image(
                        width: 150,
                        image: AssetImage(game.products[index].imageUrl),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage(game.products[index].imageUrl)),
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all()),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
  void _shuffleImages() {
    final random = Random();
    for (int i = game.products.length - 1; i > 0; i--) {
      int j = random.nextInt(i + 1);
      Product temp = game.products[i];
      game.products[i] = game.products[j];
      game.products[j] = temp;
    }
  }
}

