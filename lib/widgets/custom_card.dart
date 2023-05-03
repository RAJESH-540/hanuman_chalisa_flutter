import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:hanuman_chalisa_flutter/views/detail_page.dart';
import 'package:hanuman_chalisa_flutter/views/home_screen.dart';

import '../constants/texts.dart';

class CardView extends StatefulWidget {
   String cardName;
   final VoidCallback openContainer;

   CardView({
     required this.cardName, Key? key, required this.openContainer}) : super(key: key);


  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.openContainer,
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
              Text(widget.cardName,
                textAlign: TextAlign.center, style: TextStyle(fontSize: 16),),
            ],

          ),
        ),
      ),
    );
  }


}

class OpenContainerWrapper extends StatelessWidget {
  const OpenContainerWrapper({
    required this.closedBuilder,
    required this.transitionType,
    required this.onClosed, required this.appBarName,
  });

  final CloseContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;
  final ClosedCallback<bool?> onClosed;
  final String appBarName;

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      transitionType: transitionType,

      closedShape:     RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.0),
    ),

      middleColor: Colors.transparent,
      transitionDuration: Duration(seconds: 1),
      openBuilder: (BuildContext context, VoidCallback _) {
        return  DetailScreen(appBarName: appBarName);
      },
      onClosed: onClosed,
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}
