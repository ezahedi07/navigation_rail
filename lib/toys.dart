import 'package:flutter/material.dart';
import 'package:navigationrail/ToyDetail.dart';
import 'package:navigationrail/model/toys.dart';
import 'package:navigationrail/styleguide.dart';

class Toys extends StatefulWidget {
  @override
  _ToysState createState() => _ToysState();
}

class _ToysState extends State<Toys> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(50),),
        color: Colors.redAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("CLASSIC TOYS",style: AppTheme.display1,),
          ),
          Center(
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: toys.length,
                itemBuilder: (BuildContext context, int index){
                  Toy toy = toys[index];
                  return InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ToyDetail(
                          toy: toy,
                        ),
                      ),
                    ),

                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 50,),
                        Container(
                          child: Stack(
                            children: <Widget>[
                              SizedBox(height: 30,),
                              Padding(
                                padding: const EdgeInsets.only(left: 120,top: 30),
                                child: Container(
                                  height: 100,
                                  width: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(toy.color),
                                  ),
                                  child: Center(child: Text(toy.name,style: AppTheme.subHeading1,)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Image.asset(toy.imageUrl,height: 150,width: 150,),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );

                }),
          ),
        ],
      ),
    );
  }
}
