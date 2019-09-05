import 'package:flutter/material.dart';
import 'package:plant_shop/global.dart';
import 'package:plant_shop/ui/screens/screens.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  PageController _controller = PageController();
  int _activePage = 0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: products.length,
      controller: _controller,
      onPageChanged: (active) {
        setState(() {
          _activePage = active;
        });
      },
      itemBuilder: (ctx, id) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => Details(id: id),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        bottom: 25,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: _activePage == id
                                ? MyColors.greenActive
                                : MyColors.greenInactive,
                          ),
                          child: Image.network(
                            products[id]["img"],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 25,
                        right: 25,
                        child: Column(
                          children: <Widget>[
                            Text(
                              Strings.from,
                              style: Theme.of(context)
                                  .textTheme
                                  .title
                                  .apply(color: Colors.white60),
                            ),
                            Text(
                              "\$${products[id]["price"]}",
                              style: Theme.of(context).textTheme.title.apply(
                                  color: Colors.white, fontWeightDelta: 2),
                            ),
                          ],
                        ),
                      ),
                      _activePage == id
                          ? Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  Strings.description,
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .apply(fontWeightDelta: 2),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(Strings.lorem),
              ],
            ),
          ),
        );
      },
    );
  }
}
