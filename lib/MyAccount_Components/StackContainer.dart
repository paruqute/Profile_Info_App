
import 'package:flutter/material.dart';


import 'CustomCliper.dart';
import 'Top_Bar.dart';



class StackContainer extends StatelessWidget {
  const StackContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Stack(
        children: <Widget>[
          //Container(),
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                color: Color(0xff8921aa),
                // image: DecorationImage(
                //   image: NetworkImage("https://picsum.photos/200"),
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                 backgroundImage: NetworkImage("https://nurserynisarga.in/wp-content/uploads/2019/10/Red-Rose.jpg"),
                  radius: 60.0,
                ),
                SizedBox(height: 4.0),
                Text(
                  "User",
                  style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Developer",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          TopBar(),
        ],
      ),
    );
  }
}