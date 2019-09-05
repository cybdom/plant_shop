import 'package:flutter/material.dart';
import 'package:plant_shop/global.dart';
import 'package:plant_shop/ui/widgets/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey[500],
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              Strings.topPicks,
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .apply(color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              height: 25,
              child: CategoryMenu(
                list: plantsCat,
              ),
            ),
            Expanded(
              child: ProductList(),
            ),
          ],
        ),
      ),
    );
  }
}
