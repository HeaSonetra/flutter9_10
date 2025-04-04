import 'package:firstapp/model/ProductModel.dart';
import 'package:firstapp/view/detailpage.dart';
import 'package:flutter/material.dart';

Widget bestSeller(BuildContext context,Productmodel listProduct){
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(productmodel: listProduct)));
      },
      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.withOpacity(0.6),),
                            borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Text(
                              overflow: TextOverflow.ellipsis,
                              listProduct.title,
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              '\$${listProduct.sizeOption[0]["price"]}',
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.grey),
                            ),
                            
                            Container(
                              height: 140,
                              width: double.infinity,
                           
                              child:Image(image: AssetImage(listProduct.img)),
                            ),
                         
                            Row(
                              children: [
                                SizedBox(width: 8,),
                                Text('🔥',style: TextStyle(fontSize: 20),),
                                SizedBox(width: 8,),
                                Text('${listProduct.calories}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                SizedBox(width: 8,),
                                Text('calories',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500))
                              ],
                            ),
                            SizedBox(height: 16,),
                            Row(
                              children: [
                                SizedBox(width: 10,),
                                Icon(Icons.access_time_rounded,color: Colors.grey,),
                                SizedBox(width: 6,),
                                Text('${listProduct.map}'),
                                Spacer(),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Colors.lightGreen,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(child: Text('+',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),)),
                                ),
                                SizedBox(width: 10,),
                              ],
                            )
                          ],
                        ),
                  ),
    );
  }