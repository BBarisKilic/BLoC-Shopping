import 'package:bloc_shopping/models/product.dart';

class ProductService {
  static List<Product> products = new List<Product>();

  static ProductService _singleton = ProductService._internal();

  factory ProductService() {
    return _singleton;
  }

  ProductService._internal();

  static List<Product> getAll() {
    products.add(Product(1, "Acer Laptop", 6000));
    products.add(Product(2, "MSI Laptop", 9000));
    products.add(Product(3, "Asus Laptop", 8000));
    return products;
  }
}
