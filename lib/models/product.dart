import 'package:farshop/gen/assets.gen.dart';

class Product {
  final String name;
  final String category;
  final int price;
  final int oldPrice;
  final String location;
  final AssetGenImage image;
  final String description;

  const Product({
    required this.name,
    required this.category,
    required this.price,
    required this.oldPrice,
    required this.location,
    required this.image,
    required this.description,
  });
}

final List<Product> products = [
  Product(
    name: 'Nike Air',
    category: 'Footwear',
    price: 800000,
    oldPrice: 1800000,
    location: 'Jakarta Timur',
    image: Assets.images.product1,
    description: 'This is a description of the product 1',
  ),
  Product(
    name: 'MacBook',
    category: 'Electronics',
    price: 10000000,
    oldPrice: 20000000,
    location: 'Depok',
    image: Assets.images.product2,
    description: 'This is a description of the product 2',
  ),
  Product(
    name: 'Hoodie',
    category: 'Apparel',
    price: 149000,
    oldPrice: 399000,
    location: 'Jakarta Barat',
    image: Assets.images.product3,
    description: 'This is a description of the product 3',
  ),
  Product(
    name: 'T-Shirt',
    category: 'Apparel',
    price: 69000,
    oldPrice: 99000,
    location: 'Tangerang',
    image: Assets.images.product4,
    description: 'This is a description of the product 4',
  ),
  Product(
    name: 'Adidas Samba',
    category: 'Footwear',
    price: 700000,
    oldPrice: 1499000,
    location: 'Jakarta',
    image: Assets.images.product5,
    description: 'This is a description of the product 5',
  ),
  Product(
    name: 'ASUS ROG',
    category: 'Electronics',
    price: 15000000,
    oldPrice: 22000000,
    location: 'Bekasi',
    image: Assets.images.product6,
    description: 'This is a description of the product 6',
  ),
];
