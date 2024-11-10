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
            title: Text('Clark Kent'),
            subtitle: Text('Interview - 12:30 PM'),
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
            title: Text('How to be Happy'),
            subtitle: Text('Training - 2:30 PM'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    );
  }
}
