class Product {
  final String image, title;
  final int id;
  Product({
    this.id,
    this.image,
    this.title,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Bouquet",
      image: "assets/images/gambar9.jpeg",
      ),
  Product(
      id: 2,
      title: "Table Flower",
      image: "assets/images/gambar10.jpeg",
      ),
  Product(
      id: 3,
      title: "Flower Basket",
      image: "assets/images/gambar8.jpeg",
      ),
  Product(
      id: 4,
      title: "Flower Board",
      image: "assets/images/gambar12.jpeg",
      ),
];