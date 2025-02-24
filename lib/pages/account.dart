import 'package:flutter/material.dart';
import 'package:learning_app/pages/about.dart';
import 'package:learning_app/pages/signin.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(58, 199, 46, 100),
              title: const Text("Account"),
            ),
            body: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SignInPage();
                    }));
                  },
                  child: const ListTile(
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text("Profile Information"),
                  )
                  
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const AboutPage();
                    }));
                  },
                  child: const ListTile(
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text("About"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return SignInPage();
                    }));
                  },
                  child: const ListTile(
                    trailing: Icon(Icons.arrow_forward_ios),
                    title: Text("Log In"),
                  ),
                ),
                InkWell(
                    onTap: () {},
                    child:  ListTile(
                            title: const Text("Log out"),
                            trailing: const Icon(Icons.logout),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                        titleTextStyle: const TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontStyle: FontStyle.italic),
                                        backgroundColor: const Color.fromARGB(
                                            255, 249, 246, 246),
                                        title: const Text(
                                          "Are you sure you want to Log out ?",
                                          style: TextStyle(fontWeight: FontWeight.w500),
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .popAndPushNamed(
                                                        "homepage");
                                              },
                                              child: const Text(
                                                "Cancel",
                                                style: TextStyle(fontSize: 17,color:  Color.fromRGBO(58, 199, 46, 100)),
                                              )),
                                          TextButton(
                                              onPressed: () async {
                                                // await AuthCubit.get(context)
                                                //     .logoutEvent();
                                                // Navigator.pop(context);
                                              },
                                              child: const Text(
                                                "Log Out",
                                                style: TextStyle(fontSize: 17,color:  Color.fromRGBO(58, 199, 46, 100),
                                              ))
                              )]);
                                  });
                            },
                          )
                        )
              ],
            ));
      }
    
  }

