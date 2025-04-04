
import 'package:firstapp/model/ProductModel.dart';
import 'package:flutter/material.dart';

Widget isSelected(BuildContext context,Productmodel productmodel,String size,double price){
  return  Container(
                              decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(width: 2,color: Colors.green),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green.shade100,
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                )
                              ]
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 16,),
                                Icon(Icons.radio_button_checked,color: Colors.green,),
                                SizedBox(height: 10,),
                                Text('${size}',style: TextStyle(fontSize: 16,color: Colors.green),),
                                 SizedBox(height:8,),
                                Text('${price}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                              ],
                            ),
                      );
}