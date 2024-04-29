//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../../provider/product_provider.dart';
import '../../shared/cart_icon.dart';
//  PARTS
//  PROVIDERS
//  //   ///

// class HomeScreen extends StatelessWidget {
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(productsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage Sale Products'),
        actions: const <Widget>[
          CartIcon(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: allProducts.length, //8,

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blueGrey.withOpacity(0.05),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    allProducts[index].image,
                    width: 600,
                    height: 60,
                  ),
                  Text(allProducts[index].title),
                  Text('\$${allProducts[index].price.toString()}'),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add to Cart'),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: const Text('View Product'),
                  // ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: const Text('Delete Product'),
                  // ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
