import 'package:flutter/material.dart';
import 'package:hanuman_chalisa_flutter/views/detail_page.dart';

class CardView extends StatefulWidget {
   String cardName;
   CardView({
     required this.cardName, Key? key}) : super(key: key);


  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: (){
         Navigator.push(
           context,
           MaterialPageRoute(builder: (context) =>  DetailScreen(appBarName: widget.cardName,)),
         );
       },
      child: Card(
        elevation: 2,
         // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        color: Colors.orange[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: Container(
          height: 300,
          width: 200,
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(widget.cardName, style: TextStyle(fontSize: 16),),
            ],

          ),
        ),
      ),
    );
  }
}
