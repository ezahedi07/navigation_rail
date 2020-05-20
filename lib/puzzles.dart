import 'package:flutter/material.dart';
import 'package:navigationrail/model/puzzle.dart';
import 'package:navigationrail/styleguide.dart';
class Puzzle extends StatefulWidget {
  @override
  _PuzzleState createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(50),),
        color: Colors.orangeAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("CLASSIC PUZZLES",style: AppTheme.display1,),
          ),
          Center(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: puzzleList.length,
                itemBuilder: (BuildContext context, int index){
                  Puzzle1 puzzle = puzzleList[index];
                  return Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                                  color: Color(puzzle.color),
                                ),
                                child: Center(child: Text(puzzle.name,style: AppTheme.subHeading1,)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Image.asset(puzzle.imageUrl,height: 150,width: 150,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );

                }),
          ),
        ],
      ),
    );
  }
}
