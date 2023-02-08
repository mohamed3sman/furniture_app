class Product {
  final String image;
  final String title;
  final double price;

  Product({required this.image, required this.title, required this.price});
}

List<Product> products = [
  Product(
      image: 'assets/images/brown_chairs.jpg',
      title: 'Brown Chairs',
      price: 250.00),
  Product(
      image: 'assets/images/chair_1.jpg', title: 'Modern Chair', price: 170.00),
  Product(
      image: 'assets/images/chair_2.jpg', title: 'Black Chair', price: 180.00),
  Product(
      image: 'assets/images/chair_3.jpg',
      title: 'Vintage Chair',
      price: 220.00),
  Product(
      image: 'assets/images/chair_4.jpg',
      title: 'Offwhite Chair',
      price: 200.00),
  Product(
      image: 'assets/images/lights.jpg', title: 'Modern Lights', price: 140.00),
  Product(
      image: 'assets/images/white_chair.jpg',
      title: 'White Chair',
      price: 210.00),
];
