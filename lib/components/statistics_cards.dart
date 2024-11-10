import 'package:flutter/material.dart';

class StatisticsCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        StatisticCard('15', 'Resume\nReview', Colors.green),
        StatisticCard('8', 'Interviews', Colors.greenAccent),
        StatisticCard('2', 'Tests\nCheck', Colors.lightGreen),
      ],
    );
  }
}

class StatisticCard extends StatelessWidget {
  final String count;
  final String label;
  final Color color;

  StatisticCard(this.count, this.label, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16),
        width: 100,
        height: 113,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green[300]!,
              Colors.green[700]!,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(count,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height: 1),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
