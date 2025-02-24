import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 150,),
          Center(
            child: SizedBox(
              width: 300,
              height: 200,
              child: Image.asset("images/OIP.jpg") ,
            ),
          ),
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.all(40),
            child: Center(
              child: Text(
                "Educational learning apps are designed to be engaging and enjoyable for students. Knowledge augmentation, tailored learning experiences, improved engagement.",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}