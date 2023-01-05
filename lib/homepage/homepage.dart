
import 'package:flutter/material.dart';

import '../product/model.dart';
import '../product/product.dart';

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  List<Promodel> products = [
    Promodel(
        image: 'https://m.media-amazon.com/images/I/71Nv2xl+KjL._SY450_.jpg',
        name: 'New Stylish backpack',
        price: '100\$'),
          Promodel(
        image: 'https://images.pexels.com/photos/1152077/pexels-photo-1152077.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        name: 'ladies leather backpack',
        price: '90\$'),
         Promodel(
        image: 'https://contents.mediadecathlon.com/p1760088/11f22e92f5f122cff148b9db71c9cb93/p1760088.jpg?format=auto&quality=70&f=650x0',
        name: 'Football backpack',
        price: '150\$'),
     
         
  ];

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'What would you like to buy',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.network(
                    'https://cdn2.desidime.com/topics/photos/1496895/original/banner-PFrWi04-05-36.jpg?1666166497')
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: Icon(Icons.home_filled, color: Colors.pink[200]),
                  ),
                  const Text('Popular')
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: Icon(
                      Icons.timelapse,
                      color: Colors.amber[300],
                    ),
                  ),
                  const Text('Flash sell')
                ],
              ),
              Column(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: Icon(Icons.delivery_dining),
                  ),
                  Text('evaly store')
                ],
              ),
              Column(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: Icon(Icons.card_giftcard),
                  ),
                  Text('voucher')
                ],
              )
            ],
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Product(
                          pro: products,
                        ))),
            child: Card(
              child: Column(
                children: [
                  Image.network(
                      'https://m.media-amazon.com/images/I/71BLyOThttL._UX569_.jpg'),
                  const Text('Bags&Luggage')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
