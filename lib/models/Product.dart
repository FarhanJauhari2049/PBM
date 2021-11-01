class Product {
  final String image, title;
  final int size, id;
  Product({
    this.id,
    this.image,
    this.title,
    this.size,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Bouquet",
      size: 12,
      image: "assets/images/gambar9.jpeg",
      ),
  Product(
      id: 2,
      title: "Table Flower",
      size: 8,
      image: "assets/images/gambar10.jpeg",
      ),
  Product(
      id: 3,
      title: "Flower Basket",
      size: 10,
      image: "assets/images/gambar8.jpeg",
      ),
  Product(
      id: 4,
      title: "Flower Board",
      size: 11,
      image: "assets/images/gambar12.jpeg",
      ),
];