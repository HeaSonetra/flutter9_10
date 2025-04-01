import 'package:firstapp/model/ProductModel.dart';
import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key, required this.productmodel});
  final Productmodel productmodel;

  @override
  State<Detailpage> createState() => _DetailpageState();
}

var check = false;

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      check = !check;
                    });
                  },
                  child:
                      (check == false)
                          ? Icon(Icons.favorite_border_outlined)
                          : Icon(Icons.favorite, color: Colors.red),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 14),
                  child: Icon(Icons.share),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 240,
              width: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.productmodel.img),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  widget.productmodel.title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.food_bank,color: Colors.red.withOpacity(0.5),),
                SizedBox(width: 8),
                Text(widget.productmodel.decription,style: TextStyle(fontSize: 14,color: Colors.grey[600]),),
                SizedBox(width: 30),
                Icon(Icons.star,size: 26,color: Colors.green,),
                SizedBox(width: 5),
                Text('${widget.productmodel.rate}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                SizedBox(width: 5),
                Text('(${widget.productmodel.map}) Km',style: TextStyle(fontSize: 14,color: Colors.grey[600]),),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios_outlined,size: 12,color: Colors.grey,)
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.amber
              ),
              child: Row(
              children: [
                // GridView.count(
                //   scrollDirection: Axis.horizontal,
                //   crossAxisCount: 3,
                //   mainAxisSpacing: 10,
                //   crossAxisSpacing: 10,
                //   childAspectRatio: 1/1,
                //   children: List.generate(widget.productmodel.size.length,(index)=>Container(
                //       height: 100,
                //       decoration: BoxDecoration(
                        
                //         color: const Color.fromARGB(255, 24, 18, 216)
                //       ),
                //     )
                //   )
                // ),
                Expanded(
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                   
                    ), 
                    itemCount: widget.productmodel.size.length,
                    itemBuilder: (context,index){
                    return Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlue
                          ),
                    );
                  }),
                )
              ],
            ),
          )
            
          ],
        ),
      ),
    );
  }
}
