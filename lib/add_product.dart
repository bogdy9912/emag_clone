import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emag_clone/src/models/products/index.dart';

import './src/data/search_index.dart';

Future<void> main() async {
  List<Map<String, dynamic>> bd = <Map<String, dynamic>>[
    <String, dynamic>{
      "id": 10,
      "title": "SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s",
      "price": 109.0,
      "description":
          "Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)",
      "category": "electronics",
      "image": "https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg"
    },
    <String, dynamic>{
      "id": 1,
      "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      "price": 109.95,
      "description":
          "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
      "category": "men clothing",
      "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"
    },
    <String, dynamic>{
      "id": 14,
      "title": "Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) – Super Ultrawide Screen QLED ",
      "price": 999.99,
      "description":
          "49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ultra fast response time work to eliminate motion blur, ghosting, and reduce input lag",
      "category": "electronics",
      "image": "https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg"
    },
    <String, dynamic>{
      "id": 15,
      "title": "BIYLACLESEN Women's 3-in-1 Snowboard Jacket Winter Coats",
      "price": 56.99,
      "description":
          "Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates",
      "category": "women clothing",
      "image": "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg"
    },
  ];

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  for (dynamic item in bd) {
    final DocumentReference ref = firestore.collection('products').doc();

    final Product product = Product((ProductBuilder b) {
      b
        ..id = ref.id
        ..title = item['title']
        ..price = item['price']
        ..description = item['description']
        ..category = item['category']
        ..images = ListBuilder<String>(<String>[
          item['image'],
          item['image'],
          item['image'],
        ])
        ..review = 0.0
        ..productState = ProductState.inStock
        ..searchIndex =ListBuilder<String>(<String>[item['title']].searchIndex);
    });
    await ref.set(product.json);
  }
}
