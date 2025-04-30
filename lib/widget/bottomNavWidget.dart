import 'package:firstapp/view/confirmationPage.dart';
import 'package:firstapp/view/favoritePage.dart';
import 'package:firstapp/view/homepage.dart';
import 'package:firstapp/view/personPage.dart';
import 'package:firstapp/view/shoppingPage.dart';
import 'package:flutter/material.dart';

Widget bottomNav(BuildContext context, int currentIndexs) {
  final isSelectIndex = currentIndexs;
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: currentIndexs,
    onTap: (index) {
      if (currentIndexs == index) return;

      switch (index) {
        case 0:
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          }
          break;
        case 1:
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Favoritepage()),
            );
          }
          break;
        case 2:
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Shoppingpage()),
            );
          }
          break;
        case 3:
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Confirmationpage()),
            );
          }
          break;
        case 4:
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Personpage()),
            );
          }
          break;
      }
    },
    items: [
      BottomNavigationBarItem(
        icon: Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:
                (isSelectIndex == 0)
                    ? Colors.green.shade400
                    : Colors.transparent,
          ),
          child: Icon(Icons.home),
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:
                (isSelectIndex == 1)
                    ? Colors.green.shade400
                    : Colors.transparent,
          ),
          child: Icon(Icons.favorite),
        ),

        label: "",
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:
                (isSelectIndex == 2)
                    ? Colors.green.shade400
                    : Colors.transparent,
          ),
          child: Icon(Icons.shopping_cart_outlined),
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:
                (isSelectIndex == 3)
                    ? Colors.green.shade400
                    : Colors.transparent,
          ),
          child: Icon(Icons.confirmation_num_outlined),
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color:
                (isSelectIndex == 4)
                    ? Colors.green.shade400
                    : Colors.transparent,
          ),
          child: Icon(Icons.person),
        ),
        label: "",
      ),
    ],
  );
}
