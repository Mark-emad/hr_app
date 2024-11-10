import 'package:flutter/material.dart';

class SignWidget extends StatelessWidget {
  const SignWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Sign In Icon and Label
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Action for Sign In
                    print("Sign In Pressed");
                  },
                  child: GradientIcon(
                    icon: Icons.login_outlined,
                    size: 50,
                    gradient: LinearGradient(
                      colors: [
                        Colors.green[400]!,
                        Colors.green[800]!,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Sign In',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            // Sign Out Icon and Label
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Action for Sign Out
                    print("Sign Out Pressed");
                  },
                  child: GradientIcon(
                    icon: Icons.logout_outlined,
                    size: 50,
                    gradient: LinearGradient(
                      colors: [
                        Colors.green[400]!,
                        Colors.green[800]!,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Gradient gradient;

  const GradientIcon({
    required this.icon,
    required this.size,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Icon(
        icon,
        size: size,
        color: Colors.white, // Keep it white for gradient effect
      ),
    );
  }
}



/*
ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign in',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(210, 50),
                backgroundColor: Colors.green[400],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign out',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(210, 50),
                backgroundColor: Colors.green[400],
              ),
            ),
*/