import 'package:flutter/material.dart';

class WishList extends StatelessWidget {

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

   WishList({super.key});
  @override
  Widget build(BuildContext context) {
    
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(58, 199, 46, 100),
            title: const Text("WishList"),
          ),
          body:
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(140, 150, 100, 50),
                child: const Icon(
                  Icons.save_outlined,
                  size: 80,
                  color: Colors.green,
                ),
              ),
              const Center(
                  child: Text("Want to save somthing for later?",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
              const SizedBox(
                height: 15,
              ),
              const Center(
                  child: Text("Your wishlist will go here",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400)))
            ],
            ),
        );
      }
    
  }

