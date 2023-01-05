
import 'package:flutter/material.dart';

import '../homepage/homepage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedindex = 0;

  void _onitemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _widgets = [
    Home(),
const Text('data'),
const Text('data'),
const Text('data'),    

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:_widgets.elementAt(_selectedindex) ,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.red,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon:Icon(Icons.home),
        label:'Home',
        
        
        
        ),
         BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'wishlist',
              
    ),

     BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: ' Chart',
     ),
               BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
              ),
    ],
    currentIndex: _selectedindex,
    onTap: _onitemTapped,
    
    ),

      );
  }
}
