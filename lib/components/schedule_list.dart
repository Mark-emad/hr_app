import 'package:flutter/material.dart';

class ScheduleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xfff7f7f7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://via.placeholder.com/50"),
            ),
            title: Text(
              'شيفت مسائي',
              style: TextStyle(fontFamily: "Cairo"),
            ),
            subtitle: Text(
              '6 - 12 PM',
              style: TextStyle(fontFamily: "Cairo"),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xfff7f7f7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://via.placeholder.com/50"),
            ),
            title: Text(
              'شيفت صباحي',
              style: TextStyle(fontFamily: "Cairo"),
            ),
            subtitle: Text(
              '9 - 3 PM',
              style: TextStyle(fontFamily: "Cairo"),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    );
  }
}
