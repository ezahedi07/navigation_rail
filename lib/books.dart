import 'package:flutter/material.dart';
import 'package:navigationrail/model/books.dart';
import 'package:navigationrail/styleguide.dart';
class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(0),bottomLeft: Radius.circular(50),),
        color: Colors.pinkAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(" CHILDREN'S BOOKS",style: AppTheme.display1,),
          ),
          Center(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: books.length,
                itemBuilder: (BuildContext context, int index){
                  Book book = books[index];
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
                                  color: Color(book.color),
                                ),
                                child: Center(child: Text(book.name,style: AppTheme.subHeading1,)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Image.asset(book.imageUrl,height: 150,width: 150,),
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
