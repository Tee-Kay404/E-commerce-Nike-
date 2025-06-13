import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;

  const CartItem({
    super.key,
    required this.shoe,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Image.asset(widget.shoe.imagepath),
            ))),
        title: Text(
          widget.shoe.name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        subtitle: Text(
          '\$${widget.shoe.price}',
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            removeItemFromCart(); // Call the remove function when delete is pressed

            // Optionally show a snackbar to confirm item removal
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${widget.shoe.name} removed from cart'),
              ),
            );
          },
        ),
      ),
    );
  }
}
