import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/newpassword.dart';
import 'package:flutter_application_1/screen/otpScreen.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  bool suffixIcon = true;
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
                  "กรอกเบอร์โทรของคุณเพื่อรับรหัสยืนยันการตั้งค่ารหัสผ่านใหม่",
                  style:
                      TextStyle(color: Colors.grey, fontFamily: "NotoSansThai"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "เบอร์โทร",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "NotoSansThai"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
                child: TextFormField(
                    decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: "กรอกเบอร์โทรที่สมัคร",
                  hintStyle: TextStyle(
                      fontFamily: "NotoSansThai",
                      color: Color.fromARGB(255, 173, 172, 172)),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(131, 224, 219, 219), //<-- SEE HERE
                )),
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
                          return OTPScreen();
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
