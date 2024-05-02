//  //   ///
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
import '../data/products.dart';
import '../models/product.dart';
//  PARTS
part 'products_provider.g.dart';

//  PROVIDERS
// final productsProvider = Provider<List<Product>>((ref) {
//   return allProducts;
// });
// final reducedProductsProvider = Provider<List<Product>>(
//   (ref) {
//     return allProducts.where((p) {
//       return p.price < 50;
//     }).toList();
//   },
// );

//  GENERATED PROVIDERS
@riverpod
List<Product> products(ProductsRef ref) {
  return allProducts;
}

@riverpod
List<Product> reducedProducts(ReducedProductsRef ref) {
  return allProducts.where((p) {
    return p.price < 50;
  }).toList();
}


//  //   ///

