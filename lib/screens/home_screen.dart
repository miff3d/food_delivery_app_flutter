import 'package:flutter/material.dart';
import 'package:food_app/widgets/recent_orders.dart';


import '../data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle,),
          iconSize: 30, 
          onPressed: () {  },
        ),
        title: Text('Food Delivery'),
        centerTitle: true,
        actions: [
          TextButton(
            child: Text('Cart (${currentUser.cart.length})',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            )
            ),
            
            onPressed: () {  },
           )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(width: 0.8),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      width: 0.8,
                      color:  Theme.of(context).primaryColor,
                    ) 
                ),
                hintText: 'Search Food or Restaurants',
                prefixIcon: Icon(Icons.search, size: 30.0,),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear, size: 30.0,), 
                  onPressed: () {  

                  },
                ),
              ),
            ),
          ),
          const RecentOrders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Nearby Restaurants',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}