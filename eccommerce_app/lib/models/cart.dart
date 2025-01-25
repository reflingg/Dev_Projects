import 'package:eccommerce_app/models/product..dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Product> productShop = [
    Product(
      name: 'Hp Flip',
      price: '233',
      description: " High tech very convinient",
      imagePath: 'lib/images/first.png',
    ),
    Product(
      name: 'Hp Slick',
      price: '263',
      description: " High tech very convinient",
      imagePath: 'lib/images/second.png',
    ),
    Product(
      name: 'Hp New',
      price: '270',
      description: " High tech very convinient",
      imagePath: 'lib/images/third.png',
    ),
    Product(
      name: 'Hp Hot',
      price: '243',
      description: " High tech very convinient",
      imagePath: 'lib/images/fifth.png',
    ),
  ];
  // list of items in user cart
  List<Product> userCart = [];
  // get list of product for sale
  List<Product> getProductList() {
    return productShop;
  }

  // get cart
  List<Product> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(Product product) {
    userCart.add(product);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Product product) {
    userCart.remove(product);
    notifyListeners();
  }
}
