import 'package:flutter/material.dart';
import 'package:learning_app/pages/categories.dart';
import 'package:learning_app/pages/search.dart';
import 'package:learning_app/pages/signup.dart';

class FeaturedPage extends StatelessWidget {
  FeaturedPage({super.key});
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
    'Networks',
    'Lifestyle',
    'Office Productivity',
  ];

  final List courseName1 = [
    'Mastering BGP in Depth on Cisco Routers',
    '21 Day Crash Course in Emotional Intelligence',
    'How to Develop Emotional Resilience to Manage Stress',
    'CCNP All_in 1 Vid With Chirs Bryant Develop ',
  ];
  final List courseName2 = [
    'How to Develop Emotional Resilience to Manage Stress',
    'CCNP All_in 1 Vid With Chirs Bryant Develop ',
    '21 Day Crash Course in Emotional Intelligence',
    'Mastering BGP in Depth on Cisco Routers',
  ];

  final List instructoName1 = [
    'Laith Taiba',
    'Shahd Dabaan',
    'Mayyar Sahlol',
    'Leen Asfour',
  ];
  final List instructoName2 = [
    'Maghi Suker ',
    'Gan Barshini',
    'Khader Habib',
    'Joud Dyoub',
  ];

  final List coursePrice1 = [
    '110',
    '90',
    '85',
    '100',
  ];
  final List coursePrice2 = [
    '70',
    '90',
    '75',
    '120',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              margin: const EdgeInsets.only(left: 15, top: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Container(
                          padding: const EdgeInsets.only(top: 45, left: 320),
                          child: InkWell(
                            child: const Text(
                              "SIGN UP",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return SignUpPage();
                              }));
                            },
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Image(
                      image: AssetImage("images/lg.png"),
                      width: double.infinity,
                      height: 250,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Learn World Academy",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Ready to get up to speed on your Learn World\nAcademy? Take the NEW course for you.",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: InkWell(
                            child: const Text(
                              "See all",
                              style: TextStyle(
                                color: Color.fromRGBO(58, 199, 46, 100),
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return Categories();
                              }));
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: categories
                            .map((element) => Container(
                                  margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 1),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      showSearch(
                                        query: element,
                                        context: context,
                                        delegate: SearchCourse(),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(element),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Top Courses in ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          // appCubit.getAllCourses(search:"design") as String,
                          ("Design"),
                          style: TextStyle(
                              color: Color.fromRGBO(58, 199, 46, 100),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: courseName1.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: ((context, index) {
                          return Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 300,
                                    height: 170,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image(
                                            image: images1[index].image,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed("MyCourse");
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: SizedBox(
                                        width: 280,
                                        child: Text(
                                          courseName1[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: SizedBox(
                                        width: 280,
                                        child: Text(
                                          instructoName1[index],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                          ),
                                        )),
                                  ),
                                  const Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 15, top: 5),
                                        child: Text(
                                          ("1.3"),
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 231, 213, 52),
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          coursePrice1[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.attach_money_outlined,
                                        size: 22,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "Top Courses in ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          // appCubit.getAllCourses(search:"design") as String,
                          ("Software"),
                          style: TextStyle(
                              color: Color.fromRGBO(58, 199, 46, 100),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: courseName2.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: ((context, index) {
                          return Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 300,
                                    height: 170,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image(
                                            image: images2[index].image,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed("MyCourse");
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: SizedBox(
                                        width: 280,
                                        child: Text(
                                          courseName2[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: SizedBox(
                                        width: 280,
                                        child: Text(
                                          instructoName2[index],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                          ),
                                        )),
                                  ),
                                  const Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 15, top: 5),
                                        child: Text(
                                          ("1.3"),
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 231, 213, 52),
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Text(
                                          coursePrice2[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                        ),
                                      ),
                                      const Icon(
                                        Icons.attach_money_outlined,
                                        size: 22,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  ]),
            )),
      ],
    );
  }
}
