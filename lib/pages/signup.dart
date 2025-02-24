import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    
        return Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: InkWell(
                      onTap: () async {
                        // final ImagePicker imagePicker = ImagePicker();
                        // final XFile? photo = await imagePicker.pickImage(
                        //     source: ImageSource.camera);
                       
                        // print("asdswq");
                      },
                      child: const CircleAvatar(
                          backgroundColor:
                               Color.fromARGB(255, 209, 203, 203),
                          maxRadius: 45,
                          child:  Icon(
                                      (Icons.person),
                                      color: Colors.white,
                                      size: 50,
                                    ))),
                    ),
                  
                   const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 20),
                    child: Form(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a First Name';
                                  }
                                  return null;
                                },
                                
                                expands: false,
                                decoration: InputDecoration(
                                    hintText: "First Name",
                                    prefixIcon: const Icon(Icons.person),
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
                              )),
                               const SizedBox(
                               width: 10,
                              ),
                              Expanded(
                                  child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter a Last Name';
                                  }
                                  return null;
                                },
                                expands: false,
                                decoration: InputDecoration(
                                    hintText: "Last Name",
                                    prefixIcon: const Icon(Icons.person),
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
                              )),
                            ],
                          ),
                           const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a Email';
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
                                return 'Please enter a password';
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
                           const SizedBox(height: 20),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a Phone Number';
                              }
                              return null;
                            },
                            expands: false,
                            decoration: InputDecoration(
                                hintText: "Phone Number",
                                prefixIcon: const Icon(Icons.phone_enabled),
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
                                return 'Please enter a Address';
                              }
                              return null;
                            },
                            expands: false,
                            decoration: InputDecoration(
                                hintText: "Address",
                                prefixIcon:
                                    const Icon(Icons.add_home_work_sharp),
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
                          Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "Gender:",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                    
                                  Row(
                                    children: [
                                      Radio(
                                        value: "Male",
                                        groupValue: ValueKey,
                                        onChanged: (value) {
                                          // appCubit.item1 = 'Male';
                                          // authCubit.registerGenderController="Male" as TextEditingController;
                                          // appCubit.refreshFilters();
                                        },
                                        activeColor: const Color.fromRGBO(
                                            58, 199, 46, 100),
                                      ),
                                      const Text("Male"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                        value: "Female",
                                        groupValue: ValueKey,
                                        onChanged: (value) {
                                          // appCubit.item1 = 'Female';
                                          // authCubit.registerGenderController ="Female" as TextEditingController;
                                          // appCubit.refreshFilters();
                                        },
                                        activeColor: const Color.fromRGBO(
                                            58, 199, 46, 100),
                                      ),
                                      const Text("Female"),
                                    ],
                                  ),
                                ],
                              ),
                           
                         
                           const SizedBox(
                            height: 20,
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                labelText: 'Birthday(yyyy-dd-mm)'),
                          ),
                          // BlocBuilder<AppCubit, AppStates>(
                          //   builder: (context, state) {
                          //     AppCubit appCubit=AppCubit.get(context);
                          //     return Row(
                          //                             children: [
                          //                               ElevatedButton(
                          //                                 style: ElevatedButton.styleFrom(
                          //                                     backgroundColor:
                          //                                         const Color.fromRGBO(58, 199, 46, 100),
                          //                                     shape: RoundedRectangleBorder(
                          //                                         borderRadius:
                          //                                             BorderRadius.circular(10))),
                          //                                 onPressed: (){

                          //                                 },
                          //                                 child: const Text("Birth Day",
                          //                                     style: TextStyle(
                          //                                         color: Colors.white,
                          //                                         fontWeight: FontWeight.w600,
                          //                                         fontSize: 18)),
                          //                               ),
                          //                               const SizedBox(
                          //                                 width: 20,
                          //                               ),
                          //                               Text(
                          //                                 "${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
                          //                                 style: const TextStyle(fontSize: 20),
                          //                               )
                          //                             ],
                          //                           );
                          //   },
                          // ),
                          
                           const SizedBox(
                            height: 30,
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
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    
  }

