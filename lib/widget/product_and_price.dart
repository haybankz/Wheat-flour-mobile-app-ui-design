import 'package:flutter/material.dart';

class ProductAndPrice extends StatelessWidget{

  Widget build(BuildContext context){
    return Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                // margin: EdgeInsets.only(top: 30, left: 20),
                                child: Text(
                                  "Wheat Flour",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.only(top: 30, right: 20),
                                child: Text(
                                  '\$299',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      color: Color(0XFF5A3923),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          );
                          
  }
}