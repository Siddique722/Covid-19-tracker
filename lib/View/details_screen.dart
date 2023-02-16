import 'package:covid_tracker/View/world_stats.dart';
import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget {
  String image,name;
  int totalCases,totalDeaths,totalRecovered,active, todayRecovered,test,critical;
   DetailScreen(
      {
    required this.name,
    required this.active,
    required this.image,
    required this.test,
    required this.todayRecovered,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecovered,
    required this.critical,
      });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.06),
                child: Card(
                  child:  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*.067),
                      ReuseableRow(title: 'cases', value: widget.totalCases.toString()),
                      ReuseableRow(title: 'Recovered', value: widget.totalRecovered.toString()),
                      ReuseableRow(title: 'Death', value: widget.totalDeaths.toString()),
                      ReuseableRow(title: 'Critical', value: widget.critical.toString()),
                      ReuseableRow(title: 'Today Recovered', value: widget.totalRecovered.toString()),

                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          ),
        ],
      ),
    );
  }
}
