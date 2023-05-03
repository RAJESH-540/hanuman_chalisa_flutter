import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:hanuman_chalisa_flutter/widgets/custom_card.dart';

import '../constants/texts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var carsList = {
    // CardView(cardName:hanumanChalisa ,),
    // CardView(cardName:artiName ,),
    // CardView(cardName:bajrangPathName ,),
    // CardView(cardName:hanumanChalisa ,),
    // CardView(cardName:hanumanChalisa ,),
    // CardView(cardName:hanumanChalisa ,),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text(hanumanChalisa),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                SizedBox(
                  // height: MediaQuery.of(context).size.height,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.count(
                    // crossAxisSpacing: 6, mainAxisSpacing: 6,
                    mainAxisSpacing: 6.0,
                    crossAxisSpacing: 6.0,
                    crossAxisCount: 2,
                    children: [
                      OpenContainerWrapper(
                        closedBuilder:
                            (BuildContext _, VoidCallback openContainer) {
                          return CardView(
                            cardName: hanumanChalisa,
                            openContainer: openContainer,
                          );
                        },
                        transitionType: ContainerTransitionType.fade,
                        onClosed: (bool) {},
                        appBarName: hanumanChalisa,
                      ),
                      OpenContainerWrapper(
                        closedBuilder:
                            (BuildContext _, VoidCallback openContainer) {
                          return CardView(
                            cardName: bajrangPathName,
                            openContainer: openContainer,
                          );
                        },
                        transitionType: ContainerTransitionType.fade,
                        onClosed: (bool) {},
                        appBarName: bajrangPathName,
                      ),
                      OpenContainerWrapper(
                        closedBuilder:
                            (BuildContext _, VoidCallback openContainer) {
                          return CardView(
                            cardName: artiName,
                            openContainer: openContainer,
                          );
                        },
                        transitionType: ContainerTransitionType.fade,
                        onClosed: (bool) {},
                        appBarName: artiName,
                      ),
                      OpenContainerWrapper(
                        closedBuilder:
                            (BuildContext _, VoidCallback openContainer) {
                          return CardView(
                            cardName: sankathMochan,
                            openContainer: openContainer,
                          );
                        },
                        transitionType: ContainerTransitionType.fade,
                        onClosed: (bool) {},
                        appBarName: sankathMochan,
                      ),
                      OpenContainerWrapper(
                        closedBuilder:
                            (BuildContext _, VoidCallback openContainer) {
                          return CardView(
                            cardName: ramChandarkirplu,
                            openContainer: openContainer,
                          );
                        },
                        transitionType: ContainerTransitionType.fade,
                        onClosed: (bool) {},
                        appBarName: ramChandarkirplu,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
