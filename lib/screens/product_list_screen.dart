import 'package:bloc_shopping/blocs/cart_bloc.dart';
import 'package:bloc_shopping/blocs/product_bloc.dart';
import 'package:bloc_shopping/models/cart_item.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, "/cart"),
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: buildProductList(),
    );
  }

  Widget buildProductList() {
    return StreamBuilder(
      initialData: productBloc.getAll(),
      stream: productBloc.getStream,
      builder: (context, snapshot) {
        return snapshot.data.length > 0
            ? buildProductListItem(snapshot)
            : Center(
                child: Text("Loading..."),
              );
      },
    );
  }

  Widget buildProductListItem(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, index) {
        final list = snapshot.data;

        return ListTile(
          title: Text(
            list[index].name,
          ),
          subtitle: Text(
            list[index].price.toString(),
          ),
          trailing: IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {
              cartBloc.addToCart(
                CartItem(list[index], 1),
              );
            },
          ),
        );
      },
    );
  }
}
