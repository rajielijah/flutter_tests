import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tests/explore_model.dart';
import 'package:flutter_tests/expore_api.dart';
import 'package:flutter_tests/size.dart';


class Explore extends StatefulWidget {
  const Explore({ Key? key }) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  late Future<dynamic> foodbank;

  @override
  void initState() {
    super.initState();
    foodbank = FoodBank.instance!.getFoodBank();
  }
  
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: resHeight(11, sHeight), right: resHeight(21.36, sHeight)),
            child: Column(
              children: [
                SizedBox(height: resHeight(22, sHeight),),
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new_outlined, size: resHeight(12, sHeight),),
                    SizedBox(width: resWidth(19, sWidth),),
                    Expanded(child: Text('Explore', style: TextStyle(fontSize: resHeight(14, sHeight), color: Color(0xFF013A4D )),)),
                    Icon(Icons.search, size: resHeight(12, sHeight),),
                    SizedBox(width: resWidth(19, sWidth),),
                    SizedBox(
                      height: resHeight(22.64, sHeight),
                      width: resWidth(22.64, sWidth),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xFF013A4D), child: Icon(
                          Icons.shopping_cart_checkout_outlined, size: resHeight(12, sHeight),),))
                  ],
                ),
                SizedBox(height: resHeight(21, sHeight),),
                Image.asset('assets/images/unsplash.png'),
                SizedBox(height: resHeight(16, sHeight),),
                Padding(
                  padding: EdgeInsets.only(left: resHeight(21, sHeight), right: resHeight(36, sHeight)),
                  child: Row(
                    children: [
                      Expanded(child: Text('Global Steak', style: TextStyle(fontSize: resHeight(16, sHeight),fontWeight: FontWeight.w600),)),
                      Text('\$30',  style: TextStyle(fontSize: resHeight(16, sHeight),fontWeight: FontWeight.w700))
                    ],
                  ),
                ),
                SizedBox(height: resHeight(5, sHeight),),
                Padding(
                  padding: EdgeInsets.only(left: resHeight(21, sHeight), right: resHeight(16, sHeight)),
                  child: Row(
                    children:  [
                      Expanded(child: Text('Supreme King Size Double \nSteak Burger')),
                      Container(height: resHeight(26, sHeight), width: resWidth(71, sWidth), 
                        decoration: BoxDecoration(color: Color(0xFFFFC700), borderRadius: BorderRadius.circular(5)),
                        child: Center(child: Text('Add to Cart', style: TextStyle(fontSize: resHeight(9, sHeight)),)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: resHeight(19, sHeight),),
                Divider(),
                SizedBox(height: resHeight(14, sHeight),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: resHeight(19, sHeight), width: resWidth(42, sWidth), 
                      decoration: BoxDecoration(color: Color(0xFFFFC700), borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text('Steaks', style: TextStyle(fontSize: resHeight(9, sHeight)),)),
                    ),
                    SizedBox(width: resWidth(40, sWidth),),
                    Text('Veg', style: TextStyle(fontSize: resHeight(9, sHeight)),),
                    SizedBox(width: resWidth(40, sWidth),),
                    Text('Beef', style: TextStyle(fontSize: resHeight(9, sHeight)),),
                    SizedBox(width: resWidth(40, sWidth),),
                    Text('Chicken', style: TextStyle(fontSize: resHeight(9, sHeight)),)
                  ],
                ),
                SizedBox(height: resHeight(16, sHeight),),
                FutureBuilder<dynamic>(
                  future: foodbank,
                  builder: (context, snapshot) {
                    if(snapshot.data != null) {
                  return GridView.count(
                    crossAxisCount: 2,
                          crossAxisSpacing: 0,
                          physics: const NeverScrollableScrollPhysics(),
                          mainAxisSpacing: 1.0,
                          shrinkWrap: true,
                    children: List.generate(snapshot.data.length, (index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(child: SvgPicture.network(snapshot.data[index].image!)),
                          SizedBox(height: resHeight(22, sHeight), 
                              child: Center(child: Text(snapshot.data[index].title!, style: TextStyle(fontWeight: FontWeight.w600, fontSize: resHeight(10, sHeight)),)),),
                          SizedBox(height: resHeight(2, sHeight),),
                            Center(
                              child: Container(height: resHeight(30, sHeight), width: resWidth(93, sWidth), 
                              decoration: BoxDecoration(color: const Color(0xFFFFC700), borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Add to cart', style: TextStyle(fontSize: resHeight(9, sHeight)),),
                                  SizedBox(width: resWidth(10, sWidth),),
                                  Text("\$${snapshot.data[index].price!}",  style: TextStyle(fontSize: resHeight(10, sHeight), fontWeight: FontWeight.w700),)
                                ],
                              ),
                          ),
                            ),
                        ],
                      );
                    }),
                  );
                  }
                  else {
                    return Container();
                  }}
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}