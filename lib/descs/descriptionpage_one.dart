import'package:flutter/material.dart';
import 'package:nft_app/pages/auctionpage.dart';
import 'package:nft_app/pages/homepage.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
        // THE COLUMN HOLDING ALL OTHER WIDGETS ON THE PAGE
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // THE ROW CONTAINING THE ICONS BUTTON AND THE AUCTION TEXT
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    iconSize: 28,
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const AuctionPage())));
                  }, icon: Icon(Icons.arrow_back)),
                  SizedBox(width: 15,),
                  Text('Auctions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                ],
              ),
          // THE ROW CONTAINING FAVORITE ICON AND MORE VERT ICON
              Row(
                children: [
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomePage())));
                  },
                    child: Icon(Icons.favorite, size: 35, color: Colors.pink[400],)),
                    SizedBox(width: 15,),
                  Icon(Icons.more_vert, size: 28,),
                ],
              ),

            ],),
            SizedBox(height: 20,),

            // THE EXPANDED CONTAINER WITH AND IMAGE
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Image(image: AssetImage('assets/imagec.png'), fit: BoxFit.cover,)),
              ),
            ),
            SizedBox(height: 10),

            Text('DAY 74', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 12,),

                  // THE ROW CONTAINING CIRCULAR AVATAR AND A NAME 
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/imagea.jpeg'),
                  radius: 15,
                ),
                SizedBox(width: 20,),
                Text('@Mark Rise', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),)
              ],
            ),

            // THE LONGEST TEXT IN THE COLUMN 
            SizedBox(height: 10,),
           Text('Who we are and what we wil become are there,\n they are around us, they are battling, they are \n resting and they are beeing watched ... More '),
          SizedBox(height: 10,),
           Divider(thickness: 2, color: Colors.black54,),
          SizedBox(height: 10,),

          // ROWS AND CIRCULAR AVATAR WITH THE HIGHEST BID PLACED BY ROSE MERRY

         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/imagea.jpeg'),
                  radius: 30,),
                   SizedBox(width: 18,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Highest bid placed by', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
                      Text('Merry Rose', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                    ],
                  ),
              ],
            ),
            Text('15.97ETH', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          ],
         ),
          SizedBox(height: 10,),
          
       // THE CONTAINER WITH THE PLACED BID
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Placed bid', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                  Text('20h:35m:08s', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),

          ],
        ),
      ),
    );
  }
}