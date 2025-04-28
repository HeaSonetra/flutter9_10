import 'package:firstapp/model/ProductModel.dart';
import 'package:firstapp/view/cartpage.dart';
import 'package:flutter/material.dart';
List<Productmodel>  cartProduct=[];
Widget addToCart(BuildContext context, Productmodel product) {
  int selectedSizeIndex =
  product.selectSizeIndex == -1 ? 0 : product.selectSizeIndex;
  double price = product.sizeOption[selectedSizeIndex]["price"];
  int quantity = product.counter > 0 ? product.counter : 1;
  double totalPrice = price * quantity;

  return InkWell(
    onTap: () {
      cartProduct.add(product.copy());
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Cartpage(cartProducts: cartProduct),
        ),
      );
    },
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
            "Add To Cart -",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 20),
          Text(
            "\$${totalPrice.toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}
