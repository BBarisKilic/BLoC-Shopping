import 'dart:async';

import 'package:bloc_shopping/data/cart_service.dart';
import 'package:bloc_shopping/models/cart_item.dart';

class CartBloc {
  final cartStreamController = StreamController.broadcast();

  Stream get getStream => cartStreamController.stream;

  void addToCart(CartItem cartItem) {
    CartService.addToCart(cartItem);
    cartStreamController.sink.add(getCart());
  }

  void removeFromCart(CartItem cartItem) {
    CartService.removeFromCart(cartItem);
    cartStreamController.sink.add(getCart());
  }

  List<CartItem> getCart() {
    return CartService.getCart();
  }
}

final cartBloc = CartBloc();
