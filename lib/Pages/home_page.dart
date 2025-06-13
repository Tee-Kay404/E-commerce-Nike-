import 'package:ecommerce_app/Pages/cart_page.dart';
import 'package:ecommerce_app/Pages/shop_page.dart';
import 'package:ecommerce_app/components/bottom_nav_bar.dart';
import 'package:ecommerce_app/components/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this index is to control the navigation bar
  int selectedIndex = 0;

  // function to navigate the bottom navigation bar
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  int currentPage = 0;

  final List<Widget> pages = [
    // Shop page
    const ShopPage(),

    // Cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        title: Image.asset('assets/images/Nike-Logo-Free-PNG-Image.png',
            scale: 10),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: const MyDrawer(),
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
    );
  }
}
