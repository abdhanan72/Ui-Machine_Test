
import 'package:flutter/material.dart';
import 'package:machine_test/product/model.dart';

import 'detail.dart';

class Product extends StatelessWidget {
  Product({super.key, required this.pro});

  List<Promodel> pro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 105.0),
            child: Title(
                color: Colors.red,
                child: const Text(
                  'evaly',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                  textAlign: TextAlign.start,
                )),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              ))
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: pro.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(pro: pro[index]);
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.pro,
  }) : super(key: key);

  final Promodel pro;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(pro: pro),)),
      child: SafeArea(
        child: Container(height: 50,
          child: Card(
            
            child: Padding(
              padding: const EdgeInsets.only(top: 47.0),
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    child: Image.network(
                      pro.image!,
                      fit: BoxFit.cover,
                    ),
                    aspectRatio: 2 / 1,
                  ),
                  Text(pro.name!),
                  Text(pro.price!,style: TextStyle(color: Colors.orangeAccent,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
