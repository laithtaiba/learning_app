import 'package:flutter/material.dart';

class MyLearningPage extends StatelessWidget {
  final images1 = <Image>[
    Image.asset("images/Screenshot (60).png"),
    Image.asset("images/Screenshot (61).png"),
    Image.asset("images/Screenshot (54).png"),
    Image.asset("images/R (1).jpg"),
  ];

  final images2 = <Image>[
    Image.asset("images/Screenshot (54).png"),
    Image.asset("images/R (1).jpg"),
    Image.asset("images/Screenshot (61).png"),
    Image.asset("images/Screenshot (60).png"),
  ];

  final List categories = [
    'Development',
    'Languages',
    'Design',
    'It & Software',
    'Business',
    'Finance & Accounting',
    'Marketing',
    'Music',
    'Lifestyle',
    'Office Productivity',
  ];

  final List courseName = [
    'Mastering BGP in Depth on Cisco Routers',
    '21 Day Crash Course in Emotional Intelligence',
    'How to Develop Emotional Resilience to Manage Stress',
    'CCNP All_in 1 Vid With Chirs Bryant Develop ',
  ];

  final List instructoName = [
    'Laith Taiba',
    'Shahd Dabaan',
    'Mayyar Sahlol',
    'Leen Asfour',
  ];

  final List coursePrice = [
    '110',
    '90',
    '85',
    '100',
  ];

  MyLearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(58, 199, 46, 100),
        title: const Text("MyLearning"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(140, 150, 100, 50),
            child: const Icon(
              Icons.logout,
              size: 80,
              color: Colors.green,
            ),
          ),
          const Center(
              child: Text("Add the Courses you have registered for",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
