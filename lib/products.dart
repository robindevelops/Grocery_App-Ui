class Product {
  final String name;
  final String imagepath;
  final double price;

  Product({
    required this.name,
    required this.imagepath,
    required this.price,
  });
}

final List<Product> products = [
  Product(name: "Product 1", imagepath: "lib/images/fruit.png", price: 10.99),
  Product(name: "Product 2", imagepath: "lib/images/grocery.png", price: 12.99),
  Product(name: "Product 2", imagepath: "lib/images/fruits.png", price: 12.99),
  Product(name: "Product 2", imagepath: "lib/images/fruit.png", price: 12.99),
  Product(name: "Product 2", imagepath: "lib/images/fruits.png", price: 12.99),

  // Add more products as needed
];
