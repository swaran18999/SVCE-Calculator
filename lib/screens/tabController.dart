import 'package:flutter/material.dart';
import 'package:svcecalc/screens/internalCalc.dart';
class TabbedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Text('Internal')),
                Tab(icon: Text('Grade')),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('SVCE Calculator'),
          ),
          body: TabBarView(
            children: [
              SVCECalc(),
              GradeCalc(),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}