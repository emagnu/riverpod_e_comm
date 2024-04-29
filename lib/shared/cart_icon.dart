//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../features/cart/cart_screen.dart';
//  PARTS
//  PROVIDERS
//  //   ///

class CartIcon extends StatelessWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                // return const CartScreen();
                return const CartScreen();
              },
            ));
          },
          icon: const Icon(
            Icons.shopping_bag_outlined,
          ),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            width: 18,
            height: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              borderRadius: BorderRadius.circular(10),
              // child: Widget(),
            ),
          ),
        ),
      ],
    );
  }
}
