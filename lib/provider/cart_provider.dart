//  //   ///
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
import '../models/product.dart';
//  PARTS
// part 'cart_provider.g.dart';

//  PROVIDERS
class CartNotifier extends Notifier<Set<Product>> {
  // Initial Value = State state
  @override
  Set<Product> build() {
    return {
      const Product(
          id: '4',
          title: 'Red Backpack',
          price: 14,
          image: 'assets/products/backpack.png'),
    };
  }

  // Method(s) to update state: add & remove
  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(
    CartNotifier.new);  //((){ return CartNotifier();});
//  //   ///


