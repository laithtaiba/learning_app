
import 'package:flutter/material.dart';
import 'package:learning_app/pages/search.dart';

 class Categories extends StatelessWidget {
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
    'Finance & Accounting',
    'Marketing',
    'Music',
    'Lifestyle',
    'Office Productivity',
  ];

   Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(58, 199, 46, 100),
          title: const Text("Categories"),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        showSearch(
                            context: context,
                            query: categories[index],
                            delegate: SearchCourse());
                      },
                      child: ListTile(
                        trailing: const Icon(Icons.arrow_forward_ios),
                        title: Text("${categories[index]}"),
                      ),
                    )
                  ],
                );
              })),
        ));
  }
}
