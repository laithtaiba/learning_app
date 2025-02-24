import 'package:flutter/material.dart';

class MyCourse extends StatelessWidget {
   const MyCourse({super.key});

  @override
  Widget build(BuildContext context) {
    
            return Scaffold(
              backgroundColor: Colors.white,
              body: Container(
                  margin: const EdgeInsets.fromLTRB(15, 43, 10, 10),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: (() {
                                Navigator.pop(context);
                              }),
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 28,
                              )),
                          
                              InkWell(
                                  onTap: () {
                                  },
                                  child: const Icon(Icons.favorite_border,))
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 370,
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("images/img1.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Fundamentals of Business Analysis",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 2, 8, 3),
                        child: const Text(
                            "Get the foundation in business analysis you need to solve your organization biggest problem",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 105, 104, 104))),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      /*Container(
                              width: 230,
                              height: 45,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)),
                                    side: BorderSide(color: Colors.green, width: 2)),
                                onPressed: () {},
                                child: const Text("Add to Wishlist",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18)),
                              ),
                            ),*/
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        alignment: Alignment.centerLeft,
                        child: const Text("Description",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.fromLTRB(5, 2, 8, 2),
                        child: const Text(
                          "Get the foundation in business analysis you need to solve dkhud kjcsxjjl idafurjb gjhtiho ujwdk joapyfa dugndll chisdtga khdujkgb gisfywo ujbdu gd7uk acniohryh",
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text("Instructor",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ))),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 7),
                          alignment: Alignment.centerLeft,
                          child: const Text("Imaran Afesd",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ))),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: const Expanded(
                            child: Text(
                                "Best selling instructor with over 600 students worldwide",
                                style: TextStyle()),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            maxRadius: 29,
                            backgroundColor: Color.fromARGB(255, 234, 230, 230),
                            child: Icon(
                              Icons.person,
                              color: Color.fromARGB(255, 86, 165, 89),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("4.5 Instructor rating"),
                              SizedBox(
                                height: 3,
                              ),
                              Text("73,22 Reviews"),
                              SizedBox(
                                height: 3,
                              ),
                              Text("44.23 Students"),
                              SizedBox(
                                height: 3,
                              ),
                              Text("40 Courses")
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: const Expanded(
                            child: Text(
                                "Best selling instructor with over 600 students worldwide jkxso islkce auifwtdqs ausyqikn dhjf kjuqjq ois9td icgc hguj",
                                style: TextStyle(height: 1.4)),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 230,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              side: const BorderSide(
                                  color: Colors.green, width: 2)),
                          onPressed: () {
                            Navigator.of(context).pushNamed("Instructor");
                          },
                          child: const Text("View Profile",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18)),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text("Student Feedback",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 22)),
                      ),
                      const SizedBox(height: 10,),
                      const Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text("Course rating")
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 200,
                                height: 20,
                                color: const Color.fromARGB(66, 207, 202, 202),
                              ),
                              Container(
                                width: 180,
                                height: 20,
                                color: const Color.fromARGB(255, 247, 197, 46),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          for (int i = 0; i < 5; i++)
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 247, 197, 46),
                              size: 18.5,
                            ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "70%",
                            style: TextStyle(
                              color: Color.fromARGB(255, 247, 197, 46),
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 200,
                                height: 20,
                                color: const Color.fromARGB(66, 207, 202, 202),
                              ),
                              Container(
                                width: 130,
                                height: 20,
                                color: const Color.fromARGB(255, 247, 197, 46),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          for (int i = 0; i < 4; i++)
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 247, 197, 46),
                              size: 18.5,
                            ),
                          const Icon(
                            Icons.star_border,
                            color: Color.fromARGB(255, 247, 197, 46),
                            size: 18.5,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "50%",
                            style: TextStyle(
                              color: Color.fromARGB(255, 247, 197, 46),
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 200,
                                height: 20,
                                color: const Color.fromARGB(66, 207, 202, 202),
                              ),
                              Container(
                                width: 70,
                                height: 20,
                                color: const Color.fromARGB(255, 247, 197, 46),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          for (int i = 0; i < 3; i++)
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 247, 197, 46),
                              size: 18.5,
                            ),
                          for (int i = 0; i < 2; i++)
                            const Icon(
                              Icons.star_border,
                              color: Color.fromARGB(255, 247, 197, 46),
                              size: 18.5,
                            ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "30%",
                            style: TextStyle(
                              color: Color.fromARGB(255, 247, 197, 46),
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 200,
                                height: 20,
                                color: const Color.fromARGB(66, 207, 202, 202),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                color: const Color.fromARGB(255, 247, 197, 46),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          for (int i = 0; i < 1; i++)
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 247, 197, 46),
                              size: 18.5,
                            ),
                          for (int i = 0; i < 4; i++)
                            const Icon(
                              Icons.star_border,
                              color: Color.fromARGB(255, 247, 197, 46),
                              size: 18.5,
                            ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "50%",
                            style: TextStyle(
                              color: Color.fromARGB(255, 247, 197, 46),
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 5),
                              alignment: Alignment.centerLeft,
                              child: const Text("Karla Kidd",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ))),
                          const Icon(Icons.delete)
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 5),
                          for (int i = 0; i < 4; i++)
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 247, 197, 46),
                              size: 18.5,
                            )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: const Expanded(
                            child: Text(
                                "this course is really good for anyone who wants to fresh up his knowledge about IT ",
                                style: TextStyle(height: 1.4)),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 5),
                              alignment: Alignment.centerLeft,
                              child: const Text("Jon Klodd",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ))),
                          const Icon(Icons.delete)
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 5),
                          for (int i = 0; i < 3; i++)
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 247, 197, 46),
                              size: 18.5,
                            ),
                          const Icon(
                            Icons.star_half,
                            color: Color.fromARGB(255, 247, 197, 46),
                            size: 18.5,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: const Expanded(
                            child: Text(
                                "this course is really good for anyone who wants to fresh up his knowledge about IT,this course is really good for anyone who wants to fresh up his knowledge about IT ",
                                style: TextStyle(height: 1.4)),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 5),
                              alignment: Alignment.centerLeft,
                              child: const Text("MArk Sdilk",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ))),
                          const Icon(Icons.delete)
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 5),
                          for (int i = 0; i < 5; i++)
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 247, 197, 46),
                              size: 18.5,
                            )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: const Expanded(
                            child: Text(
                                "this course is really good for anyone who wants to fresh up his knowledge about IT ",
                                style: TextStyle(height: 1.4)),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 5),
                              alignment: Alignment.centerLeft,
                              child: const Text("Karla Kidd",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ))),
                          const Icon(Icons.delete)
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 5),
                          for (int i = 0; i < 4; i++)
                            const Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 247, 197, 46),
                              size: 18.5,
                            )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: const Expanded(
                            child: Text(
                                "this course is really good for anyone who wants to fresh up his knowledge about IT ",
                                style: TextStyle(height: 1.4)),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                       SizedBox(
                                  width: double.infinity,
                                  height: 60,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(
                                            58, 199, 46, 100),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    onPressed: () {
                                      // if (_formKey.currentState!.validate()) {
                                      //   authCubit.registerEvent();
                                      // }
                                    },
                                    child: const Text("Register",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18)),
                                  ),
                                ),
                    ]),
                  )),
            );
          }
        
      }
    
  

