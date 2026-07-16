import 'package:flutter/material.dart';
import 'package:shop_app_flutter/global_variable.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
              icon: Icon(Icons.delete_outline, color: Colors.red),
            ),
          );
        }),
      ),
    );
  }
}
