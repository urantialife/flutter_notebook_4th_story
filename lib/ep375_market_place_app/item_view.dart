import 'package:flutter/material.dart';
import 'package:flutter_notebook_4th/ep375_market_place_app/market_model.dart';

class MarketItemView extends StatelessWidget {
  final MarketItem item;

  MarketItemView({this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.7,

      child: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        item.market,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        item.place,
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "\$${item.price}",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              color: Colors.pink[50],
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 28,
                    top: 28,
                    child: Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                          color: Colors.pink[100], shape: BoxShape.circle),
                      child: Icon(
                        Icons.clear,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 24,
                    top: 42,
                    bottom: 24,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://www.pngkit.com/png/full/242-2420325_corona-google-search-corona-extra.png"),
                                )
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Corona",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 2,),
                              Text(
                                "Light",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(height: 18,),
                              Text("\$${item.price}", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),),
                              SizedBox(height: 4,),
                              Text("6-pack")
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.keyboard_arrow_up),
                                onPressed: () {},
                              ),
                              Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                    Border.all(color: Colors.pink[100])),
                                child: Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.keyboard_arrow_down),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
