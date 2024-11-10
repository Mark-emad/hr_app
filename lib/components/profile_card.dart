// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          foregroundImage: AssetImage('assets/images/ProfilePIC.jpg'),
          radius: 36,
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 16,
            ),
            Text(
              'Mark Emad',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              'HR Coordinator',
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ],
    );
  }
}