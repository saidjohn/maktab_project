import 'package:maktab_project/models/product_model.dart';

class Game {
  final String id;
  final int count;
  final Map<String, Product> score;
  final List<Product> products;

  const Game({required this.count, required this.id, required this.products, required this.score});

  Game copyWith({
    String? id,
    int? count,
    Map<String, Product>? score,
    List<Product>? products,
  }) {
    return Game(
      count: count ?? this.count,
      id: this.id,
      products: this.products,
      score: score ?? this.score,
    );
  }
}