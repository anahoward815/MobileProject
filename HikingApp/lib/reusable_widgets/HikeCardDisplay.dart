import 'package:flutter/material.dart';

import '../backend/DefaultHikeList.dart';

class HikeCardDisplay extends StatefulWidget {
  const HikeCardDisplay({Key? key}) : super(key: key);

  @override
  State<HikeCardDisplay> createState() => _HikeCardDisplayState();
}

class _HikeCardDisplayState extends State<HikeCardDisplay> {

  DefaultHikeList hikeList = DefaultHikeList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: hikeList.getHikeList().length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => print(hikeList.getHikeList()[index].getHikeName()),
              child: Card(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(hikeList.getHikeList()[index].getHikeImagePath()),

                    ),
                    Card(
                      margin: EdgeInsets.zero,
                      color: Colors.lightGreen,
                      elevation: 0.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  hikeList.getHikeList()[index].getHikeName(),
                                  style: TextStyle(
                                      fontSize: 20.0
                                  ),
                                ),
                                Text(
                                  hikeList.getHikeList()[index].getHikeDifficulty(),
                                )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              hikeList.getHikeList()[index].getHikeLength().toString(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ),
          );
        },
      ),
    );
  }
}
