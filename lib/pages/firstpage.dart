
import 'package:flutter/material.dart';
import 'package:learning_app/pages/home.dart';
import 'package:learning_app/pages/signin.dart';
import 'package:learning_app/pages/signup.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Center(
                child: Container(
                    padding: const EdgeInsets.only(
                      top: 150,
                    ),
                    width: 200,
                    child: Image.asset(
                      "images/l.png",
                    )),
              ),
              const SizedBox(
                height: 90,
              ),
              const Text(
                "Take Courses",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "  From cooking to coding\nand everything in between",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Color.fromRGBO(58, 199, 46, 100),
                ),
                width: double.infinity,
                height: 74,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: const Text(
                        "Browse",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return  const HomePage();
                        }));
                      },
                    ),
                    InkWell(
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: ((context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                title: const Text(
                                  "If you don't have an account please sign up first, otherwise sign in",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                icon: const Icon(
                                  Icons.notifications_rounded,
                                ),
                                iconColor:
                                    const Color.fromRGBO(58, 199, 46, 100),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return SignUpPage();
                                        }));
                                      },
                                      child: const Text(
                                        "Sign up",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                58, 199, 46, 100)),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return SignInPage();
                                        }));
                                      },
                                      child: const Text(
                                        "Sign in",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                58, 199, 46, 100)),
                                      ))
                                ],
                              );
                            }));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
