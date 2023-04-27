import 'package:flutter/material.dart';
import 'package:hanuman_chalisa_flutter/widgets/custom_card.dart';

import '../constants/texts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: Colors.red[200],
      appBar: AppBar(
        title: Text(hanumanChalisa),
      ),
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(32),
           child: Center(
             child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
               // crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 SizedBox(
                    // height: MediaQuery.of(context).size.height,
                   height: 600,
                    width: MediaQuery.of(context).size.width,
                   child: GridView.count(
                       // crossAxisSpacing: 6, mainAxisSpacing: 6,
                        mainAxisSpacing: 6.0,
                       crossAxisSpacing: 6.0,
                       crossAxisCount: 2,
                       children:  [
                         CardView(cardName:hanumanChalisa ,),
                         CardView(cardName:artiName ,),
                         CardView(cardName:hanumanChalisa ,),
                         CardView(cardName:hanumanChalisa ,),
                         CardView(cardName:hanumanChalisa ,),
                         CardView(cardName:hanumanChalisa ,),
                       ],),
                 ),
               ],
             ),
           ),
         ),
       ),

    );
  }
}
