import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:flutter_application_1/screen/registor.dart';

/*class PolicyScreen extends StatefulWidget {
  const PolicyScreen({super.key});

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 500,
                  child: Text(
                    "เงื่อนไขการใช้งาน",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  "กรุณาอ่านก่อนกดยอมรับ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(26, 189, 26, 26),
                      width: 335,
                      height: 525,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque odio nibh maecenas imperdiet ac purus, habitasse purus. Adipiscing facilisis imperdiet aliquet consequat dignissim. Nibh lacus, sed dui, erat vitae libero vivamus imperdiet. Amet lorem aenean vitae eu, magna ullamcorper nisl enim auctor. Elit amet dignissim vel elementum. Urna tortor odio elementum a ac magna est adipiscing. Pulvinar pellentesque sit iaculis neque, blandit ut auctor sit. Consequat platea facilisi mollis eu cras nisl.",
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 330,
                        height: 50,
                        child: OutlinedButton(
                          child:
                              Text("ไม่ยอมรับ", style: TextStyle(fontSize: 16)),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeScreen();
                            }));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 330,
                        height: 50,
                        child: ElevatedButton(
                            child: Text(
                              "ยอมรับ",
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return RegistorScreen();
                              }));
                            }),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/

class PolicyScreen extends StatefulWidget {
  const PolicyScreen({super.key});

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 121, 150, 8),
                  child: SizedBox(
                    child: Text(
                      "เงื่อนไขและการใช้งาน",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NotoSansThai"),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 212, 20),
              child: SizedBox(
                child: Text("กรุณาอ่านก่อนกดยอมรับ",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "NotoSansThai",
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 20, 21, 20),
              child: Row(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(26, 10, 26, 26),
                      width: 335,
                      height: 525,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: const Text(
                          """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque odio nibh maecenas imperdiet ac purus, habitasse purus. Adipiscing facilisis imperdiet aliquet consequat dignissim. Nibh lacus, sed dui, erat vitae libero vivamus imperdiet. Amet lorem aenean vitae eu, magna ullamcorper nisl enim auctor. Elit amet dignissim vel elementum. Urna tortor odio elementum a ac magna est adipiscing. Pulvinar pellentesque sit iaculis neque, blandit ut auctor sit. Consequat platea facilisi mollis eu cras nisl.
Tempor molestie nec, amet amet egestas eleifend mi orci aliquet. Erat tincidunt vulputate sit amet tellus amet. Risus, velit sed libero nisl nunc. Elit eget ultrices convallis tristique morbi arcu lobortis. Feugiat vulputate donec rhoncus ut. Elit viverra tortor, cursus in id ut at. Nunc et tortor dictum diam
Tempor molestie nec, amet amet egestas eleifend mi orci aliquet. Erat tincidunt vulputate sit amet tellus amet. Risus, velit sed libero nisl nunc. """,
                          style: TextStyle(
                              fontSize: 14, fontFamily: "NotoSansThai"),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 157,
                    height: 44,
                    child: OutlinedButton(
                      child: Text("ไม่ยอมรับ",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "NotoSansThai")),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 187,
                    height: 44,
                    child: ElevatedButton(
                        child: Text(
                          "ยอมรับ",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "NotoSansThai"),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegistorScreen();
                          }));
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
