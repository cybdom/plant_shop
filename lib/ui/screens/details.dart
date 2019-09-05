import 'package:flutter/material.dart';
import 'package:plant_shop/global.dart';

class Details extends StatelessWidget {
  final int id;

  const Details({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.greenActive,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(color: MyColors.greenActive),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 9.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        InkWell(
                          onTap: () {},
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 11, right: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  shape: BoxShape.circle,
                                ),
                                padding: EdgeInsets.all(11.0),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                      color: MyColors.greenActive,
                                      fontSize: 19,
                                    ),
                                  ),
                                  padding: EdgeInsets.all(5.0),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 21),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "INDOOR",
                                style: Theme.of(context)
                                    .textTheme
                                    .body2
                                    .apply(color: Colors.white70),
                              ),
                              Text(
                                "${products[id]['name']}",
                                style: Theme.of(context)
                                    .textTheme
                                    .display1
                                    .apply(
                                        color: Colors.white,
                                        fontWeightDelta: 2),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                Strings.from,
                                style: Theme.of(context)
                                    .textTheme
                                    .body2
                                    .apply(color: Colors.white70),
                              ),
                              Text(
                                "${products[id]['price']}",
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .apply(color: Colors.white),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                Strings.sizes,
                                style: Theme.of(context)
                                    .textTheme
                                    .body2
                                    .apply(color: Colors.white70),
                              ),
                              Text(
                                "${products[id]['size']}",
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .apply(color: Colors.white),
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Center(
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
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Image.network("${products[id]['img']}"),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: (MediaQuery.of(context).size.height / 2) - 23,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            Strings.allToKnow,
                            style: Theme.of(context)
                                .textTheme
                                .headline
                                .apply(fontWeightDelta: 2),
                          ),
                          SizedBox(
                            height: 21.0,
                          ),
                          Text(Strings.lorem, style: TextStyle(fontSize: 17))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
