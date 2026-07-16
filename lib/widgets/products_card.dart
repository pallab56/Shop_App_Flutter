// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProductsCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final int index;

  const ProductsCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: index.isEven
            ? Color.fromRGBO(216, 240, 253, 1)
            : Color.fromRGBO(245, 247, 249, 1),
        border: Border.all(
          color: Color.fromRGBO(216, 240, 253, 1),
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 7),
          Text(
            '\$ ${price.toString()}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Center(child: Image.asset(image, height: 150)),
        ],
      ),
    );
  }
}
