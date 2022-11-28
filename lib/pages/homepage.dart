import'package:flutter/material.dart';
import 'package:nft_app/pages/auctionpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    Padding(
      padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
      // LISTVIEW CONTAINING ALL OTHER WIDGETS
      child: ListView(
        children: [
          
          // FIRST ROW CONTAINING IN ICON AND A CIRCULAR AVATAR
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('A.', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
 
            CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(Icons.account_balance_wallet, color: Colors.white),
            )
          ],
        ),
        SizedBox(height: 20,),

      Row(
        children: [
          Icon(Icons.charging_station_rounded, size: 12,), SizedBox(width: 15,),
          Text('Started', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
          SizedBox(height: 20,),
        ],
      ),
      SizedBox(height: 20,),

     // THESE THREE ROWS CONTAIN THE BIGGER TEXTS
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Discover', style: TextStyle(fontSize: 45, fontWeight: FontWeight.normal),),
          SizedBox(width: 15,),
          Text('Rare', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),)
        ],
      ),
     SizedBox(height: 15,),

     // COLUMNS AND ROWS CONTAINING A THE GROUP OF TEXTS ON COLLECTION OF ITEMS
     Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Collections', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),),
          SizedBox(width: 15,),
          Text('Of', style: TextStyle(fontSize: 45, fontWeight: FontWeight.normal),)
        ],
      ),    
      SizedBox(height: 15,),

     Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text('Art', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),),
          SizedBox(width: 15,),
          Text('&', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),),
          SizedBox(width: 15,),
          Text('NFTs.', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),)
        ],
      ), 

      SizedBox(height: 20,),

      // THIS COLUMN CONTAINS THE SMALL TEXTS 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Digital marketplace for crypto collectibles', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
          Row(
            children: [
              Text('and non-fungible tokens ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
              Text('NFTs', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),   
     SizedBox(height: 15,),

     // THE CONTAINING A GROUP OF FIGURES AND A CONTAINER WITH GESTUREDETECTOR
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // A COLUMN OF FIGURES
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('12.1K+', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
               SizedBox(height: 6,),
               Text('Art work', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
               Text('1.7K+', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
               SizedBox(height: 6,),
               Text('Artist', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
               Text('45K+', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
               SizedBox(height: 6,),
               Text('Auctions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
             ],
           ),
        
           // THE CONTAINER WITH A RIGHT ARROW AND A TEXT

           Container(
            width: 200,
            height: 190,
            color: Colors.deepPurple[100],
            child: Padding(
              padding: const EdgeInsets.all(15),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // THE GESTURE DETECTOR HELPS TO NAVIGATE TO THE NEXT PAGE
                  GestureDetector(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const AuctionPage())));
                  },
                    child: Container(
                      height: 50,
                      width: 60,
                      color: Colors.deepPurple,
                      child: Icon(Icons.arrow_right_alt),
                    ),
                  ),
                  SizedBox(height: 15,),
                   Text('Discover', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  Text('Artwork', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Divider(endIndent: 60,
                    color: Colors.black,
                    thickness: 3,
                  ), 
                ],
              ),
            ),
           )
           
        ],
      ), 
SizedBox(height: 30),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text('Supported by', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
    Icon(Icons.api_outlined, size: 30), 
    Icon(Icons.invert_colors, size: 30,),  
    Icon(Icons.unfold_less, size: 30,),
  ],
),
        
      ],
      ),
    ),
    );
  }
}