import'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  final String text_one;
  final String text_two;
  final String text_three;
  final String text_four;
  final String text_five;
  final String text_six;
  final String text_seven;
  final dynamic picture;
  const CardsPage({super.key,
  required this.text_one,
  required this.text_two,
  required this.text_three,
  required this.text_four,
  required this.text_five,
  required this.text_six,
  required this.text_seven,
  required this.picture,

  });

  @override
  Widget build(BuildContext context) {
           return     Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(5),

                   // THE CONTAINER HOUSING THE IMAGE AND THE ROWS HOLDING TEXTS
                   child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                   child: Padding(
                     padding: const EdgeInsets.all(15),
                     child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // THE FIRST ROW IN THE CONTAINER WHICH IS MADE UP OF TEXTS
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(text_one, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),  SizedBox(width: 10,),
                                Text(text_two, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Text(text_three, style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Expanded(
                          child: ListView(
                          //  physics: NeverScrollableScrollPhysics(),
                            children: [
                              Expanded(
                                child: Container( 
                                  // A SMALL CONTAINER HOLDING THE IMAGE OF THE BIGGER CONTAINER
                                  child:
                                  Image(image: picture, fit: BoxFit.cover ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        // THE SECOND ROW CONTAINER TEXTS IN THE CONTAINER
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(text_four, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            Text(text_five, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        // THE LAST ROW TH CONTAINER MADE OF A GROUP OT TEXTS
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(text_six, style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
                            SizedBox(height: 15,),
                            Text(text_seven, style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
                          ],
                        ),
                      ],
                     ),
                   ), 
                   ),
                 ),
                 );
  }
}

