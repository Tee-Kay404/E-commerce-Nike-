import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;

  const ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 25),
        width: 280,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                    ),
                    child: Image.asset(
                      shoe.imagepath,
                      height: 180,
                    ),
                  ),
                ),
              ),
            ),

            //shoe description
            Text(
              shoe.description,
              style: TextStyle(color: Colors.blue[600], fontSize: 17),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // shoe name
                      Text(shoe.name,
                          style: Theme.of(context).textTheme.bodyMedium),

                      const SizedBox(height: 5),

                      //  shoe price
                      Text(
                        '\$${shoe.price}',
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
