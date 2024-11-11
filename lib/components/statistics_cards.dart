import 'package:flutter/material.dart';

class StatisticsCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        StatisticCard('15', 'ايام\nالحضور', Colors.green),
        StatisticCard('8', 'ايام\nالغياب', Colors.greenAccent),
        StatisticCard('2', 'ايام\nالتأخير', Colors.lightGreen),
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
            Text(
              count,
              style: TextStyle(
                  fontFamily: "Cairo",
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 1),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: "Cairo",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
