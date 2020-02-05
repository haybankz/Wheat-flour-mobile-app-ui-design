import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wheat_flour_mobile_app_ui_design/widget/app_bar.dart';
import 'package:wheat_flour_mobile_app_ui_design/widget/details_and_rating.dart';
import 'package:wheat_flour_mobile_app_ui_design/widget/product_and_price.dart';

class HomePage extends StatelessWidget {
  int selectedRadioTile;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFFD7B7AF),
      color: Color(0xFFF9F9F8),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFf9f9f8),
          appBar: PreferredSize(
            child: Center(child: MyAppBar()),
            preferredSize: Size(double.infinity, 70),
          ),
          body: NestedScrollView(
            // physics: BouncingScrollPhysics(
            // parent: AlwaysScrollableScrollPhysics(),
            // ),
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Color(0xFFF9F9F8),
                  expandedHeight: Platform.isAndroid ? 220.0 : 320.0,
                  brightness: Brightness.light,
                  floating: false,
                  pinned: true,
                  elevation: 0.0,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                  
                    background: Center(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFD7B7AF),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
                        ),
                        // color: Colors.red[200],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // SizedBox(
                            //   height: 40,
                            // ),
                            Text(
                              "Best Wheat for Rotis",
                              style: TextStyle(
                                  color: Color(0xFFF9F9F8),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Center(
                              widthFactor: 3.6,
                              child: Text(
                                "The wheat closely resemble Spelt, Einkorn and Farro - in its nutrient profile",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFF9F9F8),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Center(
                              child: Icon(
                                Icons.local_grocery_store,
                                size: 120,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF9F9F8),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              // color: Colors.white,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    // Container(
                    //   margin: EdgeInsets.only(bottom: 20),
                    //   height: 30,
                    //   decoration: BoxDecoration(
                    //     color: Colors.brown[200],
                    //     borderRadius: BorderRadius.only(
                    //       bottomLeft: Radius.circular(40),
                    //       bottomRight: Radius.circular(40),
                    //     ),
                    //   ),
                    // ),

                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[

                          SizedBox( height: 60,),

                          ProductAndPrice(),

                          SizedBox( height: 18,),

                          ProductDescAndRating(),

                          SizedBox( height: 40,),
                          
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'WEIGHT',
                                    style: TextStyle(
                                        color: Color(0XFF9B9793),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  // SizedBox(height: 10,),
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                      unselectedWidgetColor: Colors.red,
                                      // disabledColor: Colors.blue,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      // mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        Radio(
                                          value: 0,
                                          groupValue: selectedRadioTile,
                                          onChanged: (val) {
                                            selectedRadioTile = val;
                                          },
                                          activeColor: Colors.deepOrangeAccent,
                                        ),
                                        Text(
                                          '5kg',
                                          style: new TextStyle(
                                            fontSize: 14.0,
                                            color: Color(0XFF5A3923),
                                          ),
                                        ),
                                        SizedBox(width: 30),
                                        Radio(
                                          value: 0,
                                          groupValue: selectedRadioTile,
                                          onChanged: (val) {
                                            selectedRadioTile = val;
                                          },
                                          activeColor: Colors.deepOrangeAccent,
                                        ),
                                        Text(
                                          '10kg',
                                          style: new TextStyle(
                                            fontSize: 14.0,
                                            color: Color(0XFF5A3923),
                                          ),
                                        ),
                                        // Expanded(
                                        //                                         flex: 7,
                                        //                                         child: RadioListTile(
                                        //       groupValue: selectedRadioTile,
                                        //       onChanged: (val){},
                                        //       title: new Text("Omnivore"),
                                        //       value: 2,
                                        //     ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'QTY',
                                    style: TextStyle(
                                        color: Color(0XFF9B9793),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  // SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      IconButton(
                                          icon: Icon(
                                            Icons.plus_one,
                                            color: Colors.red,
                                          ),
                                          onPressed: null),
                                      Text(
                                        "2 pc",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0XFF5A3923),
                                            fontWeight: FontWeight.w500),
                                      ),
                                      IconButton(
                                          icon: Icon(
                                            Icons.receipt,
                                            color: Colors.red,
                                          ),
                                          onPressed: null)
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          RaisedButton(
                            splashColor: Color(0xFFF9F9F8),
                            onPressed: () {},
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                color: Color(0xFFF9F9F8),
                              ),
                            ),
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red),
                            ),
                            padding: EdgeInsets.only(
                                left: 60, right: 60, top: 10, bottom: 10),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
