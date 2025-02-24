import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
   final _formKey = GlobalKey<FormState>();

  SignInPage({super.key});
  @override
  Widget build(BuildContext context) {
    
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 8, right: 8),
                  child: Form(
                    key: _formKey,
                      child: Column(
                    children: [
                      TextFormField(
                         validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Email';
                      }
                      return null;
                    },
                        expands: false,
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: const Icon(Icons.email),
                            prefixIconColor: Colors.grey,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.black),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.black),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Password';
                      }
                      return null;
                    },
                        obscureText: true,
                        expands: false,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: const Icon(Icons.password),
                            prefixIconColor: Colors.grey,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.black),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.black),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
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
                                                BorderRadius.circular(10))),
                                    onPressed: () {
                                      // if (_formKey.currentState!.validate()) {
                                      //   authCubit.registerEvent();
                                      // }
                                    },
                                    child: const Text("Continue",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18)),
                                  ),
                                ),
                      
                      
                    ],
                  )),
                )
              ],
            ),
          ),
        );
      }
    
  }

