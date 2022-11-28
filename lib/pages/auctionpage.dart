
import'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nft_app/oop/cardspage.dart';
import 'package:nft_app/descs/description_two.dart';
import 'package:nft_app/descs/descriptionfour.dart';
import 'package:nft_app/descs/descriptionpage_one.dart';
import 'package:nft_app/descs/descriptionthree.dart';
import 'package:nft_app/pages/homepage.dart';

class AuctionPage extends StatefulWidget {
  const AuctionPage({super.key});

  @override
  State<AuctionPage> createState() => _AuctionPageState();
}

class _AuctionPageState extends State<AuctionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // THE BOTTOMNAVIGATION BAR CONTAINING ICONS
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        elevation: 0,
        iconSize: 30,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [ 
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'one'),
          BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined), label: 'two'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: 'three'),
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: 'four'),
          BottomNavigationBarItem(icon: Icon(Icons.width_normal), label: 'five'),

      ]),

      // THE BODY OF THE SCAFFOLD MADE UP OF SEVERAL WIDGETS 
      body: Padding(
        padding: const EdgeInsets.only(bottom: 5, left: 30, right: 30, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // A ROW OF TEXT A AND A CIRCULAR AVATAR
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('A.', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                CircleAvatar(backgroundImage: AssetImage('assets/imagea.jpeg'), 
                radius: 25,),
              ],
            ),
            SizedBox(height: 20,),

             Text('Live', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
             SizedBox(height: 5,),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                 // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Auctions.', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                   SizedBox(width: 140,),
                    Icon(Icons.menu_book),
                    SizedBox(height: 7,),
                  ],
                ),
              ),
               Text('Enjoy! the latest hot auctions.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),),
                SizedBox(height: 10,),
           
             // A CONTAINER WITH ELEVATED BUTTON WHICH IS HOLDING TRENDING AUCTIONS
               Container(
                height: 34,
                 child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                    // AN ELEVATEDBUTTON WITH A BLACK BACKGROUND
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomePage())));
                  }, child: Text('Trending', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(70, 40),
                    primary: Colors.black,
                    onPrimary: Colors.white,
                  ),

                  ),
                      SizedBox(width: 20),

                    // A GROUP OF TEXT BUTTONS IN A ROW
                     TextButton(onPressed: (){}, child:  Text('Digital Arts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),),),
                   
                      SizedBox(width: 20),
                      TextButton(onPressed: (){}, child:  Text('3D Videos', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),),),
                       SizedBox(width: 20),
                      TextButton(onPressed: (){}, child:  Text('Game', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),),),
                       SizedBox(width: 20),
                     TextButton(onPressed: (){}, child:  Text('Collectibles', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),),),
                   
                  ],
                 ),
               ),

               SizedBox(height: 15,),

               Expanded(
                 child:     PageView(
                  scrollDirection: Axis.horizontal,
                  children: [

                    // FIRST ITEMS DESCRIPTION PAGE
                    GestureDetector(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DescriptionPage(),));
                    },
                      child: CardsPage(text_one: 'A', text_two: 'DAY 74', text_three: '@Mark Rise', text_four: '20h:35m:08s', text_five: '15.97 ETH', text_six: 'Remaining Time', text_seven: 'Highest bid', 
                      picture: AssetImage('assets/imagec.png'), )),

                 // SECOND ITEM DESCRIPTIOIN PAGE
                    GestureDetector(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DescriptionTwoPage(),)); 
                      }, 
                      child: CardsPage(text_one: 'A', text_two: 'DAY 74', text_three: '@Mark Rise', text_four: '20h:35m:08s', text_five: '15.97 ETH', text_six: 'Remaining Time', text_seven: 'Highest bid', 
                      picture:   AssetImage('assets/imaged.png'),),
                    ),

                   // THIRD ITEM DESCRIPTION PAGE 

                    GestureDetector(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DescriptionThreePage(),));
                    },
                      child: CardsPage(text_one: 'A', text_two: 'DAY 74', text_three: '@Mark Rise', text_four: '20h:35m:08s', text_five: '15.97 ETH', text_six: 'Remaining Time', text_seven: 'Highest bid', 
                      picture: AssetImage('assets/imagee.png'), )),
                   
                   // FOURTH ITEM DESCRIPTION PAGE
                    GestureDetector(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DescriptionFourPage(),)); 
                      }, 
                      child: CardsPage(text_one: 'A', text_two: 'DAY 74', text_three: '@Mark Rise', text_four: '20h:35m:08s', text_five: '15.97 ETH', text_six: 'Remaining Time', text_seven: 'Highest bid', 
                      picture:   AssetImage('assets/imagef.jpg'),),
                    ),

                  ],
                 ),
               ),


                  ],
                 ),
               ),
    );
  }
}