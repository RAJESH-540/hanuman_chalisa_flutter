import 'package:flutter/material.dart';
import 'package:hanuman_chalisa_flutter/constants/texts.dart';

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
        // backgroundColor: Colors.orange[300],
      appBar: AppBar(
        title: Text(widget.appBarName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              children:  const [
                 Text(chailsa,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.orange,))
              ],
            ),
          ),
        ),
      )
    );
  }
}
