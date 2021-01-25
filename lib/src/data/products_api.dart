import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emag_clone/src/models/products/index.dart';
import 'package:meta/meta.dart';

class ProductsApi {
  ProductsApi({@required FirebaseFirestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<List<Product>> getProducts() async {
    final QuerySnapshot querySnapshot = await _firestore.collection('products').get();
    final List<QueryDocumentSnapshot> docs = querySnapshot.docs;
    final List<Product> productList =
        docs.map<Product>((QueryDocumentSnapshot e) => Product.fromJson(e.data())).toList();

    return productList;
  }

  Future<List<Product>> searchProduct(String query) async {
    final QuerySnapshot querySnapshot =
        await _firestore.collection('products').where('searchIndex', arrayContains: query).get();

    final List<QueryDocumentSnapshot> docs = querySnapshot.docs;

    final List<Product> searchResult = docs.map((QueryDocumentSnapshot e) => Product.fromJson(e.data())).toList();

    return searchResult;
  }
}
