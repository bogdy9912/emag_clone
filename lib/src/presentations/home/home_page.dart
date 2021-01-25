import 'package:emag_clone/src/actions/products/index.dart';
import 'package:emag_clone/src/models/index.dart';
import 'package:emag_clone/src/presentations/cart/cart_page.dart';
import 'package:emag_clone/src/presentations/products/products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_page == 0) {
      StoreProvider.of<AppState>(context).dispatch(const GetProducts());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const ProductsPage(),
        Container(
          color: Colors.green,
        ),
        const CartPage(),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.purple,
        ),
      ][_page],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: _page,
        onTap: (int position) {
          if (position == 0) {
            StoreProvider.of<AppState>(context).dispatch(const GetProducts());
          }
          setState(() {
            _page = position;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
