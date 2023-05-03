import 'package:flutter/material.dart';
import '../constants/AppData.dart';

class DetailScreen extends StatefulWidget {
   String appBarName;
   DetailScreen({required this.appBarName,Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.appBarName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              children:[
                 Text(
                     appData[widget.appBarName]?.toString()??"",
                     textAlign: TextAlign.center,
                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.orange,)),
              ],
            ),
          ),
        ),
      )
    );
  }
}
