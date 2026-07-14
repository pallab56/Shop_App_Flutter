import 'package:flutter/material.dart';
import 'package:shop_app_flutter/global_variable.dart';

class DetailScreen extends StatefulWidget {
  final Map<String, Object> product;

  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late  int currentSize;

  @override
  void initState() {
    super.initState();
    currentSize = (products[0]['sizes'] as List<int>)[0];
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true, title: Text("DetailScreen")),
      body: Column(
        children: [
          Text(
            widget.product['title'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Spacer(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset(
                widget.product['imageUrl'] as String,
                height: 300,
              ),
            ),
          ),

          Spacer(flex: 2),

          Container(
            padding: EdgeInsets.symmetric(vertical: 30),

            height: 250,
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 247, 249, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Text(
                  '\$ ${widget.product['price'] as double}',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: (widget.product['sizes'] as List<int>).length,
                    itemBuilder: (BuildContext context, index) {
                      final selectSize =
                          (widget.product['sizes'] as List<int>)[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: InkWell(
                          onTap: () {
                           
                            setState(() {
                               currentSize = selectSize;
                            });
                          },
                          child: Chip(
                            backgroundColor: currentSize == selectSize
                                ? Theme.of(context).colorScheme.primary
                                : Colors.white,
                            side: BorderSide(
                              color: Color.fromRGBO(245, 247, 249, 1),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
                            ),
                            label: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Text(selectSize.toString()),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      minimumSize: Size(double.infinity, 45),
                    ),
                    icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,
                    ),
                    label: Text(
                      "Add To Cart",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // TextButton(onPressed:(){} ,
          //  child: Row(children: [
          //   Icon(Icons.shopping_cart_outlined),
          //   Text('Add to Cart'),
          //  ],))
        ],
      ),
    );
  }
}
