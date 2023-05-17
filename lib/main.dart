import 'package:flutter/material.dart';
import 'package:flutter_grocery_ui/item_widget.dart';

import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final data = Product(
    'Iphone 13',
    'Rp.12.999.999',
    '128 GB',
    'assets/img1.png',
    'iPhone 13. Sistem kamera ganda paling canggih yang pernah ada di iPhone. Chip A15 Bionic yang secepat kilat. Lompatan besar dalam kekuatan baterai. Desain kokoh. Dan layar Super Retina XDR yang lebih cerah.'
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text(
          'Galeri Apple ',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.black,
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 3,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text(
                          "0",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            return ItemWidget(product: allData[index]);
          },
          itemCount: allData.length,
        ),
      ),
    );
  }
}
