import 'package:bloc_shopping/models/product.dart';

class CartItem {
  Product product;
  int quantity;

  CartItem(this.product, this.quantity);
}
