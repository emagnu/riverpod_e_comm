//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../../provider/cart_provider.dart';
// import '../../provider/products_provider.dart';
//  PARTS
//  PROVIDERS
//  //   ///

// // class CartScreen extends StatefulWidget {
class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
  // ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    // final cartProducts = ref.watch(reducedProductsProvider);
    final cartProducts = ref.watch(cartNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: <Widget>[],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Column(
              // Output all the cart's product here
              children: cartProducts.map(
                (product) {
                  return Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: <Widget>[
                        // Image
                        Image.asset(product.image, width: 60, height: 60),
                        const SizedBox(width: 10.0),
                        // Title
                        // Text(product.title),
                        Text('${product.title}...'),
                        const Expanded(child: SizedBox()),
                        // Price
                        Text('\$${product.price}'),
                      ],
                    ),
                  );
                },
              ).toList(),
              // <Widget>[],
            ),
            // Output the totals here
          ],
        ),
      ),
    );
  }
}


// // // class CartScreen extends StatefulWidget {
// // class CartScreen extends ConsumerStatefulWidget {
// //   const CartScreen({super.key});

// //   @override
// //   _CartScreenState createState() => _CartScreenState();
// // }

// // class _CartScreenState extends ConsumerState<CartScreen> {
// //   final cartProducts = ref.watch(reducedProductsProvider);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Your Cart'),
// //         centerTitle: true,
// //       ),
// //       body: Container(
// //         padding: const EdgeInsets.all(30),
// //         child: const Column(
// //           children: <Widget>[
// //             Column(
// //               children: <Widget>[
// //                 // Output all the cart's product here
// //               ],
// //             ),
// //             // Output the totals here
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// class CartScreen extends ConsumerStatefulWidget {
//   const CartScreen({super.key});

//   @override
//   ConsumerState<CartScreen> createState() => _CartScreenState();
// }

// class _CartScreenState extends ConsumerState<CartScreen> {
//   // bool showCoupon = true;

//   @override
//   Widget build(BuildContext context) {
//     final cartProducts = ref.watch(reducedProductsProvider);
//     // final cartProducts = ref.watch(cartNotifierProvider);
//     // final total = ref.watch(cartTotalProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Your Cart'),
//         centerTitle: true,
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(30),
//         child: Column(
//           children: [
//             Column(
//               children: cartProducts.map((product) {
//                 return Container(
//                     padding: const EdgeInsets.only(top: 10, bottom: 10),
//                     child: Row(children: [
//                       Image.asset(product.image, width: 60, height: 60),
//                       const SizedBox(width: 10),
//                       Text('${product.title}...'),
//                       const Expanded(child: SizedBox()),
//                       Text('£${product.price}'),
//                     ]));
//               }).toList(),
//             ),

//             // output totals here
//             const Text('Total price '), //- £$total'),
//           ],
//         ),
//       ),
//     );
//   }
// }
