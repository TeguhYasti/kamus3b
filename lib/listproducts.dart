import 'package:flutter/material.dart';
import 'package:kamus_trpl3b/productitems.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Foto'),
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 34, 34, 34),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout),
              color: const Color.fromARGB(255, 34, 34, 34)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: (1 / 1.1)),
              itemCount: product.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Material(
                    elevation: 20,
                    borderRadius: BorderRadius.circular(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(product[index][1], scale: 4.5),
                        Text(
                          product[index][0],
                          style: TextStyle(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 34, 34, 34),
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Text(
                            product[index][2],
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.red.shade300,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
