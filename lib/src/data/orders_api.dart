import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

class OrdersApi {
  const OrdersApi({@required FirebaseFirestore firestore})
      : assert(firestore != null),
        _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<List<Order>> getOrders(String uid) async {
    final QuerySnapshot result = await _firestore.collection('orders').where('uid', isEqualTo: uid).get();
    final List<QueryDocumentSnapshot> docs = result.docs;

    return docs.map((QueryDocumentSnapshot e) => Order.fromJson(e.data())).toList();
  }

  Future<void> createOrder({
    @required String uid,
    @required PaymentMethod methodOfPayment,
    @required double total, //
    @required AddressPoint addressPoint,
    @required List<CartItem> products,
  }) async {
    final DocumentReference ref = _firestore.collection('NOT USE').doc();

    final Order order = Order((OrderBuilder b) {
      b
        ..uid = uid
        ..id = ref.id
        ..methodOfPayment = methodOfPayment
        ..total = total
        ..address = addressPoint.toBuilder()
        ..products = ListBuilder<CartItem>(products)
        ..date = DateFormat('yyyy-MM-dd - kk:mm').format(DateTime.now());
    });

    _firestore.doc('orders/${order.id}').set(order.json);
  }
}
