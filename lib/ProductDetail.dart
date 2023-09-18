// product_detail.dart
import 'package:flutter/material.dart';
import 'package:ui_practice/products.dart'; // Import the product model

class ProductDetail extends StatelessWidget {
  final Product product; // Receive the product as a parameter

  ProductDetail(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "    S H O P N O W",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            child: Container(
              color: Colors.grey.shade300,
              height: 270,
              width: 400,
              child: Image.asset(
                product.imagepath,
                scale: 2,
                // Adjust the fit as needed
              ),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            product.name,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            ' \$${product.price.toString()}',
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          const SizedBox(height: 40),
          const Divider(
            color: Colors.black,
            thickness: 1,
            indent: 50,
            endIndent: 50,
          ),
          const SizedBox(height: 50),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 25)),
              child: const Text(
                "Add To Cart",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
