class Product {
  final String image, title, description;
  final int price, size, id;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.size,
    this.description,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Baby Breath Bouquet",
      price: 265000,
      size: 12,
      image: "assets/images/gambar2.jpeg",
      description: "Flower color available in: purple, yellow, pink. Wrapping color varies based on your flower color. If you have special coloer req, you can also add it on notes",
      ),
  Product(
      id: 2,
      title:"Rondanthe Bouquet",
      price: 200000,
      size: 8,
      image: "assets/images/gambar6.jpeg",
      ),
  Product(
      id: 3,
      title: "Dried Rose Bouquet",
      price: 100000,
      size: 10,
      image: "assets/images/gambar7.jpeg",
      ),
  Product(
      id: 4,
      title: "Wedding Bouquet",
      price: 670000,
      size: 11,
      image: "assets/images/gambar9.jpeg",
      ),
];