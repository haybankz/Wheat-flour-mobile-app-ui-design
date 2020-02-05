import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget{

  Widget build(BuildContext context){
    return RaisedButton(
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
                          );
                        
  }
}