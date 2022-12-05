import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/profile.dart';
import 'package:flutter_application_1/screen/firstScreen.dart';
import 'package:flutter_application_1/screen/forget_password.dart';
import 'package:flutter_application_1/screen/policy.dart';
import 'package:flutter_application_1/screen/registor.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool suffixIcon = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(75, 158, 95, 61),
                    child: Image.asset("assets/images/image 2.png"),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      "ชื่อผู้ใช้",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NotoSansThai"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
                child: Container(
                  width: 660,
                  height: 45,
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: "กรอกชื่อผู้ใช้",
                      hintStyle: TextStyle(fontFamily: "NotoSansThai"),
                      filled: true, //<-- SEE HERE
                      fillColor:
                          Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                    child: Text(
                      "รหัสผ่าน",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NotoSansThai"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
                child: Container(
                  width: 730,
                  height: 45,
                  child: TextFormField(
                    obscureText: suffixIcon,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        child: Icon(Icons.remove_red_eye_outlined),
                        onTap: () {
                          setState(() {
                            //suffixIcon = !suffixIcon;
                            /*if (suffixIcon == true) {
                              suffixIcon = false;
                            } else {
                              suffixIcon = true;
                            }
                          */
                            suffixIcon = suffixIcon ? false : true;
                          });
                        },
                      ),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: "********",
                      filled: true, //<-- SEE HERE
                      fillColor:
                          Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PolicyScreen();
                      }));
                    },
                    child: Text(
                      "สมัครสมาชิก",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NotoSansThai"),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ForgetScreen();
                      }));
                    },
                    child: Text("ลืมรหัสผ่าน",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: "NotoSansThai")),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 50, 13, 50),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FirstScreen();
                        }));
                      },
                      child: Text(
                        "เข้าสู่ระบบ",
                        style:
                            TextStyle(fontSize: 16, fontFamily: "NotoSansThai"),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
