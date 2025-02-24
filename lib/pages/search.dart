import 'package:flutter/material.dart';
import 'package:learning_app/pages/course.dart';

class SearchPage extends StatelessWidget {
  final int currentindex = 0;
  final List categories = [
    'Development',
    'Languages',
    'Design',
    'It & Software',
    'Business',
  ];

  final List topSearches = [
    'It & Software',
    'Languages',
    'Design',
    'Finance & Accountine',
    'Development',
  ];
  final images2 = <Image>[
    Image.asset("images/Screenshot (54).png"),
    Image.asset("images/R (1).jpg"),
     Image.asset("images/Screenshot (61).png"),
    Image.asset("images/Screenshot (60).png"),
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

   SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Container(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBar(
                  shadowColor: const MaterialStatePropertyAll(Color(0x00ffffff)),
                  side: const MaterialStatePropertyAll(
                      BorderSide(width: 1, color: Colors.grey)),
                  hintText: "  Search",
                  hintStyle: const MaterialStatePropertyAll(
                      TextStyle(color: Colors.grey)),
                  leading: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                  onTap: () {
                    showSearch(context: context, delegate: SearchCourse());
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  "Top Searches",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Wrap(
                      spacing: 10,
                      children: topSearches
                          .map((element) => InkWell(
                                onTap: () {
                                  showSearch(
                                      query: element,
                                      context: context,
                                      delegate: SearchCourse());
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 1)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(element),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Browse Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: -1,
                  children: categories
                      .map(
                        (element) => ListTile(
                          onTap: () {
                            showSearch(
                                query: element,
                                context: context,
                                delegate: SearchCourse());
                          },
                          title: Text(
                            element,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      )
                      .toList(),
                ),
              ]),
            ],
          ),
        ),
      ),
    ));
  }
}

class SearchCourse extends SearchDelegate {
  List categories = [
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
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
      icon: const Icon(Icons.clear),
      onPressed: () {
        query = '';
        // When pressed here the query will be cleared from the search bar.
      },
    ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
        // Exit from the search screen.
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List searchResults = categories
      .where((item) => item.toLowerCase().contains(query.toLowerCase()))
      .toList();
  return ListView.builder(
    itemCount: searchResults.length,
    itemBuilder: (context, index) {
      return  SizedBox(
        height: 170,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return  const MyCourse();
            }));
          },
          child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: Image.asset("images/img1.jpg",),
              title:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: SizedBox(
                                      width: 280,
                                      child: Text(
                                        "Mastering BGP in Depth on Cisco Routers",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      )),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: SizedBox(
                                      width: 280,
                                      child: Text(
                                        "Laith taiba",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      )),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 15, top: 5),
                                      child: Text(
                                        "3.5",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5, top: 5),
                                        child: Row(
                                          children: [
                                              for (int i = 0; i < 5; i++)
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 20,
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                 const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            "110",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                          
                                    ),
                                    Icon(Icons.attach_money_outlined,size: 22,)
                                  ],
                                ),
                              ],
                            ),
              shape: const Border(bottom: BorderSide(width: 1,color: Colors.grey))
          ),
        ),
      );
    },
  );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var course in categories) {
      if (course.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(course);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              showSearch(
                  context: context,
                  query: matchQuery[index],
                  delegate: SearchCourse());
            },
            child: ListTile(
              title: Text(matchQuery[index]),
            ),
          );
        }));
  }
}
