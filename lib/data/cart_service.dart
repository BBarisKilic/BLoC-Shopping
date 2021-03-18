import 'package:bloc_shopping/models/cart_item.dart';

class CartService {
  static List<CartItem> cartItems = List<CartItem>();

  static CartService _singleton = CartService._internal();

  factory CartService() {
    return _singleton;
  }

  CartService._internal();

  static void addToCart(CartItem cartItem) {
    cartItems.add(cartItem);
  }

  static void removeFromCart(CartItem cartItem) {
    cartItems.remove(cartItem);
  }

  static List<CartItem> getCart() {
    return cartItems;
  }
}
