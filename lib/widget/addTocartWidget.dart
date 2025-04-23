
import 'package:firstapp/model/ProductModel.dart';
import 'package:firstapp/view/cartpage.dart';
import 'package:flutter/material.dart';

Widget addTocart(BuildContext context,Productmodel listProduct, dynamic widget){
  return InkWell(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cartpage(productmodel: listProduct)),
                        ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      width: 256,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green[600],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Add To Card -",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "\$${widget.productmodel.counter * widget.productmodel.sizeOption[widget.productmodel.selectSizeIndex == -1 ? widget.productmodel.selectSizeIndex = 0 : widget.productmodel.selectSizeIndex = widget.productmodel.selectSizeIndex]["price"]}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
}