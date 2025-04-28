import 'package:firstapp/model/ProductModel.dart';
import 'package:firstapp/widget/addTocartWidget.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key, required this.cartProducts, });
  final List<Productmodel>  cartProducts;
  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  double deliveryFee = 5.0;

  double get subtotal {
    double sum = 0;
    for (var product in widget.cartProducts) {
      int selectedSize = product.selectSizeIndex == -1 ? 0 : product.selectSizeIndex;
      double price = product.sizeOption[selectedSize]["price"];
      sum += price * product.counter;
    }
    return sum;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Cart', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: widget.cartProducts.length,
              itemBuilder: (context, index) {
                var product = widget.cartProducts[index];
                int selectedSize = product.selectSizeIndex == -1 ? 0 : product.selectSizeIndex;
                double price = product.sizeOption[selectedSize]["price"];
                
                return Container(
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(product.img),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "\$${price.toStringAsFixed(2)}",
                              style: TextStyle(
                                color: Colors.green[700],
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove_circle_outline, color: Colors.green),
                            onPressed: () {
                              setState(() {
                                product.counter > 1 ? product.counter-- : null;
                              });
                            },
                          ),
                          Text(
                            '${product.counter}',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            icon: Icon(Icons.add_circle_outline, color: Colors.green),
                            onPressed: () {
                              setState(() {
                                product.counter++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Promo code',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Apply'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Subtotal', style: TextStyle(fontSize: 16)),
                    Text("\$${subtotal.toStringAsFixed(2)}", style: TextStyle(fontSize: 16)),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery', style: TextStyle(fontSize: 16)),
                    Text("\$${deliveryFee.toStringAsFixed(2)}", style: TextStyle(fontSize: 16)),
                  ],
                ),
                Divider(height: 60, thickness: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(
                      "\$${(subtotal + deliveryFee).toStringAsFixed(2)}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[700],
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Checkout - \$${(subtotal + deliveryFee).toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
