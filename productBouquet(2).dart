class Product {
  final String image, title, description;
  final int price, id;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Baby Breath Bouquet",
      price: 265000,
      image: "assets/images/gambar2.jpeg",
      description: "Flower color available in: purple, yellow, pink. Wrapping color varies based on your flower color. If you have special coloer req, you can also add it on notes",
      ),
  Product(
      id: 2,
      title:"Rondanthe Bouquet",
      price: 200000,
      image: "assets/images/gambar6.jpeg",
      ),
  Product(
      id: 3,
      title: "Dried Rose Bouquet",
      price: 100000,
      image: "assets/images/gambar7.jpeg",
      ),
  Product(
      id: 4,
      title: "Wedding Bouquet",
      price: 670000,
      image: "assets/images/gambar9.jpeg",
      ),
  Product(
      id: 5,
      title: "White Flowers Bouquet",
      price: 120000,
      image: "assets/images/gambar13.jpeg",
      ),
  Product(
      id: 6,
      title: "Yellow Bouquet",
      price: 30000,
      image: "assets/images/gambar14.jpeg",
      ),
  Product(
      id: 7,
      title: "Pink Bouquet",
      price: 150000,
      image: "assets/images/gambar15.jpeg",
      ),
];