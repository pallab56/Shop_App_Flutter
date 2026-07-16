import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/provider/cart_provider.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>().cart;
    // both line are same
    //final cart = Provider.of<CartProvider>(context).cart;
    return Scaffold(
      appBar: AppBar(title: Text('CartPage')),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: ((context, index) {
          final item = cart[index];
          return ListTile(
            title: Text(
              '${item['title']}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            subtitle: Text(
              'size: ${item['size']}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('${item['imageUrl']}'),
              backgroundColor: Colors.white,
            ),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: ((context) {
                    return AlertDialog(
                      title: Text(
                        'Delete Product',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      content: Text(
                        'Are you sure you want to remove the product from your cart?',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'No',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            //both are
                            // Provider.of<CartProvider>(
                            //   context,
                            //   listen: false,
                            // ).removeProduct(item);
                            context.read<CartProvider>().removeProduct(item);
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Yes',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                );
              },
              icon: Icon(Icons.delete_outline, color: Colors.red),
            ),
          );
        }),
      ),
    );
  }
}
