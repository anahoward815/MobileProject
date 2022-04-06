import 'package:flutter/material.dart';
import 'package:hiking_app/backend/Hikes.dart';

import '../backend/DefaultHikeList.dart';

class HikeCardDisplay extends StatefulWidget {
  late List<Hikes> hikeList;

  HikeCardDisplay({Key? key}) : super(key: key);

  HikeCardDisplay.withList(this.hikeList);

  @override
  State<HikeCardDisplay> createState() => _HikeCardDisplayState();
}

class _HikeCardDisplayState extends State<HikeCardDisplay> {

  late List<Hikes> hikeList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.hikeList.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => print(widget.hikeList[index].getHikeName()),
              child: Card(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(widget.hikeList[index].getHikeImagePath()),

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
                                  widget.hikeList[index].getHikeName(),
                                  style: TextStyle(
                                      fontSize: 20.0
                                  ),
                                ),
                                Text(
                                  widget.hikeList[index].getHikeDifficulty(),
                                )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.hikeList[index].getHikeLength().toString(),
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
