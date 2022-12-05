import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/newpassword.dart';
import 'package:flutter_application_1/screen/otpScreen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 100, 10, 50),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(100, 33, 100, 63),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      "ลืมรหัสผ่าน",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NotoSansThai"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 25, 12, 20),
                child: Text(
                  "กรุณากรอกรหัส OTP ที่ส่งไปยังหมายเลขโทรศัพท์",
                  style:
                      TextStyle(color: Colors.grey, fontFamily: "NotoSansThai"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "++66 94 031 xxx",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "NotoSansThai"),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22.5, 43, 10, 89),
                    child: Container(
                      width: 35,
                      height: 38,
                      child: TextFormField(
                          decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            fontFamily: "NotoSansThai",
                            color: Color.fromARGB(255, 173, 172, 172)),
                        hintText: "0", filled: true, //<-- SEE HERE
                        fillColor:
                            Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 43, 10, 89),
                    child: Container(
                      width: 35,
                      height: 38,
                      child: TextFormField(
                          decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            fontFamily: "NotoSansThai",
                            color: Color.fromARGB(255, 173, 172, 172)),
                        hintText: "0", filled: true, //<-- SEE HERE
                        fillColor:
                            Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 43, 10, 89),
                    child: Container(
                      width: 35,
                      height: 38,
                      child: TextFormField(
                          decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintText: "0",
                        hintStyle: TextStyle(
                            fontFamily: "NotoSansThai",
                            color: Color.fromARGB(255, 173, 172, 172)),
                        filled: true, //<-- SEE HERE
                        fillColor:
                            Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 43, 10, 89),
                    child: Container(
                      width: 35,
                      height: 38,
                      child: TextFormField(
                          decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintText: "0",
                        hintStyle: TextStyle(
                            fontFamily: "NotoSansThai",
                            color: Color.fromARGB(255, 173, 172, 172)),
                        filled: true, //<-- SEE HERE
                        fillColor:
                            Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 43, 10, 89),
                    child: Container(
                      width: 35,
                      height: 38,
                      child: TextFormField(
                          decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintText: "0",
                        hintStyle: TextStyle(
                            fontFamily: "NotoSansThai",
                            color: Color.fromARGB(255, 173, 172, 172)),
                        filled: true, //<-- SEE HERE
                        fillColor:
                            Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 43, 22.5, 89),
                    child: Container(
                      width: 35,
                      height: 38,
                      child: TextFormField(
                          decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintText: "0",
                        hintStyle: TextStyle(
                            fontFamily: "NotoSansThai",
                            color: Color.fromARGB(255, 173, 172, 172)),
                        filled: true, //<-- SEE HERE
                        fillColor:
                            Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                      )),
                    ),
                  ),
                ],
              ),
              Center(
                child: SizedBox(
                  width: 330,
                  height: 50,
                  child: ElevatedButton(
                      child: Text(
                        "ดำเนินการต่อ",
                        style:
                            TextStyle(fontSize: 16, fontFamily: "NotoSansThai"),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return NewpasswordScreen();
                        }));
                      }),
                ),
              )
            ]),
          ),
        )),
      ),
    );
  }
}
