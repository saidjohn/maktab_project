class Product {
  final String id;
  final String imageUrl;
  final String? name;
  final String category;

  const Product({required this.category, required this.id, required this.imageUrl,this.name});
}
// final myProducts = [
//   const Product(category: "harmful", id: "1", imageUrl: "assets/harmful/cocacola.jpg"),
//   const Product(category: "harmful", id: "2", imageUrl: "assets/harmful/donuts.jpg"),
//   const Product(category: "harmful", id: "3", imageUrl: "assets/harmful/hamburger.jpg"),
//   const Product(category: "harmful", id: "4", imageUrl: "assets/harmful/kolbasa.jpg"),
//   const Product(category: "harmful", id: "5", imageUrl: "assets/harmful/pizza.jpg"),
//   const Product(category: "healthy", id: "6", imageUrl: "assets/healthy/apple.jpg"),
//   const Product(category: "healthy", id: "7", imageUrl: "assets/healthy/carrot.jpg"),
//   const Product(category: "healthy", id: "8", imageUrl: "assets/healthy/herbs.jpg"),
//   const Product(category: "healthy", id: "9", imageUrl: "assets/healthy/milk.jpg"),
//   const Product(category: "healthy", id: "10", imageUrl: "assets/healthy/ogurtsi.jpg"),
//   const Product(category: "normal", id: "11", imageUrl: "assets/normal/jamm.jpg"),
//   const Product(category: "normal", id: "12", imageUrl: "assets/normal/konfet.jpg"),
//   const Product(category: "normal", id: "13", imageUrl: "assets/normal/pechchhi.jpg"),
//   const Product(category: "normal", id: "14", imageUrl: "assets/normal/pie.jpg"),
//   const Product(category: "normal", id: "15", imageUrl: "assets/normal/pishloq.jpg"),
// ];