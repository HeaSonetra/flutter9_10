
import 'package:firstapp/model/ProductModel.dart';
import 'package:flutter/material.dart';

Widget isNotSelected(BuildContext context,Productmodel productmodel,String size,double price){
  return  Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(width: 1,color: Colors.grey)
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 16,),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 2,color: Colors.grey)
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('${size}',style: TextStyle(fontSize: 16),),
                                 SizedBox(height:8,),
                                Text('${price}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                              ],
                            ),
                      );
}