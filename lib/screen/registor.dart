import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/profile.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:flutter_application_1/screen/newpassword.dart';
import 'package:flutter_application_1/screen/registor.dart';
import 'package:flutter_application_1/screen/dropdown.dart';
import 'package:flutter_application_1/screen/firebase.dart';

class RegistorScreen extends StatefulWidget {
  RegistorScreen({super.key});

  @override
  State<RegistorScreen> createState() => _RegistorScreenState();
}

class _RegistorScreenState extends State<RegistorScreen> {
  final formKey = GlobalKey<FormState>();
  Profile? profile = Profile();
  bool suffixIcon = true;
  bool suffixIcon1 = true;
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(child: Text("${snapshot.error}")),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              body: SingleChildScrollView(
                child: Container(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 73),
                  child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: SizedBox(
                              child: Text("สมัครสมาชิก",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "NotoSansThai",
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 65, 24, 10),
                            child: Text(
                              "ชื่อ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "NotoSansThai"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                            child: TextFormField(
                                onSaved: (String? firstname) {
                                  if (firstname != null) {
                                    profile!.firstname = firstname;
                                  }
                                },
                                validator: (input) {
                                  if (input!.isEmpty) {
                                    return "กรุณากรอกชื่อ";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  hintText: "กรอกชื่อ",
                                  hintStyle:
                                      TextStyle(fontFamily: "NotoSansThai"),
                                  filled: true, //<-- SEE HERE
                                  fillColor: Color.fromARGB(
                                      131, 224, 219, 219), //<-- SEE HERE
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 10, 24, 15),
                            child: Text(
                              "นามสกุล",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "NotoSansThai"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 10, 24, 15),
                            child: TextFormField(
                                onSaved: (String? lastname) {
                                  if (lastname != null) {
                                    profile!.lastname = lastname;
                                  }
                                },
                                validator: (input) {
                                  if (input!.isEmpty) {
                                    return "กรุณากรอกนามสกุล";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  hintText: "กรอกนามสกุล",
                                  hintStyle:
                                      TextStyle(fontFamily: "NotoSansThai"),
                                  filled: true, //<-- SEE HERE
                                  fillColor: Color.fromARGB(
                                      131, 224, 219, 219), //<-- SEE HERE
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 10, 24, 15),
                            child: Text(
                              "เบอร์โทรศัพท์",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "NotoSansThai"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 10, 24, 15),
                            child: TextFormField(
                                onSaved: (String? tel) {
                                  if (tel != null) {
                                    profile!.tel = tel;
                                  }
                                },
                                validator: (input) {
                                  if (input!.isEmpty) {
                                    return "กรุณากรอกเบอร์โทรศัพท์";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  hintText: "กรอกเบอร์โทรศัพท์",
                                  hintStyle:
                                      TextStyle(fontFamily: "NotoSansThai"),
                                  filled: true, //<-- SEE HERE
                                  fillColor: Color.fromARGB(
                                      131, 224, 219, 219), //<-- SEE HERE
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 10, 24, 15),
                            child: Text(
                              "อีเมล(ถ้ามี)",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "NotoSansThai"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                            child: TextFormField(
                                onSaved: (String? password) {
                                  if (password != null) {
                                    profile!.password = password;
                                  }
                                },
                                validator: (input) {
                                  if (input!.isEmpty) {
                                    return "กรุณากรอกอีเมล์";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  hintText: "xxx@gmail.com",
                                  filled: true, //<-- SEE HERE
                                  fillColor: Color.fromARGB(
                                      131, 224, 219, 219), //<-- SEE HERE
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 10, 24, 15),
                            child: Text(
                              "รหัสผ่าน",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "NotoSansThai"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                            child: TextFormField(
                                obscureText: suffixIcon,
                                onSaved: (String? password) {
                                  if (password != null) {
                                    profile!.password = password;
                                  }
                                },
                                validator: (input) {
                                  if (input!.isEmpty) {
                                    return "กรุณากรอกรหัสผ่าน";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  hintText: "********",
                                  suffixIcon: GestureDetector(
                                    child: Icon(Icons.remove_red_eye_outlined),
                                    onTap: () {
                                      setState(() {
                                        suffixIcon = suffixIcon ? false : true;
                                      });
                                    },
                                  ),
                                  filled: true, //<-- SEE HERE
                                  fillColor: Color.fromARGB(
                                      131, 224, 219, 219), //<-- SEE HERE
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 10, 24, 15),
                            child: Text(
                              "ยืนยันรหัสผ่าน",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "NotoSansThai"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                            child: TextFormField(
                                obscureText: suffixIcon1,
                                onSaved: (String? repassword) {
                                  if (repassword != null) {
                                    profile!.repassword = repassword;
                                  }
                                },
                                validator: (input) {
                                  if (input!.isEmpty) {
                                    return "กรุณากรอกรหัสผ่านอีกครั้ง";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  hintText: "********",
                                  suffixIcon: GestureDetector(
                                    child: Icon(Icons.remove_red_eye_outlined),
                                    onTap: () {
                                      setState(() {
                                        suffixIcon1 =
                                            suffixIcon1 ? false : true;
                                      });
                                    },
                                  ),
                                  filled: true, //<-- SEE HERE
                                  fillColor: Color.fromARGB(
                                      131, 224, 219, 219), //<-- SEE HERE
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 10, 24, 19),
                            child: Text(
                              "รหัสผ่านต้องมีความยาว 8-20 ตัวอักษร",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontFamily: "NotoSansThai"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(14, 19, 11, 114),
                            child: SizedBox(
                              child: DropdownButtonExample(),
                            ),
                          ),
                          SizedBox(
                            width: 330,
                            height: 50,
                            child: ElevatedButton(
                                child: Text(
                                  "สมัครสมาชิก",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: "NotoSansThai"),
                                ),
                                onPressed: () {
                                  if (formKey.currentState != null) {
                                    bool pass =
                                        formKey.currentState!.validate();
                                    print(pass);
                                    if (pass != null && pass) {
                                      formKey.currentState?.save();
                                      print(
                                          "firstname = ${profile?.firstname}, password = ${profile?.password}");
                                      formKey.currentState?.reset();
                                      /*if (pass != null && pass) {
                                      formKey.currentState?.save();
                                      try {
                                        if(profile!.firstname != null && profile!.password != null){
                                        FirebaseAuth.instance.createUserWithEmailAndPassword(email:  profile.firstname, password: profile.password)}
                                      } catch (e) {}}*/
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return HomeScreen();
                                      }));
                                    }
                                  }
                                }),
                          )
                        ],
                      )),
                )),
              ),
            );
          }
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        });
    /*
    */
  }
}
