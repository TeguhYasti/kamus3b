import "package:flutter/material.dart";

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 34, 34, 34),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
              color: const Color.fromARGB(255, 34, 34, 34)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_box),
              color: const Color.fromARGB(255, 34, 34, 34)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: const Color.fromARGB(255, 34, 34, 34)),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('./lib/assets/cart.png'),
            Text(
              'Shopping cart empty...',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
