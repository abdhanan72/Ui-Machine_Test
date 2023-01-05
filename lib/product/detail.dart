
import 'package:flutter/material.dart';

import 'model.dart';

class Detail extends StatelessWidget {
   Detail({super.key,required this.pro});


  Promodel pro;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body: Column(children:  [
        Card(
          child: Column(children: [
            Image.network(pro.image!)
          ]),
          

        ),
      
        
       const  Card(
          child: ListTile(minLeadingWidth: 12,
          
            leading: Text('SKU'),
            title: Padding(
              padding: EdgeInsets.only(left:60.0),
              child: Text('0x4c86a',style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),

          ),
        ),
         Card(
          child: ListTile(minLeadingWidth: 12,
          
            leading: Text('PRICE'),
            trailing: Text(pro.price!),
            
            

          ),

        ),
      const   Card(
          child: ListTile(minLeadingWidth: 12,
          
            leading: Text('Description'),
            
          ),
        ),
        Card(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {
                
              }, icon:Icon(Icons.favorite)),
              
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFF6F33)),
                onPressed: () {
                
              }, child: Text('ADD TO CART')),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFF6F33)),
                onPressed: () {
                
              }, child: Text('AVAILABLE AT SHOPS'))
            ],
          ),
        )

        
        
      ],),
    );
  }
}