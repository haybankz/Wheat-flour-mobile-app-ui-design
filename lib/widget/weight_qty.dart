import 'package:flutter/material.dart';

class WeightAndQty extends StatelessWidget{

  Widget build(BuildContext context){

     int _selectedRadioTile;
    return Row(
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
                                          groupValue: _selectedRadioTile,
                                          onChanged: (val) {
                                            _selectedRadioTile = val;
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
                                          groupValue: _selectedRadioTile,
                                          onChanged: (val) {
                                            _selectedRadioTile = val;
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
                          );
                          
  }
}