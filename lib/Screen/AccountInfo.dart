import 'package:accountinfo_flutter_app/Screen/ListView.dart';
import 'package:flutter/material.dart';




class Account extends StatelessWidget {
  const Account({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderContainer(size: size),
            SizedBox(height: 10,),

            Divider(thickness: 1,),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 10),
              child: Text("Account Info",style: TextStyle(
                  fontSize: 16
              ),),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: infoList.length ,
                  itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    child: ListTile(

                      leading: infoList[index].icon,
                      title: Text(infoList[index].title),
                      subtitle: Text(infoList[index].subtitle),


                    ),
                  );
                },),
              ),
            )
          ],
        ),

      ),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height:size.width*0.60 ,

          decoration: BoxDecoration(
              color: Color(0xff9830c0),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90)
              ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0,5),
                spreadRadius: 0,
              ), ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),
                onPressed: (){}),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("My Account",style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Align(
                alignment: Alignment(0, 1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(0,5),
                              spreadRadius: 0,
                            ), ],
                        shape: BoxShape.circle
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,

                        //backgroundImage: NetworkImage("https://nurserynisarga.in/wp-content/uploads/2019/10/Red-Rose.jpg"),
                        radius: 50.0,
                        child: Icon(Icons.perm_identity,size: 50,color: Color(0xffDA44bb) ,),
                      ),
                    ),
                    SizedBox(height: 10.0),
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
            ),
          ],
        )
      ],
    );
  }
}
