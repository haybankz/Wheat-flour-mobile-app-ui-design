import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wheat_flour_mobile_app_ui_design/widget/app_bar.dart';
import 'package:wheat_flour_mobile_app_ui_design/widget/buy_button.dart';
import 'package:wheat_flour_mobile_app_ui_design/widget/details_and_rating.dart';
import 'package:wheat_flour_mobile_app_ui_design/widget/product_and_price.dart';
import 'package:wheat_flour_mobile_app_ui_design/widget/weight_qty.dart';

class HomePage extends StatelessWidget {
 
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

                          WeightAndQty(),

                          SizedBox(height: 30,),

                          BuyButton(),
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
