import 'package:flutter/material.dart';
import 'package:flutter_tests/size.dart';


class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFDAB161),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: resHeight(52, sHeight),),
            Image.asset("assets/images/PASS.png"),
            SizedBox(height: resHeight(12, sHeight),),
            Container(
              height: resHeight(26, sHeight),
              width: resWidth(91, sWidth),
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: Text('Buyer', style: TextStyle(fontSize: resHeight(12, sHeight), fontWeight: FontWeight.w400),),),
            ), 
            SizedBox(height: resHeight(11, sHeight),),
            Text('Semedo Dapaah', style: TextStyle(fontSize: resHeight(16, sHeight), color: Colors.white, fontWeight: FontWeight.w700),),
            SizedBox(height: resHeight(2, sHeight),),
            Text('Head Cook /  Marina, Lagos', style: TextStyle(fontSize: resHeight(12, sHeight), color: Colors.white, fontWeight: FontWeight.w400),),
            SizedBox(height: resHeight(13, sHeight),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook, color: Colors.white, size: resHeight(14, sHeight),),
                SizedBox(width: resWidth(17, sWidth),),
                Icon(Icons.linked_camera_outlined, color: Colors.white, size: resHeight(14, sHeight)),
              ],
            ),
            SizedBox(height: resHeight(38.72, sHeight),),
            Container(
              width: resWidth(344, sWidth),
              height: resHeight(390.5, sHeight),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: resHeight(14, sHeight),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Commentaries', style: TextStyle(fontSize: resHeight(14, sHeight)),),
                      SizedBox(width: resWidth(33, sWidth),),
                      Text('Orders', style: TextStyle(fontSize: resHeight(14, sHeight)),),
      
                    ],
                  ),
                  SizedBox(height: resHeight(6, sHeight),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      SizedBox(width: resWidth(20, sWidth),),
                      Text('11', style: TextStyle(fontSize: resHeight(14, sHeight), fontWeight: FontWeight.w700),),
                      SizedBox(width: resWidth(69, sWidth),),
                      Text('86', style: TextStyle(fontSize: resHeight(14, sHeight), fontWeight: FontWeight.w700),),
                    ],
                  ),
                  SizedBox(height: resHeight(16, sHeight),),
                  Divider(),
                  SizedBox(height: resHeight(12, sHeight),),
                  Padding(
                    padding: EdgeInsets.only(left: resHeight(20, sHeight)),
                    child: Text('About', style: TextStyle(fontSize: resHeight(14, sHeight)),),
                  ),
                  SizedBox(height: resHeight(10, sHeight),),
                  Padding(
                    padding: EdgeInsets.only(left: resHeight(20, sHeight), right: resHeight(25.5, sHeight)),
                    child: Text(""" Hello, we want you to work with us in developing a great meal profile. We use this platform to improve our services and give feedback to our customers""",
                      style: TextStyle(fontSize: resHeight(13, sHeight)), textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: resHeight(16, sHeight),),
                  Divider(),
                  SizedBox(height: resHeight(19.5, sHeight),),
                  Padding(
                    padding: EdgeInsets.only(left: resHeight(20, sHeight)),
                    child: Text('Contact', style: TextStyle(fontSize: resHeight(14, sHeight)),),
                  ),
                  SizedBox(height: resHeight(11.5, sHeight),),
                  Padding(
                    padding: EdgeInsets.only(left: resHeight(20, sHeight)),
                    child: Row(
                      children: [
                        Icon(Icons.phone_android_sharp, color: Colors.black, size: resHeight(12, sHeight),),
                        SizedBox(width: resWidth(14, sWidth),),
                        Text('+0 123 4456 7890', style: TextStyle(fontSize: resHeight(13, sHeight)),)
                      ],
                    ),
                  ),
                  SizedBox(height: resHeight(11, sHeight),),
                  Padding(
                    padding: EdgeInsets.only(left: resHeight(20, sHeight)),
                    child: Row(
                      children: [
                        Icon(Icons.forward_to_inbox, color: Colors.black, size: resHeight(12, sHeight),),
                        SizedBox(width: resWidth(14, sWidth),),
                        Text('hello@mytruq.com', style: TextStyle(fontSize: resHeight(13, sHeight)),)
                      ],
                    ),
                  ),
                  SizedBox(height: resHeight(37, sHeight),),
                  Divider(),
                  SizedBox(height: resHeight(11, sHeight),),
                  Center(child: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.grey,))
                ],
              ),
            ),
            SizedBox(height: resHeight(12, sHeight),),

          ],
        ),
      ),
    );
  }
}