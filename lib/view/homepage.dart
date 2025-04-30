import 'package:carousel_slider/carousel_slider.dart';
import 'package:firstapp/model/CategoryModel.dart';
import 'package:firstapp/model/ProductModel.dart';
import 'package:firstapp/view/confirmationPage.dart';
import 'package:firstapp/view/favoritePage.dart';
import 'package:firstapp/view/personPage.dart';
import 'package:firstapp/view/shoppingPage.dart';
import 'package:firstapp/widget/bestSellerWidget.dart';
import 'package:firstapp/widget/bottomNavWidget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hello✋\n',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        TextSpan(
                          text: 'Delises Agency',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.search, size: 30, color: Colors.grey[600]),
                  SizedBox(width: 20),
                  Icon(Icons.notifications, size: 30, color: Colors.grey[600]),
                ],
              ),
              SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 20,
                  children: [
                    for (var i = 0; i < listCategory.length; i++)
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 5),
                            Container(
                              width: double.infinity,
                              height: 45,
                              child: listCategory[i].img,
                            ),
                            Container(
                              width: double.infinity,
                              height: 40,
                              child: Center(child: Text(listCategory[i].name)),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  viewportFraction: 0.98,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                items: List.generate(
                  listCategory.length,
                  (index) => Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: listCategory[index].img,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'Best Seller',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1 / 1.5,
                ),
                itemCount: listProduct.length,
                itemBuilder:
                    (context, index) => bestSeller(context, listProduct[index]),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNav(context,0)
    );
  }

  
}
