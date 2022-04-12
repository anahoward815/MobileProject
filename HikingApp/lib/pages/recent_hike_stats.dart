import 'package:flutter/material.dart';
import 'package:hiking_app/backend/Hikes.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';
import 'package:hiking_app/reusable_widgets/HamburgerDrawer.dart';

class RecentHikeStats extends StatefulWidget {
  const RecentHikeStats({Key? key}) : super(key: key);

  @override
  _RecentHikeStatsState createState() => _RecentHikeStatsState();
}

class _RecentHikeStatsState extends State<RecentHikeStats> {

  late Hikes recentHike;

  Map data = {};

  @override
  Widget build(BuildContext context) {

    if(data.isEmpty){
      data = ModalRoute.of(context)!.settings.arguments as Map;
    }

    recentHike = data['hike'];

    return Scaffold(
      appBar: appHeader(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${recentHike.getHikeName()}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                ),
              ),
              Image(
                image: AssetImage(recentHike.getHikeImagePath()),
              ),
              SizedBox(
                height: 10.0,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Stats:',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Distance and Time:',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Total Time: 12 hrs 45 mins',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Total Distance: 14.60 miles',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Elevation Gain: 5,557’',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Caloric Expenditure:',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Calories Burned: 4428 cal',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Breaks, Averages, and Personal Bests :',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Breaks Taken: 10',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Average Break: 5 mins',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Average mph: 3.0 mph',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Longest Non-Stop Distance: 1.64 miles',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Greatest Elevation Gain: 500’',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      drawer: hamburgerDrawer(context),
    );
  }
}
