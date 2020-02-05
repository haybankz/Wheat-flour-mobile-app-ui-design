import 'package:flutter/material.dart';

class ProductDescAndRating extends StatelessWidget{

  Widget build(BuildContext context){
    return Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                // margin: EdgeInsets.only(top: 10, left: 20),

                                child: Text(
                                  "10,000 year old wheat strain with something really cool",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color(0XFF9B9793),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Container(
                                // margin: EdgeInsets.only(right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Color(0XFF9B9793),
                                    ),
                                    Text(
                                      '4.5',
                                      style:
                                          TextStyle(color: Color(0XFF9B9793)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                          
  }
}