import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier {
// List of Shoes for sale
List<Shoe> shoeShop = [
  Shoe(
  name: 'Sneakers',
  price: '250',    
  description: 'Rock n Roll',
  imagepath: 'assets/images/pngwing.com (1).png'
),
  Shoe(
  name: 'Joggers',
  price: '250',    
  description: 'Skate with blades',
  imagepath: 'assets/images/pngwing.com (2).png'
),
  Shoe(
  name: 'Air Jordan',
  price: '250',    
  description: 'Rock it!',
  imagepath: 'assets/images/pngwing.com (3).png'
),
  Shoe(
  name: 'Boots',
  price: '250',    
  description: 'Rock with Style',
  imagepath: 'assets/images/pngwing.com (4).png'
),
  Shoe(
  name: 'Air Max',
  price: '250',    
  description: 'Rock n Roll',
  imagepath: 'assets/images/pngwing.com.png'
)];


// List of items in user cart

List<Shoe> userCart = [];

// get list of shoe for sale
List<Shoe> getShoeList() {
   return shoeShop;
}

// get cart
List<Shoe> getUserCart() {
   return userCart;
}

// add item to cart
void addItemToCart(Shoe shoe) {
  userCart.add(shoe);
  notifyListeners();
}
// remove Item from cart
void removeItemFromCart(Shoe shoe) {
  userCart.remove(shoe);
  notifyListeners();

 }
}