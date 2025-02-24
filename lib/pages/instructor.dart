import 'package:flutter/material.dart';

class InstructorPage extends StatelessWidget {
  const InstructorPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screen2 = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Instructor",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.share),
          Padding(padding: EdgeInsets.only(right: 12))
        ],
      ),
      body: SizedBox(
        height: screen2,
        child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(15, 18, 18, 18),
            child: Column(
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/img1.jpg"),
                      maxRadius: 40,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Imran Afzel",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 250,
                          child: Text(
                            "Best selling Instructor with over 600k students worldwide",
                            style: TextStyle(
                              height: 1.3,
                              fontSize: 17,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(children: [
                  Column(
                    children: [
                      Text("Total students",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("55,432",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17))
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text("Reviews",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("73,32",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17))
                    ],
                  )
                ]),
                const SizedBox(
                  height: 28,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("About me",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                ),
                Container(
                    padding: const EdgeInsets.only(right: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                        "best selling instructor with over 500 students worldwide,best selling instructor with over 500 students worldwide,best selling instructor with over.",
                        style: TextStyle(height: 1.3, fontSize: 17))),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text("My Courses",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                ),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset("images/img1.jpg")),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("The complement JAVA Training",
                                      style: TextStyle(fontSize: 15)),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text("Imran Afzel",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14)),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      for (int i = 0; i < 5; i++)
                                        const Icon(
                                          Icons.star,
                                          size: 16,
                                          color: Color.fromARGB(
                                              255, 247, 197, 46),
                                        ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text("112\$",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14))
                                ],
                              )
                            ],
                          ),
                        );
                      })),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.link),
                  title: const Text("website"),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.facebook),
                  title: const Text("Facebook"),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.account_box_rounded),
                  title: const Text("website"),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
