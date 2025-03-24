import 'package:firstapp/model/CategoryModel.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                              TextSpan(text: 'Hello✋\n',style: TextStyle(fontSize: 16, color: Colors.grey[600])),
                              TextSpan(text: 'Delises Agency',style: TextStyle(fontSize: 24, color: Colors.black,fontWeight: FontWeight.w600),)
                        ]
                    )
                  ),
                  Spacer(),
                  Icon(Icons.search,size: 30,color: Colors.grey[600],),
                  SizedBox(width: 20,),
                  Icon(Icons.notifications,size: 30,color: Colors.grey[600])
                ],
              ),
              SizedBox(height: 40,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 20,
                  children: [
                    for(var i=0;i<listCategory.length;i++)
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
