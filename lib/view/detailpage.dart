import 'package:firstapp/model/ProductModel.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key, required this.productmodel});
  final Productmodel productmodel;

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
       child: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
                Spacer(),
                Icon(Icons.favorite_border_outlined),
                
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 14),
                  child: Icon(Icons.share),
                )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 240,
            width: 240,
            decoration: BoxDecoration(
              image: DecorationImage( 
                image:AssetImage(widget.productmodel.img),)
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text(widget.productmodel.title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
            ],
          )
        ],
       ),
       ),
    );
  }
}
